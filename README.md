<div align="center">

# 🎉 MinistudioHelper

<!-- 项目一句话简述 -->
**为迷你世界新一代开发工具(MiniWorld Studio)提供更好的开发体验**

[![License](https://img.shields.io/github/license/GrayCub/MinistudioHelper?style=for-the-badge&color=blue)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/GrayCub/MinistudioHelper?style=for-the-badge&color=yellow)](https://github.com/GrayCub/MinistudioHelper/stargazers)
[![GitHub Issues](https://img.shields.io/github/issues/GrayCub/MinistudioHelper?style=for-the-badge&color=red)](https://github.com/GrayCub/MinistudioHelper/issues)
[![Build Status](https://img.shields.io/github/actions/workflow/status/GrayCub/MinistudioHelper/main.yml?style=for-the-badge&label=Build)](https://github.com/GrayCub/MinistudioHelper/actions)

[报告 Bug](https://github.com/GrayCub/MinistudioHelper/issues) · [提交 Request](https://github.com/GrayCub/MinistudioHelper/issues)

</div>

<br />

> [NOTE]
> **提示：** 本项目依赖`sumneko`的`LuaLS`，必须先安装`LuaLS`，才能使用该插件,不支持`EmmyLua`插件

> [!IMPORTANT]
> **系统限制：** 仅支持 `Windows 10（x64）`、`Windows 11` 系统，`MacOS/Linux` 不要安装该插件！！！

---

## 🌟 核心特性 (Features)

- ✅ **全面智能补全**：通用 API、枚举、自定义数据类型一键自动补全，提升编码效率。
- ✅ **节点树可视化预览**：VS Code 原生查看 Ministudio 节点结构，支持快速复制节点名称与类型。
- ✅ **精准类型推断**：原生识别 Ministudio 自定义数据类型，提供严格的类型匹配校验。
- ✅ **节点式编码支持**：使用节点语法访问实例对象，支持 require 加载节点模块脚本。

---

## 🚀 快速开始 (Getting Started)

本插件提供强大的 Lua 智能补全与 类型推导 支持。以下是核心功能特性与开发推荐规范：

使用该插件需要将当前工作区设置为`Ministudio`项目文件夹，也就是`MiniWorldStudioProjects`下的文件夹，工作区目录必须有`.project`文件才能正常使用，且<strong><code>Ministudio</code>必须处于活动状态</strong>。

---

### 1. 节点属性与方法补全 (Properties & Methods)

访问任何对象节点时，系统会自动推导类型并提供强类型补全提示：

```lua
-- 支持节点链查找实例
-- 输入game:和game:GetService("")都会有语法提示
-- 长链持久提示：game:GetService("Players").LocalPlayer也会有语法提示
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 属性补全
player.Health = 100
player.MoveSpeed = 16

-- 方法补全
player:Move(Vector3.New(100,1,100))
```
### 2. 节点式require加载模块脚本 (ModuleScript)

require(ModuleScript)，系统会自动查找对应的节点实例以及模块脚本所对应的实际文件夹路径：

```lua
-- 鼠标悬停在require内会提示真实路径
-- 输入UIModules.会触发语法提示
local HUDController = require(UIModules:WaitForChild("HUDController"))

HUDController:Show()
```

---

## 🛠️ 依赖组件 (Dependencies)

| 分类 | 链接 |
| :--- | :--- |
| **LuaLS** | [![github-repo][badge-github]][link-github] |
| **Ministudio** | <a href="https://studio.mini1.cn/"><img src="https://github.com/user-attachments/assets/216c3d89-dc4c-4bcc-b808-c447b87f56da" height="20" style="vertical-align: middle; margin-right: -4px;" /><img src="https://img.shields.io/badge/mini1-studio-007ec6" height="20" style="vertical-align: middle;" /></a> |

---
## 💡 下载与安装 (Install)

您可以选择通过 **VS Code 插件市场** 快速安装，或直接从 **GitHub Releases** 下载最新构建包。

> **⚠️ 注意**：`MiniStudio` 客户端插件目前仅支持通过 **GitHub Release** 手动下载安装。

---

### 📦 途径一：VS Code 插件市场 (推荐)

最便捷的安装方式，支持一键安装与自动更新：

1. 打开 **VS Code**，按快捷键 `Ctrl + Shift + X` 打开扩展市场。
2. 在搜索框中输入 `MinistudioHelper`。
3. 点击 **Install (安装)** 按钮即可完成配置。

---

### 📦 途径二：GitHub Releases 下载

适用于离线环境、需要特定版本或安装 **MiniStudio 客户端插件**：

| 组件名称 | 适合编辑器 / 客户端 | 下载入口 | 说明 |
| :--- | :--- | :---: | :--- |
| **MinistudioHelper** | VS Code | [![Release][badge-release]][github-release] | 核心VS code端 |
| **Ministro** | MiniStudio Client | [![Release](https://img.shields.io/badge/release-MiniStudio-blue?style=flat-square&logo=github)][ministudio-release] | **仅限 GitHub 下载** |

#### 手动安装步骤 (VSIX)

1. 前往对应的 [Releases 页面][github-release] 下载 `.vsix` 扩展安装包。
2. 打开 VS Code，进入 **扩展 (Extensions)** 视图。
3. 点击右上角 **`...`** 菜单，选择 **从 VSIX 安装... (Install from VSIX...)**。
4. 选择下载好的包文件并确认安装，随后重启编辑器即可。

#### Ministudio 客户端插件安装步骤

1. 前往`Ministudio`在**菜单栏->插件(Plugins)->资源(Assets)->导出场景节点(ExportSceneNodes)**，导出节点`json`格式到任意文件夹。
2. 前往 [Releases 页面][github-release] 下载`.zip`客户端插件。
3. 将插件压缩包解压到**场景节点目录/ServiceNodes/PluginsService**下，如果没有就新建`PluginsService`文件夹。
4. 前往`Ministudio`在**菜单栏->插件(Plugins)->资源(Assets)->导入场景节点(ImportSceneNodes)**，按照提示重启`studio`即可完成插件安装。
> **⚠️ 注意**：`Ministudio`插件仅支持单个项目独立安装，切换项目需要重新安装。


[badge-release]: https://img.shields.io/badge/release-v1.0.0-2bbc8a?style=flat-square&logo=github
[github-release]: https://github.com/GrayCub/MinistudioHelper/releases/latest
[ministudio-release]: https://github.com/GrayCub/MinistudioHelper/releases
[badge-github]: https://img.shields.io/badge/github-lua--language--server-blue?logo=github
[link-github]: https://github.com/LuaLS/lua-language-server
