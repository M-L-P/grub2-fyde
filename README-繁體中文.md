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
#### 特色
- 暗黑模式；
- 根據日出日落時間，定時切換 亮|暗 主題；
- 支持鼠標，支持 PS/2 觸控板；
- 支持多語言；
- 圖形界面切換 A|B 槽位；
- 圖形界面設置倒計時的時間；
- 圖形界面切換主題版本；
#### 全局按鍵

按鍵|功能
-|-
【↑】【↓】|導航；
【Enter】|進入已選擇的選項；
【ESC】|返回上一個菜單列表；（主菜單處退出）
【Delete】|顯示隱藏菜單；
【F5】|刷新，重新進入 grub2；
【Ctrl】+【Alt】+【F12】|截屏；（需要固件支持修飾鍵）
【Xxxxxx】|Xxxxxx_XX

#### 鼠標映射

操作|功能
-|-
上滑|【↑】
下滑|【↓】
左鍵|【Enter】
右鍵|【ESC】

#### 文件結構樹狀圖
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.gif">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️預覽👀

<details>
<summary>🖱️點擊展開查看🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/繁體中文/繁體中文.png">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/繁體中文/1080p-light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/繁體中文/1080p-dark.png">
</details>

## 🧭指南⬇️

### 復製到 ESP
- 復製文件夾 `zip: ESP/EFI/fyde` 到 `ESP: \EFI`；

## 📝FAQ❓️
### 安全啟動
- 使用了打過補丁的 grub2，全面支持安全啟動；
- 可以啟動任意未簽名的內核，以便 fydeOS 在安全啟動模式開啟的情況下啟動，再也不必為了 fydeOS 關閉安全啟動了；
- 需要通過 [rEFInd-theme-Yours](https://github.com/M-L-P/rEFInd-theme-Yours) （有補丁）啟動 `grub2-fyde.efi`，因為該文件未簽名；

### 啟動入口菜單
- 我已經改編了 `grub.cfg` 使得那三個啟動入口都變成通用的了，所以無論 `FYDEOS-DUAL-BOOT` 是哪個分區都能夠啟動。
### Flappy Bird
[floppybird](https://github.com/mikebdp2/floppybird) 來自 [mikebdp2](https://github.com/mikebdp2)
- - 需要開啟 CSM 模式，純 UEFI 無法運行。

## ⭐收藏🌟
如果你喜歡並且期待未來的更新，你可以點亮星星。💫<br/>
告訴你的朋友，你得到了個好東西。

## 🎉來源🎊
- [grub](https://github.com/a1ive/grub) 來自 [a1ive](https://github.com/a1ive)；
- 排版改編自 [Brunch Framework](https://github.com/sebanc/brunch)；
- Terminal box 來自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主題；
- 許多圖標改編自 emoji；
- [floppybird](https://github.com/mikebdp2/floppybird) 來自 [mikebdp2](https://github.com/mikebdp2)；
- ……
