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
> ```
> grub2-fyde
> └── [ESP]FAT32
>    └── /EFI
>        └── /fyde
>            ├── grub2-fyde.efi
>            ├── grub2-fyde.png
>            ├── grubenv
>            └── /experimental
>                ├── /grub2_theme_package_kit
>                │   ├── Design_history.gtpk
>                │   └── ${custom}.gtpk
>                ├── /APatch
>                │   ├── kernel_apatch_fydeOS_classic
>                │   ├── kernel_apatch_fydeOS_slim
>                │   ├── kernel_apatch_fydeOS_iris
>                │   └── kernel_apatch_fydeOS_apu
>                └── /KernelSU
>                    └── initrd_ksu_fydeOS/openfyde.cpio
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
