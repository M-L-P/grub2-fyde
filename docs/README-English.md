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

It is used to boot fydeOS, with grub theme added, adapted from which of [brunch](https://github.com/sebanc/brunch).
#### Feature
- Using patched [grub](https://github.com/a1ive/grub) of [a1ive](https://github.com/a1ive), it totally supports secure boot，
  - It can load any unsigned kernel, so that fydeOS can be booted with Secure Boot enabled, not disabled anymore;
- Switching A|B slots on the graphical interface;
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
- To select the. img installation image on the local hard drive to install fydeOS,
- - Simulated [file] of fydeOS,
- - Simulated terminal of fydeOS,
- - (Failed to switch root filesystem, temporarily shelved or debugged by others, due to issues of initrd), some code adapted from [grub2-filemanager](https://github.com/a1ive/grub2-filemanager) of [a1ive](https://github.com/a1ive)；
- Multiple languages, with an entry for testing translation;
- With an entry for testing KernelSU;
- With an entry for testing APatch;

#### Global keys

Key|Function
-|-
[↑] [↓] | Navigation;
[Enter] | Enter the selected entry;
[ESC] | Returns to the previous menu list; (Exit from the main menu)
[Delete] | Show hidden menu;
[F1]| Terminal;
[F5] | Refresh and re-enter grub2;
[F10] | Screenshot;
[F12]| show all boot items;
[Insert] | The entry of getting root permission;

#### Mouse mapping

Operation | Function
-|-
Slide up | [↑]
Down | [↓]
Left click | [Enter]
Right click | [ESC]

#### File Tree

```
grub2-fyde
└── [ESP]FAT32
    └── /EFI
        └── /fyde
            ├── grub2-fyde.efi
            ├── grub2-fyde.png
            ├── grubenv
            └── /experimental
                ├── /grub2_theme_package_kit
                │   ├── fydeOS_full.gtpk
                │   ├── fydeOS_latest.gtpk
                │   └── ${custom}.gtpk
                ├── /APatch
                │   └── ${Kernel_patched_by_APatch}
                └── /KernelSU
                    └── ${Kernel_patched_by_KernelSU}
```

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/English/English.gif">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/English/1080p-light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/English/1080p-dark.png">
</details>

## 🧭Guide⬇️

### Copy in ESP
- Copy the folder `zip: EFI/fyde` into `ESP: \EFI`;

## [📅Planning & progress🗺️](https://github.com/M-L-P/.github/blob/main/profile/plan/README.md#grub2-fyde)

## 📝FAQ❓️

### Secure Boot
- You should use [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) (with patch) to load `grub2-fyde.efi` (unsigned).

### Root permission
- There is a graphical interface description around its entry;

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
