#!/bin/sh
# Maintained by: toleda for: github.com/toleda/audio_ALC885
# File: audio_alc885-90_patch.sh_v1.0
# Credit: THeKiNG, VCH888, .:ErmaC:., bcc9, RevoGirl, PikeRAlpha, SL_UnderWater,
# hackintoshfreedom
#
# OS X Realtek ALC885 Onboard Audio
#
# Enables OS X Realtek ALC885 onboard audio in Mountain Lion 10.9 and newer
# 1. Patches native AppleHDA.kext installed in System/Library/Extensions
# 2. Rename Desktop/audio_ALC885 to audio_ALC885-archive (if present)
# 3. Verify Downloads/audio_ALC885-master present
#
# Installation
# 1. Finder/File/Open With/Terminal
# 2. Enter password at prompt
#
# Agreement
# The audio_ALC885_patch is for personal use only.  Do not distribute the patch, any or 
# all of the enclosed files or the resulting patched AppleHDA.kext for any reason without # permission. The audio_ALC885_patch is provided as is and without any kind of warranty.
#
echo "Prepare Desktop/audio_ALC885 ..."
cd ~
cp -R Downloads/audio_ALC885-master Desktop/audio_ALC885
cp -R /System/Library/Extensions/AppleHDA.kext Desktop/audio_ALC885/AppleHDA-orig.kext
cd Desktop/audio_ALC885
unzip 885.zip
cd 885

echo "Install files ..."
sudo rm -R /System/Library/Extensions/AppleHDA.kext/Contents/Plugins/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist
sudo install -m 644 -o root -g wheel Info-90.plist /System/Library/Extensions/AppleHDA.kext/Contents/Plugins/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist
sudo rm -R /System/Library/Extensions/AppleHDA.kext/Contents/Resources/*.zlib
sudo install -m 644 -o root -g wheel Platforms.xml.zlib layout1.xml.zlib  /System/Library/Extensions/AppleHDA.kext/Contents/Resources

echo "Patch binary/Optional - Default: No Patch"
# sudo perl -pi -e 's|\x8b\x19\xd4\x11|\x85\x08\xec\x10|g' /System/Library/Extensions/AppleHDA.kext/Contents/MacOS/AppleHDA

echo "Fix permissions ..."
sudo chown -R root:wheel /System/Library/Extensions/AppleHDA.kext

echo "Kernel cache..."
sudo rm -fr /System/Library/Caches/*
sudo touch /System/Library/Extensions

cd ~
rm -R Desktop/audio_ALC885/885
cp -R /System/Library/Extensions/AppleHDA.kext Desktop/audio_ALC885/AppleHDA.kext

echo "Finished, restart required."