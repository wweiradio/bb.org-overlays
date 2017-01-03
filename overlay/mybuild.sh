#!/usr/bin/env bash

#    TI_AM335x_BeagleBone_Black
#        -> cape-universaln-00A0.dtbo
#             dtbo="${overlay}-00A0.dtbo"
target_dtbo=cape-universaln-00A0.dtbo
dts=cape-universaln-00A0-ts-lcd.dts
dtbo=src/arm/cape-universaln-00A0-ts-lcd.dtbo

make src/arm/cape-universaln-00A0-ts-lcd.dtbo

#copy the file to the /lib/firmware
cp src/arm/cape-universaln-00A0-ts-lcd.dtbo /lib/firmware/$target_dtbo

