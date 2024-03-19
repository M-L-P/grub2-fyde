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

這個是用來啟動 fydeOS 的，添加了改編自 [brunch](https://github.com/sebanc/brunch) 的 grub 主題。 
 #### 特色 
 - 使用了 [a1ive](https://github.com/a1ive) 的打過補丁的 [grub](https://github.com/a1ive/grub)，全面支援安全啟動， 
   - 可以啟動任意未簽名的核心，以便 fydeOS 在安全啟動模式開啟的情況下啟動，再也不必為了 fydeOS 關閉安全啟動了； 
 - 暗黑模式； 
 - 根據日出日落時間，定時切換 亮|暗 主題； 
 - 支援滑鼠，支援 PS/2 觸控板； 
 - 支援多語言； 
 - 圖形介面切換 A|B 槽位； 
 - 圖形介面設定倒計時的時間； 
 - 圖形介面切換主題版本； 
 #### 全域性按鍵 
  
 按鍵|功能 
 -|- 
 【↑】【↓】|導航； 
 【Enter】|進入已選擇的選項； 
 【ESC】|返回上一個選單列表；（主選單處退出） 
 【Delete】|顯示隱藏選單； 
 【F5】|重新整理，重新進入 grub2； 
 【F10】|截圖； 
 【Insert】|KernelSU 的入口；（暫時需要自行準備修補後的核心） 
  
 #### 滑鼠對映 
  
 操作|功能 
 -|- 
 上滑|【↑】 
 下滑|【↓】 
 左鍵|【Enter】 
 右鍵|【ESC】 
  
 #### 檔案結構樹狀圖 
 <img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/grub2-fyde.png"> 
  
 ----------------------------------------------------------------------------------------------------------------------------------- 
 ## 💻️預覽👀 
  
 <details> 
 <summary>🖱️點選展開檢視🖱️</summary> 
  
 ### 1024x768 
 <img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/簡體中文/簡體中文.gif"> 
  
 ### 1920x1080 
 <img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/簡體中文/1080p-light.png"> 
 <img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-fyde/簡體中文/1080p-dark.png"> 
 </details> 
  
 ## 🧭指南⬇️ 
  
 ### 複製到 ESP 
 - 複製資料夾 `zip: EFI/fyde` 到 `ESP: \EFI`； 
  
 ## 📝FAQ❓️ 
  
 ### 安全啟動 
 - 需要透過 [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) （有補丁）啟動 `grub2-fyde.efi`，因為該檔案未簽名； 
  
 ### Kernel SU 
 - fydeOS 的 安卓容器 是 LXC，與宿主系統[共用核心](https://github.com/openFyde/project-openfyde-patches/tree/r114-dev/sys-kernel/chromeos-kernel-5_4)； 
 - 如果你需要安卓的超級使用者許可權，你應該在編譯核心的時候新增 [KernelSU](https://github.com/tiann/KernelSU) 的補丁； 
 <details> 
 <summary>🖱️點選展開檢視🖱️</summary> 
  
 #### 原始碼 
 - [fydeOS r114 的核心原始碼](https://github.com/openFyde/project-openfyde-patches/tree/r114-dev/sys-kernel/chromeos-kernel-5_4)； 
 - [KernelSU 倉庫](https://github.com/tiann/KernelSU)； 
 #### 操作 
 編譯好了以後， 
 - 重新命名為 `kernelsu-5.4` 或 `kernelsu-5.10`， 
 - 然後複製到 `ESP: \EFI\fyde`； 
 #### 這裡暫時不提供編譯好的，原因如下 
 - KernelSU 作為後起之秀，更新頻繁，我跟不上 KernelSU 更新的節奏； 
 - fydeOS for you 有好些機型，我一臺都沒有，無法進行任何測試； 
 - fydeOS for PC 的使用者確實很多，一個用 KernelSU 修補後的核心確實可以方便大波人，但我業餘時間要做別的事情； 
  
 所以，此處暫時僅提供 KernelSU 的啟動入口，暫時不提供編譯好的核心。<br/> 
 如果你具有編譯核心的能力，而且瞭解 KernelSU，並且想幫助到更多的人，你可以編譯好以後，Pull request。 
  
 </details> 
  
 ### 飛揚的小鳥 
 [floppybird](https://github.com/mikebdp2/floppybird) 來自 [mikebdp2](https://github.com/mikebdp2) 
 - - 需要開啟 CSM 模式，純 UEFI 無法執行。 
  
 ## ⭐收藏🌟 
 如果你喜歡並且期待未來的更新，你可以點亮星星。💫<br/> 
 告訴你的朋友，你得到了個好東西。 
  
 ## 🎉來源🎊 
 - [grub](https://github.com/a1ive/grub) 來自 [a1ive](https://github.com/a1ive)； 
 - 排版改編自 [Brunch Framework](https://github.com/sebanc/brunch)； 
 - Terminal box 來自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主題； 
 - 許多圖示改編自 emoji； 
 - [floppybird](https://github.com/mikebdp2/floppybird) 來自 [mikebdp2](https://github.com/mikebdp2)； 
 - .gif 的動態截圖是使用 [Screen2Gif](https://github.com/NickeManarin/ScreenToGif) 對 hyper-V 擷取的； 
 - ……
