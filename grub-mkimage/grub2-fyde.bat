:<<'BATCH'
@echo off
cd /d "%~dp0"
for %%i in (boot command device fun graphical grubfm shell storage terminal time var) do (
	set /p %%i= < ..\mod_list\%%i.txt
)
..\grub-mkimage.exe ^
-m grub2-fyde.xz ^
-d ..\x86_64-efi ^
-c grub2-fyde.cfg ^
-p "(memdisk)/grub" ^
-o grub2-fyde.efi ^
-O x86_64-efi ^
%boot% ^
%command% ^
%device% ^
%fun% ^
%graphical% ^
%grubfm% ^
%shell% ^
%storage% ^
%terminal% ^
%time% ^
%var% ^
configfile
goto :EOF
BATCH
#!/usr/bin/env sh
../grub-mkimage \
-m grub2-fyde.xz \
-d "../x86_64-efi" \
-c grub2-fyde.cfg \
-p "(memdisk)/grub" \
-o grub2-fyde.efi \
-O x86_64-efi \
$(cat ../mod_list/boot.txt) \
$(cat ../mod_list/command.txt) \
$(cat ../mod_list/device.txt) \
$(cat ../mod_list/fun.txt) \
$(cat ../mod_list/graphical.txt) \
$(cat ../mod_list/grubfm.txt) \
$(cat ../mod_list/shell.txt) \
$(cat ../mod_list/storage.txt) \
$(cat ../mod_list/terminal.txt) \
$(cat ../mod_list/time.txt) \
$(cat ../mod_list/var.txt) \
configfile 
