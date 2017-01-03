target=cape-universaln-00A0-ts-lcd.dtbo
work_dir=./overlay
echo "build ${target}"
cd $work_dir
rm ./src/arm/$target
make src/arm/$target
echo "copy ${target} to cape-universaln-00A0.dtbo"
cp src/arm/$target  /lib/firmware/cape-universaln-00A0.dtbo

echo "done with the overlay" 

cd - 

target=am335x-boneblack-ts-lcd.dtb
echo "start to build ${target}"

dtb_path=./cape
dtbs_path=/boot/dtbs/`uname -r`
cd $dtb_path
rm ./src/arm/$target
make src/arm/$target
echo cp ./src/arm/$target  $dtbs_path/am335x-boneblack.dtb
cp ./src/arm/$target  $dtbs_path/am335x-boneblack.dtb
sync 
