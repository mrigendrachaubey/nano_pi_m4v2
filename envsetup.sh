#!/bin/bash
running_file_name=$(basename "$0")
echo ""
echo "Running '$running_file_name'."
echo ""


# exporting paths and preparing .config
export PATH=FriendlyARM/toolchain/6.4-aarch64/bin/:$PATH
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-
echo ""
echo "Cross compiler path exported."
echo ""

cd nanopi4-linux-v4.4.y
echo ""
echo "set linux defconfig"
echo ""
make nanopi4_linux_defconfig

cd ../nanopi4-uboot-v4.4.y
echo ""
echo "set uboot defconfig"
echo ""
make rk3399_defconfig

if [ $? -eq 0 ]; then
    echo OK
else
    echo ""
    echo -e "\e]8;;https://lists.denx.de/pipermail/u-boot/2018-March/321824.html\aTools-build-failure-when-libfdt-devel-is-installed\e]8;;\a"
    echo "Sometimes uboot libfdt error comes, uninstall it, then do make rk3399_defconfig"
    echo "\033[1msudo apt-get purge -y --auto-remove libfdt-dev\033[0m"
    echo ""
fi
cd ../

echo ""
echo  "Compile kernel \033[1mmake nanopi4-bootimg\033[0m"
echo  "Compile uboot \033[1mmake\033[0m"
