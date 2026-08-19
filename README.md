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
<br />
> [System]
> 仅支持`Windows 10（x64）、Windows 11`系统，`MacOS\Linux`不要安装该插件！！！

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
| **Ministudio** | [![mini1-studio][badge-mini1]][link-mini1] |

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
[link-mini1]: https://studio.mini1.cn/
[badge-mini1]: https://img.shields.io/badge/mini1-studio-blue?logo=data:image/png;base64,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
