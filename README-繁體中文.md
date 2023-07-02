<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-fyde/total)](https://github.com/M-L-P/grub2-fyde/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-fyde)](https://github.com/M-L-P/grub2-fyde/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-fyde?style=social)](https://github.com/M-L-P/grub2-fyde/stargazers)

</div>

[简体中文](README.md)|[繁體中文](README-繁體中文.md)|[English](README-English.md)|...
--|--|--|--

<h1 align="center">grub2-fyde</h1>

這個是用來啟動 fydeOS 的，添加了改編自 [brunch](https://github.com/sebanc/brunch) 的 grub 主題。
#### 文件結構樹狀圖
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️預覽👀

<details>
<summary>🖱️點擊展開查看🖱️</summary>

<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light-1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/1k-ter.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/light-ter.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/dark-1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/dark.png">
</details>

## 🧭指南⬇️

### 復製到 ESP
- 復製文件夾 `zip: ESP/EFI/fyde` 到 `ESP: \EFI`；

## 📝FAQ❓️
### 安全啟動
- 我還沒試過，但可能支持安全啟動，如果你使用 `grub.cer`(安全啟動證書)，
- - `grub.cer`(安全啟動證書) 來自 [Ventoy](https://github.com/ventoy/Ventoy)；
### 啟動入口菜單
- 我已經改編了 `grub.cfg` 使得那三個啟動入口都變成通用的了，所以無論 `FYDEOS-DUAL-BOOT` 是哪個分區都能夠啟動。

## ⭐收藏🌟
如果你喜歡並且期待未來的更新，你可以點亮星星。💫<br/>
告訴你的朋友，你得到了個好東西。

## 🎉來源🎊
- 絕大多數改編自 [Brunch Framework](https://github.com/sebanc/brunch);
- 安全證書來自 [Ventoy](https://github.com/ventoy/Ventoy);
- Terminal box 來自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主題；
- ...
