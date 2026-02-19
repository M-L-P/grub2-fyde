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

這個是用來啟動 fydeOS 的，新增了改編自 [brunch](https://github.com/sebanc/brunch) 的 grub 主題。
#### 特色
- 使用了 [a1ive](https://github.com/a1ive) 的打過補丁的 [grub](https://github.com/a1ive/grub)，全面支援安全啟動，
  - 可以啟動任意未簽名的核心，以便 fydeOS 在安全啟動模式開啟的情況下啟動，再也不必為了 fydeOS 關閉安全啟動了；
- 圖形介面切換 A|B 槽位；
- 快捷鍵 f12 顯示所有的啟動選單；
- 圖形介面手動輸入自定義的倒計時秒數，並且只匹配數字；
- 支援滑鼠，支援 PS/2 觸控板；
- 新增了 [Ventoy](https://github.com/ventoy/Ventoy) 的 多國鍵盤佈局；
- 根據解析度自動縮放螢幕，也可手動設定 1x、1.5x 和 2x 的縮放倍數；
- 暗黑模式；
- 選單的毛玻璃特效；
- 根據日出日落時間，定時切換 亮|暗 主題；
- 圖形介面切換主題版本；
- 隱藏彩蛋；
- 選擇本地硬碟上的 .img 安裝映像 用以 安裝 fydeOS，
- - 模擬 fydeOS 【檔案】，
- - 模擬 fydeOS 的終端，
- - （切換根檔案系統失敗，initrd 有問題暫時擱置或他人驗錯），部分程式碼改編自 [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- 支援多語言；提供測試翻譯的入口；
- 提供測試 KernelSU 的入口；
- 提供測試 APatch 的入口；

#### 全域性按鍵

按鍵|功能
-|-
【↑】【↓】|導航；
【Enter】|進入已選擇的選項；
【ESC】|返回上一個選單列表；（主選單處退出）
【Delete】|顯示隱藏選單；
【F1】|終端；
【F5】|重新整理，重新進入 grub2；
【F10】|截圖；
【F12】|顯示所有的啟動選單；
【Insert】|獲取 Root 許可權的入口；

#### 滑鼠對映

操作|功能
-|-
上滑|【↑】
下滑|【↓】
左鍵|【Enter】
右鍵|【ESC】

#### 檔案結構樹狀圖

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
## 💻️預覽👀

<details>
<summary>🖱️點選展開檢視🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/繁體中文/繁體中文.gif">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/繁體中文/1080p-light.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/繁體中文/1080p-dark.png">
</details>

## 🧭指南⬇️

### 複製到 ESP
- 複製資料夾 `zip: EFI/fyde` 到 `ESP: \EFI`；

## [📅規劃和進展🗺️](https://github.com/M-L-P/.github/blob/main/profile/plan/README.md#grub2-fyde)

## 📝FAQ❓️

### 安全啟動
- 需要透過 [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) （有補丁）啟動 `grub2-fyde.efi`，因為該檔案未簽名；

### Root 許可權
- 入口處有圖形介面的說明；

## ⭐收藏🌟
如果你喜歡並且期待未來的更新，你可以點亮星星。💫<br/>
告訴你的朋友，你得到了個好東西。

## 🎉來源🎊
- [grub](https://github.com/a1ive/grub) 來自 [a1ive](https://github.com/a1ive)；
- [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- 排版改編自 [Brunch Framework](https://github.com/sebanc/brunch)；
- 許多圖示改編自 Windows 10 的內建字型：Segoe UI emoji v-1.29；
- .gif 的動態截圖是使用 [Screen2Gif](https://github.com/NickeManarin/ScreenToGif) 對 hyper-V 擷取的；
- ……
