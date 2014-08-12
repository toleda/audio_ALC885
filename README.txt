audio_ALC885
============
OS X Realtek ALC885 Onboard Audio

Update: v2, updated script, no downloads, double click and done.
See https://github.com/toleda/audio_RealtekALC
Use audio_realtekALC-90_v2.command

This repo will be deprecated on 10/1/2014

This guide enables OS X Realtek ALC885 onboard audio on Intel based motherboards with a bootable clean install of OS X. The Realtek AppleHDA.kext only works with the codec the kext was edited for and patches the native AppleHDA.kext.
____________________________________________________________Download ZIP >  > 

Note: cloverALC, see https://github.com/toleda/audio_cloverALC

Requirements
1. Native S/L/E/AppleHDA.kext (restore native AppleHDA.kext with Combo Update)
2. Supported OS X versions:
2a. alc885-94 - Mavericks 10.9.4/AppleHDA.kext_v2.6.3
2a. alc885-93 - Mavericks 10.9.3/AppleHDA.kext_v2.6.1
2b. alc885-92 - Mavericks 10.9.2/AppleHDA.kext_v2.6.0
2c. alc885-91 - Mavericks 10.9.1/AppleHDA.kext_v2.5.3
2d. alc885-90 - Mavericks 10.9/AppleHDA.kext_v2.5.2
2e. alc885-85 - Mountain Lion 10.8.5/AppleHDA.kext_v2.4.7
2f. alc885-84 - Mountain Lion 10.8 - 10.8.4/AppleHDA.kext_v2.3.7

Realtek ALC AppleHDA Guides https://github.com/toleda/audio_ALCInjection
1. M-Realtek ALC AppleHDA Capabilities.pdf
2. M-Realtek ALC AppleHDA Customization.pdf
3. M-Realtek ALC AppleHDA No Audio.pdf
4. M-Realtek ALC AppleHDA Screenshots.pdf

Realtek ALC885 AppleHDA.kext Audio_ID
1. Audio_ID: 1 supports 5 and 6 port ALC8xx onboard and/or AMD/Nvidia HDMI audio  
2. Audio_ID: 1 supports analog 5.1 surround sound
3. Audio_ID: 1 requires HDMI audio dsdt edits for HDMI audio 

Techniques to enable the Realtek ALC AppleHDA.kext, select one
1. No dsdt/audio enabler = Audio_ID, install either kext (use 1a or 1b, not both)
1a. Audio_ID = 1/HDAEnabler1.kext https://github.com/toleda/audio_HDAEnabler1
2. dsdt/HDEF/layout-id = Audio_ID, see {Guide} Add or Edit dsdt/HDEF.pdf
2a. Audio_ID = 1/layout-id: 0x01, 0x00, 0x00, 0x00, 0x00
3. ssdt/HDEF/layout-id = Audio_ID, see {Guide} Add ssdt/HDEF.pdf
3a. Audio_ID = 1/layout-id: 0x01, 0x00, 0x00, 0x00, 0x00
4. Clover/Config.plist/Devices, see ML-Clover Realtek ALC AppleHDA Injection.pdf
4a. Audio_ID = 1/Audio/Inject=1
5. Chameleon/Chameleon Installer/Customize/Settings
5a. Audio_ID = 1/HDEF Layout=1
5b. Audio_ID = 2/HDEF Layout=2

Download
1. https://github.com/toleda/audio_ALC885
2. Select: Download ZIP (above and right)

Installation/Shell Script/.command (Do not move folder or files)
1. Downloads/audio_ALC885-master/
1a. for 10.9.4/audio_alc885-94_patch.command
1b. for 10.9.3/audio_alc885-93_patch.command
1c. for 10.9.2/audio_alc885-92_patch.command
1d. for 10.9.1/audio_alc885-91_patch.command
1e. for 10.9/audio_alc885-90_patch.command
1f. for 10.8.5/audio_alc885-85_patch.command
1g. for 10.8.4 and older/audio_alc885-84_patch.command

2. Launch (double click: audio_alc885-ver_patch.command)
3. Enter password at prompt
4. Save Log: Terminal/Shell/Export Text As../Terminal Saved Output/Desktop/audio_ALC885
5. Restart

Problem Reporting
1. Motherboard/BIOS version/processor/graphics/OS and version
2. Copy of dsdt (if edited)
3. Copy of IORegistryExplorer

Troubleshooting/Post w/attachments 2 and 3, above
1. Mavericks/10.9
1a. http://www.tonymacx86.com/audio/112461-mavericks-no-audio-realtek-alc-applehda.html
1b. http://www.insanelymac.com/forum/topic/292999-mavericks-applehda-hdmi-audio/
2. Mountain Lion/10.8
2a.http://www.tonymacx86.com/audio/76309-mountain-lion-multibeast-no-audio-solutions-problem-reporting.html
2b. http://www.insanelymac.com/forum/topic/290797-mountain-lion-realtek-alc-applehda-audio/

Credit
THe KiNG 
VHC888
.:ErmaC:.
bcc9
RevoGirl rip

toleda
https://github.com/toleda/audio_ALC885
audio_alc885-94_patch.command
audio_alc885-93_patch.command
audio_alc885-92_patch.command
audio_alc885-91_patch.command
audio_alc885-90_patch.command
audio_alc885-85_patch.command
audio_alc885-84_patch.command
README.txt
Files:
885.zip

Details - audio_ALC885-ver_patch script  (see Requirements)

1. Verify: 
1a. native S/L/E/AppleHDA.kext_ver
1b. Downloads/audio_ALC885-master

2. Rename or Delete (if present)
2a. Desktop/audio-ALC885 to Desktop/audio-ALC885-archive

3. Run script
3a. Downloads/audio_ALC885-master/audio_alc885-ver_patch.command
3b. Lunch (double click)
3c. Enter Password when requested

4. Example: Terminal/audio_alc885-85_patch window
_____________________________

...$ .../Downloads/audio_ALC885-master/audio_alc885-85_patch.command ; exit;
Prepare Desktop/audio_ALC885 ...  
Install files ...
Password:
Patch binary ...
Fix permissions ...
Kernel cache...
Finished, restart required.
logout

[Process completed]
___________________________

5. If output is the same, success.  
5a. Terminal/Shell/Export Text As../Terminal Saved Output/Desktop/audio_ALC885
5b. Restart

6. If errors or a different output;
6a. Install Desktop/audio_ALC885/AppleHDA-orig.kext to S/L/E/AppleHDA.kext
6b. Go to Step 1.

7. If boot problem caused by AppleHDA, Boot/Single User Mode/Terminal
sudo rm -R /System/Library/Extensions/AppleHDA.kext