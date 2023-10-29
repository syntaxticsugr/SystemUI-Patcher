ui_print " "
# Do not remove the credits if you are using part of this template.
ui_print " Module Template by @Jai_08 // @cool_modules"
ui_print " Updated By: SyntaxticSugr"
ui_print "  "

remove() {
    rm -rf /data/adb/modules_update/$MODID 2>/dev/null
    rm -rf /data/adb/modules/$MODID 2>/dev/null
}

tar -xf $MODPATH/utils/myutils -C $MODPATH/utils/ 2>/dev/null
zipp=$MODPATH/utils/zip
zipa=$MODPATH/utils/zipalign
mp=$NVBASE/modules

set_perm $zipp 0 0 0755
set_perm $zipa 0 0 0755

if [ -f "/system/system_ext/priv-app/SystemUI/SystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/SystemUI
    apkname=SystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Aosp A11+ Detected..."
elif [ -f "/system/system_ext/priv-app/SystemUIGoogle/SystemUIGoogle.apk" ]; then
    spath=/system/system_ext/priv-app/SystemUIGoogle
    apkname=SystemUIGoogle
    ui_print " "
    ui_print " Processing....."
    ui_print " Pixel A11 / A12 Detected..."
elif [ -f "/system/priv-app/TsSystemUI/TsSystemUI.apk" ]; then
    spath=/system/priv-app/TsSystemUI
    apkname=TsSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Techno Device Detected..."
elif [ -f "/system/priv-app/SystemUIGoogle/SystemUIGoogle.apk" ]; then
    spath=/system/priv-app/SystemUIGoogle
    apkname=SystemUIGoogle
    ui_print " "
    ui_print " Processing....."
    ui_print " Pixel Device Detected..."
elif [ -f "/system/priv-app/SystemUIWithLegacyRecents/SystemUIWithLegacyRecents.apk" ]; then
    spath=/system/priv-app/SystemUIWithLegacyRecents
    apkname=SystemUIWithLegacyRecents
    ui_print " "
    ui_print " Processing....."
    ui_print " Stock Rom / Sony Device Detected..."
elif [ -f "/system/system_ext/priv-app/MtkSystemUI/MtkSystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/MtkSystemUI
    apkname=MtkSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Mtk A11+ Detected..."
elif [ -f "/system/system_ext/priv-app/ParanoidSystemUI/ParanoidSystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/ParanoidSystemUI
    apkname=ParanoidSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Paranoid rom Detected..."
elif [ -f "/system/priv-app/AsusSystemUI/AsusSystemUI.apk" ]; then
    spath=/system/priv-app/AsusSystemUI
    apkname=AsusSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Asus Device Detected..."
elif [ -f "/system/priv-app/AsusSystemUIWW/AsusSystemUIWW.apk" ]; then
    spath=/system/priv-app/AsusSystemUIWW
    apkname=AsusSystemUIWW
    ui_print " "
    ui_print " Processing....."
    ui_print " Asus Stock rom Detected..."
elif [ -f "/system/product/priv-app/MtkSystemUI/MtkSystemUI.apk" ]; then
    spath=/system/product/priv-app/MtkSystemUI
    apkname=MtkSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Mtk A10 Detected..."
elif [ -f "/system/product/priv-app/SystemUIGoogle/SystemUIGoogle.apk" ]; then
    spath=/system/product/priv-app/SystemUIGoogle
    apkname=SystemUIGoogle
    ui_print " "
    ui_print " Processing....."
    ui_print " Pixel A10 Detected..."
elif [ -f "/system/product/priv-app/SystemUI/SystemUI.apk" ]; then
    spath=/system/product/priv-app/SystemUI
    apkname=SystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Aosp A10 Detected..."
elif [ -f "/system/priv-app/SystemUI/SystemUI.apk" ]; then
    spath=/system/priv-app/SystemUI
    apkname=SystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Aosp Detected..."
elif [ -f "/system/product/priv-app/OPSystemUI/OPSystemUI.apk" ]; then
    spath=/system/product/priv-app/OPSystemUI
    apkname=OPSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " OOS A10 Detected..."
elif [ -f "/system/product/priv-app/VinSystemUI/VinSystemUI.apk" ]; then
    spath=/system/product/priv-app/VinSystemUI
    apkname=VinSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Vos Device Detected..."
elif [ -f "/system/system_ext/priv-app/OPSystemUI/OPSystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/OPSystemUI
    apkname=OPSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " OOS A11+ Detected..."
elif [ -f "/system/system_ext/priv-app/WeebSystemUI/WeebSystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/WeebSystemUI
    apkname=WeebSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Weeb A11+ Detected..."
elif [ -f "/system/system_ext/priv-app/sysuia/sysuia.apk" ]; then
    spath=/system/system_ext/priv-app/sysuia
    apkname=sysuia
    ui_print " "
    ui_print " Processing....."
    ui_print " Aosp Detected..."
elif [ -f "/system/system_ext/priv-app/TranSystemUI/TranSystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/TranSystemUI
    apkname=TranSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Infix Detected..."
elif [ -f "/system/system_ext/priv-app/MiuiSystemUI/MiuiSystemUI.apk" ]; then
    spath=/system/system_ext/priv-app/MiuiSystemUI
    apkname=MiuiSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Miui A10 Detected..."
elif [ -f "/system/product/priv-app/MiuiSystemUI/MiuiSystemUI.apk" ]; then
    spath=/system/product/priv-app/MiuiSystemUI
    apkname=MiuiSystemUI
    ui_print " "
    ui_print " Processing....."
    ui_print " Miui A11+ Detected..."
else
    ui_print " "
    ui_print " Processing....."
    ui_print " Looks like your ROM is not yet Supported.."
    ui_print " "
    remove
    exit 1
fi

if $KSU; then
    spath=${spath/system\/system_ext/system_ext}
fi

mkdir -p $MODPATH/syntaxticsugr
cp -f $spath/$apkname.apk $MODPATH/syntaxticsugr/
file=$MODPATH/syntaxticsugr/$apkname.apk
cd $MODPATH/substratumXML/SystemUI/
if $zipp -qq -r $file *; then
    ui_print " "
    ui_print " Installing Patches....."
else
    ui_print " "
    ui_print " Failed to Patch your SystemUI."
    ui_print " "
    remove
    exit 1
fi

mkdir -p $MODPATH/$spath
if $zipa -f 4 $file $MODPATH/$spath/$apkname.apk; then
    ui_print " "
    ui_print " Installed Successfully."
else
    ui_print " "
    ui_print " Failed to Install."
    ui_print " "
    remove
    exit 1
fi

rm -r $MODPATH/syntaxticsugr/
rm -r $MODPATH/utils/
rm -r $MODPATH/substratumXML

ui_print " "
ui_print " Reboot to apply changes."
ui_print " "
