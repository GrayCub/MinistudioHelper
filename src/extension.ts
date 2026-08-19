/*
 * Copyright (C) 2026 阴阳灰仔 (GrayCub)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import { execFile } from "child_process";
import * as fs from "fs";
import * as path from "path";
import * as vscode from "vscode";
import Winreg from "winreg";

const NODE_TREE_VIEW_ID = "ministudiohelper.ministudionodetree";
const MINISTUDIO_PROCESS_NAME = "miniworldstudio.exe";
const DOM_DUMP_DEBOUNCE_MS = 50;
const DOM_DUMP_READ_RETRIES = 3;
const EMPTY_DOM_NODE: DomNode = { children: [] };
const SCRIPT_NODE_CLASSES = new Set(["Script", "ModuleScript", "LocalScript"]);
const NODE_ICON_CACHE = new Map<string, vscode.ThemeIcon | vscode.Uri>();
const NODE_TREE_EXPORT_CACHE = new Map<string, string>();
const ROOT_NODE_ORDER = [
  "WorkSpace",
  "Players",
  "MainStorage",
  "ServerStorage",
  "ServerScriptService",
  "StarterGui",
  "StarterPack",
  "StartPlayer",
  "VoiceChatService",
  "GameSetting",
  "MaterialService",
  "Teams",
  "LocalFirst",
  "Localization",
  "InitStorage",
  "CustomConfigService",
  "PluginsService",
] as const;

export interface MiniWorldPaths {
  installPath: string;
  mapPath: string;
  projectPath: string;
}

interface RegistryKey {
  key: string;
  values(
    callback: (error: Error | null, values?: RegistryValue[]) => void,
  ): void;
}

interface RegistryValue {
  name: string;
  value: string;
}

interface DomNode {
  id?: string | number;
  name?: string;
  className?: string;
  children?: DomNode[];
}

interface DomMap {
  root?: DomNode;
}

interface DomDump {
  activeMapId?: string | number;
  maps?: Record<string, DomMap>;
}

interface ProjectFile {
  projectName?: string;
  mapOwid?: string | number;
}

interface ScriptOpenContext {
  node: DomNode;
  scriptParentPath: string;
}

class MiniStudioTreeItem extends vscode.TreeItem {
  public constructor(
    public readonly node: DomNode,
    extensionPath: string,
    public readonly scriptParentPath: string,
  ) {
    const children = Array.isArray(node.children) ? node.children : [];
    super(
      node.name || node.className || "SandboxNode",
      children.length > 0
        ? vscode.TreeItemCollapsibleState.Collapsed
        : vscode.TreeItemCollapsibleState.None,
    );

    this.description = node.className || "SandboxNode";
    this.tooltip = this.description;
    this.iconPath = MiniStudioTreeItem.iconFor(node.className, extensionPath);
    this.contextValue = "ministudioNode";
    this.id =
      typeof node.id === "string" || typeof node.id === "number"
        ? `ministudio-node-${node.id}`
        : undefined;
    if (isScriptNode(node)) {
      this.command = {
        command: "ministudiohelper.openScript",
        title: "打开脚本",
        arguments: [{ node, scriptParentPath } as ScriptOpenContext],
      };
    }
  }

  private static iconFor(
    className: string | undefined,
    extensionPath: string,
  ): vscode.ThemeIcon | vscode.Uri {
    const cacheKey = `${extensionPath}:${className || "SandboxNode"}`;
    const cachedIcon = NODE_ICON_CACHE.get(cacheKey);
    if (cachedIcon) {
      return cachedIcon;
    }

    const imagesPath = path.join(extensionPath, "images");
    const requestedIcon = path.join(
      imagesPath,
      `${className || "SandboxNode"}.png`,
    );
    if (fs.existsSync(requestedIcon)) {
      const icon = vscode.Uri.file(requestedIcon);
      NODE_ICON_CACHE.set(cacheKey, icon);
      return icon;
    }
    const fallbackIcon = path.join(imagesPath, "SandboxNode.png");
    if (fs.existsSync(fallbackIcon)) {
      const icon = vscode.Uri.file(fallbackIcon);
      NODE_ICON_CACHE.set(cacheKey, icon);
      return icon;
    }
    const icon = new vscode.ThemeIcon("symbol-object");
    NODE_ICON_CACHE.set(cacheKey, icon);
    return icon;
  }
}

class MiniStudioNodeTreeProvider implements vscode.TreeDataProvider<MiniStudioTreeItem> {
  private readonly changeEmitter = new vscode.EventEmitter<
    MiniStudioTreeItem | undefined | void
  >();
  public readonly onDidChangeTreeData = this.changeEmitter.event;

  public constructor(
    private root: DomNode,
    private readonly extensionPath: string,
    private readonly scriptRootPath: string,
  ) {}

  public getTreeItem(element: MiniStudioTreeItem): vscode.TreeItem {
    return element;
  }

  public getChildren(
    element?: MiniStudioTreeItem,
  ): vscode.ProviderResult<MiniStudioTreeItem[]> {
    const parent = element ? element.node : this.root;
    const children = element
      ? getChildren(parent)
      : getVisibleRootNodes(parent);
    const scriptParentPath = element
      ? getChildScriptDirectory(element)
      : this.scriptRootPath;
    return children.map(
      (node) =>
        new MiniStudioTreeItem(node, this.extensionPath, scriptParentPath),
    );
  }

  public updateRoot(root: DomNode): void {
    this.root = root;
    this.changeEmitter.fire();
  }

  public dispose(): void {
    this.changeEmitter.dispose();
  }
}

interface ValidatedEnvironment {
  activeMapId: string;
  projectName: string;
  dump: DomDump;
  dumpPath: string;
  workspaceRootPath: string;
}

export async function activate(
  context: vscode.ExtensionContext,
): Promise<void> {
  // Lua completion must work when MiniStudio is not running.  Node-tree
  // synchronisation below remains optional and only enriches these base types.
  const workspaceRootPath = vscode.workspace.workspaceFolders?.[0]?.uri.fsPath;
  if (workspaceRootPath) {
    ensureWorkspaceNodeTreeDts(workspaceRootPath);
  }

  try {
    await setupLuaLs(context.extensionPath);
  } catch (e) {
    console.warn("[MinistudioHelper] Lua language-server config failed:", e);
  }

  const environment = await validateEnvironment();
  if (!environment) {
    return;
  }

  collapseExplorerFolders();

  // Register commands FIRST so they are always available even if tree setup fails.
  context.subscriptions.push(
    vscode.commands.registerCommand(
      "ministudiohelper.copyNodeName",
      (item?: MiniStudioTreeItem) => copyTreeItemValue(item, "name"),
    ),
    vscode.commands.registerCommand(
      "ministudiohelper.copyTypeName",
      (item?: MiniStudioTreeItem) => copyTreeItemValue(item, "className"),
    ),
    vscode.commands.registerCommand(
      "ministudiohelper.openScript",
      (arg?: ScriptOpenContext) => openScript(arg),
    ),
  );

  // Once the required checks pass, a tree rendering error must not stop LSP.
  try {
    const activeMap = environment.dump.maps?.[environment.activeMapId];
    const provider = new MiniStudioNodeTreeProvider(
      activeMap?.root || EMPTY_DOM_NODE,
      context.extensionPath,
      path.join(environment.workspaceRootPath, "data", "scriptFiles", "game"),
    );

    const treeView = vscode.window.createTreeView(NODE_TREE_VIEW_ID, {
      treeDataProvider: provider,
      showCollapseAll: true,
    });
    treeView.title = environment.projectName;

    try {
      exportNodeTree(
        workspaceNodeTreePath(environment.workspaceRootPath),
        activeMap?.root || EMPTY_DOM_NODE,
      );
    } catch {
      // non-critical
    }

    const dumpWatcher = new DomDumpWatcher(
      environment.dumpPath,
      provider,
      treeView,
      workspaceNodeTreePath(environment.workspaceRootPath),
    );
    dumpWatcher.start();

    context.subscriptions.push(provider, treeView, dumpWatcher);
  } catch (e) {
    void vscode.window.showErrorMessage(
      `[MinistudioHelper] 节点树初始化失败: ${e instanceof Error ? e.message : String(e)}`,
    );
  }
}

/**
 * Writes node types only when the logical node tree changed. This avoids
 * unnecessary LuaLS re-indexing for repeated dom_dump file events.
 */
function exportNodeTree(dtsPath: string, rootNode: DomNode): boolean {
  const formattedTree = { game: formatDomNode(rootNode) };
  const json = JSON.stringify(formattedTree, null, 2);
  const embeddedTreeJson = JSON.stringify(formattedTree);
  const previous = NODE_TREE_EXPORT_CACHE.get(dtsPath);
  if (previous === json) {
    return false;
  }

  const dts = generateNodeTreeDts(
    rootNode,
    embeddedTreeJson,
    Date.now().toString(),
  );
  writeNodeTreeDts(dtsPath, undefined, dts);
  NODE_TREE_EXPORT_CACHE.set(dtsPath, json);
  return true;
}

function isLuaIdentifier(name: string): boolean {
  return /^[a-zA-Z_][a-zA-Z0-9_]*$/.test(name);
}

function sanitizeClassSegment(name: string): string {
  return name.replace(/[^a-zA-Z0-9_]/g, "_");
}

/**
 * Generates a LuaLS .d.lua file that declares `game` and every node path as
 * a typed class, so `game.WorkSpace.MyModel` gets native completion and hover.
 */
function generateNodeTreeDts(
  rootNode: DomNode,
  treeJson?: string,
  treeVersion?: string,
): string {
  const classDefs: string[] = [];

  function walk(node: DomNode, path: string[]): string {
    const children = Array.isArray(node.children)
      ? node.children.filter((c) => c.name)
      : [];
    const baseType = node.className || "SandboxNode";

    if (children.length === 0) {
      return baseType;
    }

    const className = `__MS_${path.map(sanitizeClassSegment).join("_")}`;
    const fields: string[] = [];
    const childTypes: Array<{ name: string; type: string }> = [];

    for (const child of children) {
      if (!child.name || !isLuaIdentifier(child.name)) {
        continue;
      }
      const childType = walk(child, [...path, child.name]);
      fields.push(`---@field ${child.name} ${childType}`);
      childTypes.push({ name: child.name, type: childType });
    }

    // Refine child lookup calls for the live node tree while retaining the
    // SandboxNode fallback for names that are not currently known.
    for (const child of childTypes) {
      const name = JSON.stringify(child.name);
      fields.push(
        `---@field FindFirstChild fun(self: ${className}, name: ${name}): ${child.type}`,
      );
      fields.push(
        `---@field WaitForChild fun(self: ${className}, name: ${name}): ${child.type}`,
      );

      // LuaLS does not reliably resolve overloaded inherited methods on the
      // generated root node. Add concrete service signatures directly to
      // __MS_game so game:GetService("RunService") keeps its class type.
      const isServiceNode = path.length === 1;
      if (isServiceNode) {
        fields.push(
          `---@field GetService fun(self: ${className}, name: ${name}): ${child.type}`,
        );
      }
    }
    fields.push(
      `---@field FindFirstChild fun(self: ${className}, name: string): SandboxNode`,
    );
    fields.push(
      `---@field WaitForChild fun(self: ${className}, name: string): SandboxNode`,
    );
    if (path.length === 1) {
      fields.push(
        `---@field GetService fun(self: ${className}, name: string): SandboxNode`,
      );
    }

    classDefs.push(`---@class ${className} : ${baseType}`);
    classDefs.push(...fields);
    classDefs.push("");

    return className;
  }

  const rootType = walk(rootNode, ["game"]);

  return [
    "---@meta",
    treeVersion ? `-- __MS_NODE_TREE_VERSION__ ${treeVersion}` : "",
    treeJson ? `-- __MS_NODE_TREE_JSON__ ${treeJson}` : "",
    "",
    ...classDefs,
    `---@type ${rootType}`,
    "game = {}",
    "",
  ].join("\n");
}

function writeNodeTreeDts(
  dtsPath: string,
  rootNode?: DomNode,
  content?: string,
): void {
  fs.mkdirSync(path.dirname(dtsPath), { recursive: true });
  const dtsContent =
    content ||
    (rootNode
      ? generateNodeTreeDts(rootNode)
      : "---@meta\n---@type GameNode\ngame = {}\n");
  fs.writeFileSync(dtsPath, dtsContent, "utf8");
}

/** Preserves the last live tree, or creates a base declaration on first use. */
function ensureWorkspaceNodeTreeDts(workspaceRootPath: string): void {
  const dtsPath = workspaceNodeTreePath(workspaceRootPath);
  if (fs.existsSync(dtsPath)) {
    return;
  }
  const baseDts = "---@meta\n---@type GameNode\ngame = {}\n";
  writeNodeTreeDts(dtsPath, undefined, baseDts);
}

function workspaceNodeTreeDirectory(workspaceRootPath: string): string {
  return path.join(workspaceRootPath, ".ministudio");
}

function workspaceNodeTreePath(workspaceRootPath: string): string {
  return path.join(workspaceNodeTreeDirectory(workspaceRootPath), "node_tree.d.lua");
}

function isManagedSdkPath(value: string): boolean {
  const normalized = path.normalize(value).toLowerCase();
  return normalized.endsWith(path.join("luals-addon", "sdk_types").toLowerCase());
}

function managedLibraryPaths(
  current: string[],
  sdkPath: string,
  generatedLibraryPath: string | undefined,
): string[] {
  const result = current.filter((entry) => !isManagedSdkPath(entry));
  result.push(sdkPath);
  if (generatedLibraryPath && !result.includes(generatedLibraryPath)) {
    result.push(generatedLibraryPath);
  }
  return result;
}

function sameStringArray(left: string[], right: string[]): boolean {
  return left.length === right.length
    && left.every((value, index) => value === right[index]);
}

async function setupLuaLs(extensionPath: string) {
  const addonPath = path.join(extensionPath, "luals-addon");
  const sdkPath = path.join(addonPath, "sdk_types");
  const workspaceRootPath = vscode.workspace.workspaceFolders?.[0]?.uri.fsPath;
  const generatedLibraryPath = workspaceRootPath
    ? workspaceNodeTreeDirectory(workspaceRootPath)
    : undefined;
  const pluginPath = path.join(addonPath, "plugin.lua");

  // 判断当前是否有打开的工作区
  const hasWorkspace =
    vscode.workspace.workspaceFolders &&
    vscode.workspace.workspaceFolders.length > 0;
  const targetScope = hasWorkspace
    ? vscode.ConfigurationTarget.Workspace
    : vscode.ConfigurationTarget.Global;

  try {
    const luaConfig = vscode.workspace.getConfiguration("Lua");

    const currentPlugin = luaConfig.get<string>("runtime.plugin");
    if (currentPlugin !== pluginPath) {
      await luaConfig.update("runtime.plugin", pluginPath, targetScope);
    }

    const userThirdParty: string[] =
      luaConfig.get<string[]>("workspace.userThirdParty") || [];
    if (!userThirdParty.includes(addonPath)) {
      await luaConfig.update(
        "workspace.userThirdParty",
        [...userThirdParty, addonPath],
        vscode.ConfigurationTarget.Global,
      );
    }

    const library: string[] = luaConfig.get<string[]>("workspace.library") || [];
    const desiredLibrary = managedLibraryPaths(
      library,
      sdkPath,
      generatedLibraryPath,
    );
    if (!sameStringArray(desiredLibrary, library)) {
      await luaConfig.update(
        "workspace.library",
        desiredLibrary,
        targetScope,
      );
    }
  } catch (e) {
    console.warn("[MinistudioHelper] sumneko.lua config failed:", e);
  }

  try {
    const miniStudioConfig = vscode.workspace.getConfiguration("ministudiohelper");

    const currentPlugin = miniStudioConfig.get<string>("runtime.plugin");
    if (currentPlugin !== pluginPath) {
      await miniStudioConfig.update(
        "runtime.plugin",
        pluginPath,
        targetScope,
      );
    }

    const library: string[] =
      miniStudioConfig.get<string[]>("workspace.library") || [];
    const desiredLibrary = managedLibraryPaths(
      library,
      sdkPath,
      generatedLibraryPath,
    );
    if (!sameStringArray(desiredLibrary, library)) {
      await miniStudioConfig.update(
        "workspace.library",
        desiredLibrary,
        targetScope,
      );
    }
  } catch (e) {
    console.warn("[MinistudioHelper] MiniStudioHelper config failed:", e);
  }
}

async function validateEnvironment(): Promise<
  ValidatedEnvironment | undefined
> {
  let miniWorldPaths: MiniWorldPaths | null;
  let isMiniWorldRunning: boolean;
  try {
    [miniWorldPaths, isMiniWorldRunning] = await Promise.all([
      getMiniWorldPaths(),
      checkMiniWorld(),
    ]);
  } catch {
    void vscode.window.showErrorMessage(
      "检测到MiniStudio没有运行，请运行MiniStudio后使用该插件",
    );
    return undefined;
  }

  if (
    !miniWorldPaths?.installPath ||
    !miniWorldPaths.mapPath ||
    !miniWorldPaths.projectPath ||
    !isMiniWorldRunning
  ) {
    void vscode.window.showErrorMessage(
      "检测到MiniStudio没有运行，请运行MiniStudio后使用该插件",
    );
    return undefined;
  }

  const dumpPath = path.join(
    miniWorldPaths.installPath,
    "Bin",
    "dom_dump.json",
  );
  let dump: DomDump;
  try {
    dump = JSON.parse(await fs.promises.readFile(dumpPath, "utf8")) as DomDump;
  } catch {
    void vscode.window.showErrorMessage("[Ministro] 插件未安装或未运行");
    return undefined;
  }

  const project = await getWorkspaceProject();
  const workspaceRootPath = vscode.workspace.workspaceFolders?.[0]?.uri.fsPath;
  const activeMapId = toId(dump.activeMapId);
  const mapOwid = toId(project?.mapOwid);
  const projectName = project?.projectName?.trim();
  if (!project || !projectName || !workspaceRootPath || !activeMapId || !mapOwid) {
    void vscode.window.showErrorMessage("当前工作区异常");
    return undefined;
  }

  if (mapOwid !== activeMapId) {
    void vscode.window.showErrorMessage("请打开当前已激活地图的工作区");
    return undefined;
  }

  return { activeMapId, projectName, dump, dumpPath, workspaceRootPath };
}

/** Uses native filesystem events and only reloads after writes have settled. */
class DomDumpWatcher implements vscode.Disposable {
  private directoryWatcher: fs.FSWatcher | undefined;
  private debounceTimer: NodeJS.Timeout | undefined;
  private reloadInProgress = false;
  private reloadQueued = false;
  private lastSignature: string | undefined;

  public constructor(
    private readonly dumpPath: string,
    private readonly provider: MiniStudioNodeTreeProvider,
    private readonly treeView: vscode.TreeView<MiniStudioTreeItem>,
    private readonly nodeTreePath: string,
  ) {}

  public start(): void {
    // Watch the containing directory so atomic replacement of dom_dump.json
    // also produces an event on Windows.
    try {
      const directory = path.dirname(this.dumpPath);
      const fileName = path.basename(this.dumpPath).toLowerCase();
      this.directoryWatcher = fs.watch(
        directory,
        { persistent: false },
        (_event, changed) => {
          if (changed && changed.toString().toLowerCase() !== fileName) {
            return;
          }
          this.scheduleReload();
        },
      );
      this.directoryWatcher.on("error", () => {
        this.directoryWatcher?.close();
        this.directoryWatcher = undefined;
      });
    } catch {
      // Tree updates are supplementary and must not affect the language server.
    }
  }

  public dispose(): void {
    if (this.debounceTimer) {
      clearTimeout(this.debounceTimer);
      this.debounceTimer = undefined;
    }
    this.directoryWatcher?.close();
  }

  private scheduleReload(): void {
    if (this.debounceTimer) {
      clearTimeout(this.debounceTimer);
    }
    this.debounceTimer = setTimeout(() => {
      this.debounceTimer = undefined;
      void this.reload();
    }, DOM_DUMP_DEBOUNCE_MS);
  }

  private async reload(): Promise<void> {
    if (this.reloadInProgress) {
      this.reloadQueued = true;
      return;
    }

    this.reloadInProgress = true;
    try {
      const loaded = await this.readStableDump();
      if (!loaded || loaded.signature === this.lastSignature) {
        return;
      }

      this.lastSignature = loaded.signature;
      const activeMapId = toId(loaded.dump.activeMapId);
      const activeMap = activeMapId
        ? loaded.dump.maps?.[activeMapId]
        : undefined;

      const rootNode = activeMap?.root || EMPTY_DOM_NODE;
      const nodeTreeChanged = exportNodeTree(this.nodeTreePath, rootNode);

      if (nodeTreeChanged) {
        this.provider.updateRoot(rootNode);
      }
      const project = await getWorkspaceProject();
      this.treeView.title = project?.projectName?.trim() || "MinistudioNodeList";
    } catch {
      // Failed reads are transient while MiniStudio is writing the dump.
    } finally {
      this.reloadInProgress = false;
      if (this.reloadQueued) {
        this.reloadQueued = false;
        this.scheduleReload();
      }
    }
  }

  private async readStableDump(): Promise<
    { dump: DomDump; signature: string } | undefined
  > {
    for (let attempt = 0; attempt < DOM_DUMP_READ_RETRIES; attempt += 1) {
      try {
        const before = await fs.promises.stat(this.dumpPath);
        const contents = await fs.promises.readFile(this.dumpPath, "utf8");
        const after = await fs.promises.stat(this.dumpPath);
        const beforeSignature = fileSignature(before);
        const afterSignature = fileSignature(after);
        if (beforeSignature !== afterSignature) {
          await delay(50);
          continue;
        }
        return {
          dump: JSON.parse(contents) as DomDump,
          signature: afterSignature,
        };
      } catch {
        await delay(50);
      }
    }
    return undefined;
  }
}

function formatDomNode(node: DomNode): Record<string, any> {
  const result: Record<string, any> = {};
  if (node.className) {
    result["__type"] = node.className;
  }
  if (Array.isArray(node.children)) {
    for (const child of node.children) {
      if (child.name) {
        result[child.name] = formatDomNode(child);
      }
    }
  }

  return result;
}

function getChildren(node: DomNode): DomNode[] {
  return Array.isArray(node.children) ? node.children : [];
}

function getVisibleRootNodes(root: DomNode): DomNode[] {
  const nodesByName = new Map<string, DomNode>();
  for (const node of getChildren(root)) {
    if (typeof node.name === "string" && !nodesByName.has(node.name)) {
      nodesByName.set(node.name, node);
    }
  }
  return ROOT_NODE_ORDER.flatMap((name) => {
    const node = nodesByName.get(name);
    return node ? [node] : [];
  });
}

function isScriptNode(node: DomNode): boolean {
  return (
    typeof node.className === "string" &&
    SCRIPT_NODE_CLASSES.has(node.className)
  );
}

function getChildScriptDirectory(item: MiniStudioTreeItem): string {
  const segment = getNodePathSegment(item.node);
  return segment
    ? path.join(item.scriptParentPath, segment)
    : item.scriptParentPath;
}

function getNodePathSegment(node: DomNode): string | undefined {
  const name = node.name;
  if (
    !name ||
    name === "." ||
    name === ".." ||
    name.includes(path.sep) ||
    name.includes("/") ||
    name.includes("\\")
  ) {
    return undefined;
  }
  return name;
}

async function openScript(context?: ScriptOpenContext): Promise<void> {
  if (!context || !isScriptNode(context.node)) {
    return;
  }

  const scriptName = getNodePathSegment(context.node);
  if (!scriptName) {
    return;
  }
  const scriptUri = vscode.Uri.file(
    path.join(context.scriptParentPath, `${scriptName}.lua`),
  );
  try {
    const document = await vscode.workspace.openTextDocument(scriptUri);
    await vscode.window.showTextDocument(document, { preview: true });
  } catch {
    void vscode.window.showWarningMessage("未找到该节点对应的脚本文件");
  }
}

function collapseExplorerFolders(): void {
  void vscode.commands
    .executeCommand("workbench.files.action.collapseExplorerFolders")
    .then(undefined, () => undefined);
}

function copyTreeItemValue(
  item: MiniStudioTreeItem | undefined,
  key: "name" | "className",
): Thenable<void> | undefined {
  if (!item) {
    return undefined;
  }
  const value =
    key === "name"
      ? item.node.name || item.node.className || "SandboxNode"
      : item.node.className || "SandboxNode";
  return vscode.env.clipboard.writeText(value);
}

function fileSignature(stat: fs.Stats): string {
  return `${stat.size}:${stat.mtimeMs}`;
}

function delay(milliseconds: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, milliseconds));
}

async function getWorkspaceProject(): Promise<ProjectFile | undefined> {
  const folders = vscode.workspace.workspaceFolders;
  if (!folders || folders.length !== 1) {
    return undefined;
  }

  try {
    const entries = await vscode.workspace.fs.readDirectory(folders[0].uri);
    const projects = entries.filter(
      ([name, type]) =>
        type === vscode.FileType.File &&
        name.toLowerCase().endsWith(".project"),
    );
    if (projects.length !== 1) {
      return undefined;
    }

    const projectUri = vscode.Uri.joinPath(folders[0].uri, projects[0][0]);
    const contents = await vscode.workspace.fs.readFile(projectUri);
    return JSON.parse(Buffer.from(contents).toString("utf8")) as ProjectFile;
  } catch {
    return undefined;
  }
}

function toId(value: string | number | undefined): string | undefined {
  if (typeof value === "string" && value.trim() !== "") {
    return value;
  }
  if (typeof value === "number" && Number.isFinite(value)) {
    return String(value);
  }
  return undefined;
}

/** Reads the MiniWorldStudio registry entries needed by the extension. */
export async function getMiniWorldPaths(): Promise<MiniWorldPaths | null> {
  const parentKey = new Winreg({
    hive: Winreg.HKLM,
    key: "\\SOFTWARE\\MiniWorldStudio",
  });

  return new Promise((resolve) => {
    parentKey.keys((error: Error | null, subKeys?: RegistryKey[]) => {
      if (error || !subKeys || subKeys.length === 0) {
        resolve(null);
        return;
      }

      const targetKey = subKeys
        .slice()
        .sort((left, right) => right.key.localeCompare(left.key))[0];
      targetKey.values((valueError: Error | null, values?: RegistryValue[]) => {
        if (valueError || !values) {
          resolve(null);
          return;
        }

        const result: MiniWorldPaths = {
          installPath: "",
          mapPath: "",
          projectPath: "",
        };
        for (const item of values) {
          if (item.name === "InstallPath")
            result.installPath = item.value.trim();
          if (item.name === "MapPath") result.mapPath = item.value.trim();
          if (item.name === "ProjectPath")
            result.projectPath = item.value.trim();
        }
        resolve(
          result.installPath && result.mapPath && result.projectPath
            ? result
            : null,
        );
      });
    });
  });
}

/** Checks the Windows process table for an active MiniWorldStudio process. */
export async function checkMiniWorld(): Promise<boolean> {
  return new Promise((resolve) => {
    execFile(
      "tasklist",
      ["/FI", "IMAGENAME eq MiniWorldStudio.exe", "/FO", "CSV", "/NH"],
      { windowsHide: true },
      (error, stdout) => {
        if (error) {
          resolve(false);
          return;
        }
        resolve(stdout.toLowerCase().includes(MINISTUDIO_PROCESS_NAME));
      },
    );
  });
}

export function deactivate(): void {}
