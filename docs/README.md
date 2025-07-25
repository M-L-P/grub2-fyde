[grub2-brunch](https://github.com/M-L-P/grub2-brunch)|[grub2-fyde](https://github.com/M-L-P/grub2-fyde)|[grub2-androidx86](https://github.com/M-L-P/grub2-androidx86)
-|-|-

<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
[![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/M-L-P/grub2-fyde/%E6%9E%84%E5%BB%BA.yml)](https://github.com/M-L-P/grub2-fyde/actions/workflows/%E6%9E%84%E5%BB%BA.yml)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-fyde?style=social)](https://github.com/M-L-P/grub2-fyde/stargazers)

</div>

[简体中文](README.md)|[繁體中文](README-繁體中文.md)|[English](README-English.md)|...
--|--|--|--

<h1 align="center">grub2-fyde</h1>

这个是用来启动 fydeOS 的，添加了改编自 [brunch](https://github.com/sebanc/brunch) 的 grub 主题。
#### 特色
- 使用了 [a1ive](https://github.com/a1ive) 的打过补丁的 [grub](https://github.com/a1ive/grub)，全面支持安全启动，
  - 可以启动任意未签名的内核，以便 fydeOS 在安全启动模式开启的情况下启动，再也不必为了 fydeOS 关闭安全启动了；
- 图形界面切换 A|B 槽位；
- 快捷键 f12 显示所有的启动菜单；
- 图形界面手动输入自定义的倒计时秒数，并且只匹配数字；
- 支持鼠标，支持 PS/2 触控板；
- 添加了 [Ventoy](https://github.com/ventoy/Ventoy) 的 多国键盘布局；
- 根据分辨率自动缩放屏幕，也可手动设置 1x、1.5x 和 2x 的缩放倍数；
- 暗黑模式；
- 菜单的毛玻璃特效；
- 根据日出日落时间，定时切换 亮|暗 主题；
- 图形界面切换主题版本；
- 隐藏彩蛋；
- 选择本地硬盘上的 .img 安装映像 用以 安装 fydeOS，
- - 仿真 fydeOS 【文件】，
- - 仿真 fydeOS 的终端，
- - （切换根文件系统失败，initrd 有问题暂时搁置或他人验错），部分代码改编自 [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- 支持多语言，提供测试翻译的入口；
- 提供测试 KernelSU 的入口；
- 提供测试 APatch 的入口；

#### 全局按键

按键|功能
-|-
【↑】【↓】|导航；
【Enter】|进入已选择的选项；
【ESC】|返回上一个菜单列表；（主菜单处退出）
【Delete】|显示隐藏菜单；
【F1】|终端；
【F5】|刷新，重新进入 grub2；
【F10】|截屏；
【F12】|显示所有的启动菜单；
【Insert】|获取 Root 权限的入口；

#### 鼠标映射

操作|功能
-|-
上滑|【↑】
下滑|【↓】
左键|【Enter】
右键|【ESC】

#### 文件结构树状图
<img src="https://github.moeyy.xyz/https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️预览👀

<details>
<summary>🖱️点击展开查看🖱️</summary>

### 1024x768
<img src="https://github.moeyy.xyz/https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/简体中文/简体中文.gif">

### 1920x1080
<img src="https://github.moeyy.xyz/https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/简体中文/1080p-light.png">
<img src="https://github.moeyy.xyz/https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/简体中文/1080p-dark.png">
</details>

## 🧭指南⬇️

### 复制到 ESP
- 复制文件夹 `zip: EFI/fyde` 到 `ESP: \EFI`；

## [📅规划和进展🗺️](https://github.com/M-L-P/.github/blob/main/profile/plan/README.md#grub2-fyde)

## 📝FAQ❓️

### 安全启动
- 需要通过 [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) （有补丁）启动 `grub2-fyde.efi`，因为该文件未签名；

### Root 权限
- 入口处有图形界面的说明；

## ⭐收藏🌟
如果你喜欢并且期待未来的更新，你可以点亮星星。💫<br/>
告诉你的朋友，你得到了个好东西。

## 🎉来源🎊
- [grub](https://github.com/a1ive/grub) 来自 [a1ive](https://github.com/a1ive)；
- [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- 排版改编自 [Brunch Framework](https://github.com/sebanc/brunch)；
- 许多图标改编自 Windows 10 的内置字体：Segoe UI emoji v-1.29；
- .gif 的动态截图是使用 [Screen2Gif](https://github.com/NickeManarin/ScreenToGif) 对 hyper-V 截取的；
- Github 加速器，用于显示图片，https://github.moeyy.xyz/ ；
- ……
