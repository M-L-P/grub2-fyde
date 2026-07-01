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

这个是用来启动 fydeOS/openfyde 的，添加了改编自 [brunch](https://github.com/sebanc/brunch) 的 grub 主题。
#### 📖特色
- 使用了 [a1ive](https://github.com/a1ive) 的打过补丁的 [grub](https://github.com/a1ive/grub)，全面支持安全启动，
  - 可以启动任意未签名的内核，以便 fydeOS/openfyde 在安全启动模式开启的情况下启动，再也不必为了 fydeOS/openfyde 关闭安全启动了；
- ~~图形界面切换 A|B 槽位；~~
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
- 选择本地硬盘上的 .img 安装映像 用以 安装 fydeOS/openfyde，
- - 仿真 fydeOS/openfyde 【文件】，
- - 仿真 fydeOS/openfyde 的终端，
- - （切换根文件系统失败，initrd 有问题暂时搁置或他人验错），部分代码改编自 [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- 支持多语言，提供测试翻译的入口；
- 提供测试 KernelSU 的入口；
- 提供测试 APatch 的入口；

#### ⌨️全局按键

按键|功能
-|-
<kbd>↑</kbd><kbd>↓</kbd>|导航；
<kbd>Enter</kbd>|进入已选择的选项；
<kbd>ESC</kbd>|返回上一个菜单列表；（主菜单处退出）
<kbd>Delete</kbd>|显示隐藏菜单；
<kbd>F1</kbd>|终端；
<kbd>F5</kbd>|刷新，重新进入 grub2；
<kbd>F10</kbd>|截屏；
<kbd>F12</kbd>|显示所有的启动菜单；
<kbd>Insert</kbd>|获取 Root 权限的入口；

#### 🖱️鼠标映射

操作|功能
-|-
上滑|<kbd>↑</kbd>
下滑|<kbd>↓</kbd>
左键|<kbd>Enter</kbd>
右键|<kbd>ESC</kbd>

> [!CAUTION]
> #### 🗂文件结构树状图🌳
>
> ```mermaid
>graph LR
>    Root["[ESP] FAT32"]
>    EFI系统目录["/EFI"]
>    cmdpath["/fyde"]
>    
>    %% 主要文件
>    EFI引导镜像["grub2-fyde.efi"]
>    图标["grub2-fyde.png"]
>    环境块["grubenv"]
>    
>    %% 实验性目录
>    实验性目录["/experimental"]
>    
>    %% GRUB Theme Package Kit
>    主题包目录["/grub2_theme_package_kit"]
>    原创设计史主题包["Design_history.gtpk"]
>    自定义的主题包["${custom}.gtpk"]
>    
>    %% APatch
>    AP目录["/APatch"]
>    经典版内核["kernel_apatch_fydeOS_classic"]
>    能效版内核["kernel_apatch_fydeOS_slim"]
>    现代版内核["kernel_apatch_fydeOS_iris"]
>    AMD内核["kernel_apatch_fydeOS_apu"]
>    
>    %% KernelSU
>    KSU目录["/KernelSU"]
>    KSU_initrd["initrd_ksu_fydeOS.cpio"]
>
>    %% 连接关系
>    Root --> EFI系统目录
>    EFI系统目录 --> cmdpath
>    
>    cmdpath --> EFI引导镜像
>    cmdpath --> 图标
>    cmdpath --> 环境块
>    cmdpath --> 实验性目录
>    
>    实验性目录 --> 主题包目录
>    实验性目录 --> AP目录
>    实验性目录 --> KSU目录
>    
>    主题包目录 --> 原创设计史主题包
>    主题包目录 --> 自定义的主题包
>    
>    AP目录 --> 经典版内核
>    AP目录 --> 能效版内核
>    AP目录 --> 现代版内核
>    AP目录 --> AMD内核
>    
>    KSU目录 --> KSU_initrd
>    
>    %% 按指定规则配色
>    classDef 目录类 fill:#f5f5f5,stroke:#616161,stroke-width:2px;
>    classDef efi文件 fill:#ffcdd2,stroke:#d32f2f,stroke-width:2px;
>    classDef 内核文件类 fill:#ffe0b2,stroke:#f57c00,stroke-width:2px;
>    classDef cpio文件 fill:#fff9c4,stroke:#fbc02d,stroke-width:2px;
>    classDef 环境块类 fill:#c8e6c9,stroke:#388e3c,stroke-width:2px;
>    classDef png文件 fill:#bbdefb,stroke:#1976d2,stroke-width:2px;
>    classDef gtpk文件 fill:#e1bee7,stroke:#7b1fa2,stroke-width:2px;
>    
>    %% 节点绑定
>    class Root,EFI系统目录,cmdpath,实验性目录,主题包目录,AP目录,KSU目录 目录类;
>    class EFI引导镜像 efi文件;
>    class 经典版内核,能效版内核,现代版内核,AMD内核 内核文件类;
>    class KSU_initrd cpio文件;
>    class 环境块 环境块类;
>    class 图标 png文件;
>    class 原创设计史主题包,自定义的主题包 gtpk文件;
>
>
> ```

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️预览👀

<details>
<summary>🖱️点击展开查看🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/动画.gif">

### 1920x1080
<img src="https://fastgit.cc/https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/1080P-0.png">
<img src="https://fastgit.cc/https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/1080P-1.png">
</details>

## 🧭指南⬇️

### 📋复制到 ESP
- 复制文件夹 `zip: EFI/fyde` 到 `ESP: \EFI`；

## [📅规划和进展🗺️](https://github.com/M-L-P/.github/blob/main/profile/plan/README.md#grub2-fyde)

## 📝FAQ❓️

> [!IMPORTANT]
> ### 🛡️安全启动🔛
> - 需要通过 [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) （有补丁）启动 `grub2-fyde.efi`，因为该文件未签名；

> [!TIP]
> ### 👨‍💻Root 权限#️
> - 入口处有图形界面的说明；

## ⭐收藏🌟
如果你喜欢并且期待未来的更新，你可以点亮星星。💫<br/>
告诉你的朋友，你得到了个好东西。

## 🎉来源🎊
- [grub](https://github.com/a1ive/grub) 来自 [a1ive](https://github.com/a1ive)；
- [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- 排版改编自 [Brunch Framework](https://github.com/sebanc/brunch)；
- 许多图标改编自 Windows 10 的内置字体：Segoe UI emoji v-1.29；
- .gif 的动态截图是使用 [Screen2Gif](https://github.com/NickeManarin/ScreenToGif) 对 hyper-V 截取的；
- Github 加速器，用于显示图片，https://fastgit.cc/ ；
- ……
