TeamWin Recovery Project

Device configuration for Sharp Aquos Xx3 506SH/SHV34  (_pa32_)
=====================================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.4 GHz Cortex-A53
CHIPSET | Qualcomm MSM8996 Snapdragon 820
GPU     | Adreno 530
Memory  | 3 GB
Shipped Android Version | Android 6.0.1 
Storage | 32 GB
MicroSD | Up to 200GB
Battery | 3000 mAh (non-removable)
Dimensions | 149 x 73 x 7.6 mm
Display | 1080 x 1920 pixels, 5.3" IGZO
Rear Camera  | 23 MP, LED flash
Front Camera | 5.0 MP

![Sharp Aquos Xx3 506SH/SHV34](https://jp.sharp/products/aquos-xx3/index_v3/images/img_index_kv.jpg "Sharp Aquos Xx3 506SH/SHV34")

## Compile

First checkout minimal twrp with omnirom tree:

```
mkdir -p ~/android/twrp-11
cd ~/android/twrp-11
repo init -u git@github.com:minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/sharp/pa32" name="JerryCheng1/twrp_device_sharp_pa32" remote="github" revision="android-11" />
<project path="kernel/sharp/msm8996" name="JerryCheng1/android_kernel_sharp_msm8996" remote="github" revision="LA.UM.6.5.r1-04300-8x96.0" />
```

Finally execute these:

```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_pa32-eng
make recoveryimage
```

To test it:

```
fastboot boot out/target/product/pa32/recovery.img
```

## Thanks