audio_ALC885
============
OS X Realtek ALC885 Onboard Audio

This guide enables OS X Realtek ALC885 onboard audio on Intel based motherboards with a bootable clean install of OS X. The Realtek AppleHDA.kext only works with the codec the kext was edited for and replaces the native AppleHDA.kext.
____________________________________________________________Download ZIP >  > 

Requirements
1. Mountain Lion 10.8 - 10.8.4
2. Native S/L/E/AppheHDA.kext (restore native AppleHDA.kext with Combo Update)

Realtek ALC AppleHDA Guides https://github.com/toleda/audio_ALCInjection
[Guide] Add or Edit dsdt/HDEF.pdf
ML-Clover Realtek ALC AppleHDA Injection.pdf 
ML-Realtek ALC AppleHDA Capabilities.pdf
ML-Realtek ALC AppleHDA Screenshots.pdf
ML-Customizing the Realtek AppleHDA.pdf

Realtek ALC885 AppleHDA.kext Audio_IDs
Audio_ID: 1 supports 5 and 6 port ALC onboard and/or AMD/Nvidia HDMI audio  

Three techniques enable the Realtek ALC885 AppleHDA.kext, select one
1. no dsdt/audio enabler = Audio_ID, install one enabler, not both
1a. Audio_ID = 1/HDAEnabler1.kext https://github.com/toleda/audio_HDAEnabler1
2. dsdt/HDEF/layout-id = Audio_ID, Guide] Add or Edit dsdt/HDEF.pdf
2a. Audio_ID = 1/layout-id: 0x01, 0x00, 0x00, 0x00, 0x00
3. Clover/Config.plist/PCI/HDAInjection, ML-Clover Realtek ALC AppleHDA Injection.pdf
3a. Audio_ID = 1/HDAInjection=1

Download
1. https://github.com/toleda/audio_ALC885
2. Select: Download ZIP (above and right)

Preparation/Configuration/Installation
1. Downloads/audio_ALC885-master/toledaALC885_patch.txt

Troubleshooting
1. ML-Realtek ALC AppleHDA Capabilities.pdf
2. Post to http://www.insanelymac.com/forum/topic/290796-realtek-alc-applehda-audio-injection/
3. Post to http://www.tonymacx86.com/audio/76309-mountain-lion-multibeast-no-audio-solutions-problem-reporting.html

Credit
THe KiNG 
VHC888
.:ErmaC:.
bcc9
RevoGirl

toleda
https://github.com/toleda/audio_toledaALC885
toledaALC885_patch_kit
README.txt
Files:
885.zip
