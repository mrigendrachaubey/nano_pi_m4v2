# Usage

```
source envsetup.sh
```

Then compile kernel and u-boot.

This repo is based on,

[NanoPi_M4V2#Get_Started](http://wiki.friendlyarm.com/wiki/index.php/NanoPi_M4V2#Get_Started)

Goal is to create a minimal kernel,uboot and prebuilt images which can be flashed and improved upon. This solves the issue of using advanced system such as android or armbian. As of now goal is making a buildroot environment as friendlyarm and rockchip buildroot manifests are broken, hard to understand, community is not responsive and confusing.

Overall bring up minimal rootfs with SD card using buildroot.


## Repos which are used,
**Cross compiler**
```
git clone https://github.com/friendlyarm/prebuilts.git -b master --depth 1
cd prebuilts/gcc-x64
cat toolchain-6.4-aarch64.tar.gz* | sudo tar xz -C /
```

**Linux**

```
git clone https://github.com/friendlyarm/kernel-rockchip --depth 1 -b nanopi4-linux-v4.4.y kernel-rockchip
```

**U-boot**

```
git clone https://github.com/friendlyarm/uboot-rockchip --depth 1 -b nanopi4-v2014.10_oreo
```

