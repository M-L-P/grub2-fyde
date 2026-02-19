#!/bin/bash
for branch in full latest; do
	cd ./fydeOS_${branch}.gtpk;
	find ./* | cpio -o -H newc | xz -9 -e > ../fydeOS_${branch}.gtpk;
	cd ../;
done;