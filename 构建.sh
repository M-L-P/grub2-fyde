#!/bin/bash

### 合成语言包
git clone https://github.com/M-L-P/locale.git;
cd locale; ls -l;
for po in */grub.po; do
	fyde_po=../translation/${po%/*}/fyde.po;
	locale_mo=../memdisk/grub/locale/${po%/*}.mo;
	experimental_mo=../cmdpath/experimental/secondary_locale/${po%/*}.mo;
	if [ -s "${fyde_po}" ]; then
		msgcat --use-first -o ../translation/${po%/*}/${po%/*}.po ${po} ${fyde_po};
		msgfmt ../translation/${po%/*}/${po%/*}.po -o ${locale_mo};
	else
		msgfmt ${po} -o ${experimental_mo};
	fi;
done;
cd ..; ls -l;
### 合成 memdisk.xz
cd memdisk; ls -l;
rm ./grub/主题/*.pptx; rm ./grub/主题/fyde/图标/*.pptx; rm ./grub/主题/fyde/壁纸/*.pptx;
find ./grub | cpio -o -H newc | xz -9 -e > ../grub-mkimage/grub2-fyde.xz;
cd ..; ls -l;
### 合成 grub2-fyde.efi
git clone https://github.com/M-L-P/grub2.git;
chmod -R 777 grub2;
mv ./grub-mkimage ./grub2/grub2-fyde;
cd grub2/grub2-fyde; ls -l;
sudo bash ./grub2-fyde.sh;
cd ../..; ls -l;
### 合成 initrd
cd initrd_root; ls -l;
rm ./*/.folder; rm ./mnt/*/.folder;
find * | cpio -o -H newc | gzip -9 > ../virtual_usb.cpio;
cd ..; ls -l;
### 归档文件
cp ./grub2/grub2-fyde/grub2-fyde.xz ./;
cp ./virtual_usb.cpio ./cmdpath/experimental;
mkdir -p ESP/EFI/fyde;
cp ./grub2/grub2-fyde/grub2-fyde.efi ./ESP/EFI/fyde;
cp -R ./cmdpath/* ./ESP/EFI/fyde;
zip -r grub2-fyde.zip ./ESP;
cd ./ESP/EFI/fyde; ls -l;