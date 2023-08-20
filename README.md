<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-fyde?style=social)](https://github.com/M-L-P/grub2-fyde/stargazers)

</div>

[简体中文](README.md)|[繁體中文](README-繁體中文.md)|[English](README-English.md)|...
--|--|--|--

<h1 align="center">grub2-fyde</h1>

这个是用来启动 fydeOS 的，添加了改编自 [brunch](https://github.com/sebanc/brunch) 的 grub 主题。
#### 特色
- 暗黑模式；
- 根据日出日落时间，定时切换 亮|暗 主题；
- 支持鼠标，支持 PS/2 触控板；
- 支持多语言；
- 图形界面切换 A|B 槽位；
- 图形界面设置倒计时的时间；
- 图形界面切换主题版本；
#### 全局按键

按键|功能
-|-
【↑】【↓】|导航；
【Enter】|进入已选择的选项；
【ESC】|返回上一个菜单列表；（主菜单处退出）
【Delete】|显示隐藏菜单；
【F5】|刷新，重新进入 grub2；
【Ctrl】+【Alt】+【F12】|截屏；（需要固件支持修饰键）
【Xxxxxx】|Xxxxxx_XX

#### 鼠标映射

操作|功能
-|-
上滑|【↑】
下滑|【↓】
左键|【Enter】
右键|【ESC】

#### 文件结构树状图
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️预览👀

<details>
<summary>🖱️点击展开查看🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/简体中文/简体中文.gif">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/简体中文/1080p-light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/简体中文/1080p-dark.png">
</details>

## 🧭指南⬇️

### 复制到 ESP
- 复制文件夹 `zip: ESP/EFI/fyde` 到 `ESP: \EFI`；

## 📝FAQ❓️
### 安全启动
- 使用了打过补丁的 grub2，全面支持安全启动；
- 可以启动任意未签名的内核，以便 fydeOS 在安全启动模式开启的情况下启动，再也不必为了 fydeOS 关闭安全启动了；
- 需要通过 [rEFInd-theme-Yours](https://github.com/M-L-P/rEFInd-theme-Yours) （有补丁）启动 `grub2-fyde.efi`，因为该文件未签名；

### 启动入口菜单
- 我已经改编了 `grub.cfg` 使得那三个启动入口都变成通用的了，所以无论 `FYDEOS-DUAL-BOOT` 是哪个分区都能够启动。
### Flappy Bird
[floppybird](https://github.com/mikebdp2/floppybird) 来自 [mikebdp2](https://github.com/mikebdp2)
- - 需要开启 CSM 模式，纯 UEFI 无法运行。

## ⭐收藏🌟
如果你喜欢并且期待未来的更新，你可以点亮星星。💫<br/>
告诉你的朋友，你得到了个好东西。

## 🎉来源🎊
- [grub](https://github.com/a1ive/grub) 来自 [a1ive](https://github.com/a1ive)；
- 排版改编自 [Brunch Framework](https://github.com/sebanc/brunch)；
- Terminal box 来自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主题；
- 许多图标改编自 emoji；
- [floppybird](https://github.com/mikebdp2/floppybird) 来自 [mikebdp2](https://github.com/mikebdp2)；
- ……
