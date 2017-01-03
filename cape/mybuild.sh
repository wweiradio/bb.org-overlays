#!/usr/bin/env bash

# /boot/dtbs/`uname -r`/
#    TI_AM335x_BeagleBone_Black
#        -> cape-universaln-00A0.dtbo
#             dtbo="${overlay}-00A0.dtbo"
target_dtb=cape-universaln-00A0.dtbo
dts=cape-universaln-00A0-ts-lcd.dts
dtb=src/arm/cape-universaln-00A0-ts-lcd.dtb

make src/arm/cape-universaln-00A0-ts-lcd.dtbo

#copy the file to the /lib/firmware
cp src/arm/cape-universaln-00A0-ts-lcd.dtbo /lib/firmware/$target_dtbo


am335x-boneblack-overlay.dtb