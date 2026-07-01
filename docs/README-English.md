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

It is used to boot fydeOS/openfyde, with grub theme added, adapted from which of [brunch](https://github.com/sebanc/brunch).
#### 📖Feature
- Using patched [grub](https://github.com/a1ive/grub) of [a1ive](https://github.com/a1ive), it totally supports secure boot，
  - It can load any unsigned kernel, so that fydeOS/openfyde can be booted with Secure Boot enabled, not disabled anymore;
- ~~Switching A|B slots on the graphical interface;~~
- Shortcut key f12 to show all boot items;
- Manually inputting custom countdown seconds on the graphical interface, and only match numbers;
- Mouse and PS/2 trackpad;
- Having added multi country keyboard layouts from [Ventoy](https://github.com/ventoy/Ventoy);
- Automatically scaling the screen according to the resolution, or manually setting the scaling factor to 1x, 1.5x, and 2x;
- Dark mode;
- The frosted glass effect on the menu;
- Regularly, light theme at dawn, and dark theme at dusk;
- To switch theme versions through graphical interface;
- Hidden Easter eggs;
- To select the. img installation image on the local hard drive to install fydeOS/openfyde,
- - Simulated [file] of fydeOS/openfyde,
- - Simulated terminal of fydeOS/openfyde,
- - (Failed to switch root filesystem, temporarily shelved or debugged by others, due to issues of initrd), some code adapted from [grub2-filemanager](https://github.com/a1ive/grub2-filemanager) of [a1ive](https://github.com/a1ive)；
- Multiple languages, with an entry for testing translation;
- With an entry for testing KernelSU;
- With an entry for testing APatch;

#### ⌨️Global keys

Key|Function
-|-
<kbd>↑</kbd> <kbd>↓</kbd> | Navigation;
<kbd>Enter</kbd> | Enter the selected entry;
<kbd>ESC</kbd> | Returns to the previous menu list; (Exit from the main menu)
<kbd>Delete</kbd> | Show hidden menu;
<kbd>F1</kbd>| Terminal;
<kbd>F5</kbd> | Refresh and re-enter grub2;
<kbd>F10</kbd> | Screenshot;
<kbd>F12</kbd>| show all boot items;
<kbd>Insert</kbd> | The entry of getting root permission;

#### 🖱️Mouse mapping

Operation | Function
-|-
Slide up | <kbd>↑</kbd>
Slide down | <kbd>↓</kbd>
Left click | <kbd>Enter</kbd>
Right click | <kbd>ESC</kbd>

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
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/动画.gif">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/1080P-0.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/1080P-1.png">
</details>

## 🧭Guide⬇️

### 📋️Copy in ESP
- Copy the folder `zip: EFI/fyde` into `ESP: \EFI`;

## [📅Planning & progress🗺️](https://github.com/M-L-P/.github/blob/main/profile/plan/README.md#grub2-fyde)

## 📝FAQ❓️

> [!IMPORTANT]
> ### 🛡️Secure Boot🔛
> - You should use [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) (with patch) to load `grub2-fyde.efi` (unsigned).

> [!TIP]
> ### 👨‍💻Root permission#️
> - There is a graphical interface description around its entry;

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫<br/>
Tell your friends that you have got a good stuff.

## 🎉Credit🎊
- [grub](https://github.com/a1ive/grub) from [a1ive](https://github.com/a1ive);
- [grub2-filemanager](https://github.com/a1ive/grub2-filemanager) of [a1ive](https://github.com/a1ive)；
- Type setting is adapted from [Brunch Framework](https://github.com/sebanc/brunch);
- Many icons are adapted from the emoji font from Windows 10, Segoe UI emoji v-1.29;
- The .gif cartoon is taken by using Hyper-V and [Screen2Gif](https://github.com/NickeManarin/ScreenToGif);
- ...
