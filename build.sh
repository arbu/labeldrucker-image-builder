#! /bin/sh
set -ex

OPENWRT_VERSION="v19.07.0"
BUILD_THREADS="`getconf _NPROCESSORS_ONLN || echo 1`"

# Get the OpenWRT sources, checkout the tag of the specified OpenWRT-version
if [ ! -d openwrt ]; then
    git clone -b "$OPENWRT_VERSION" --single-branch --depth 1 https://git.openwrt.org/openwrt/openwrt.git
fi
pushd openwrt
git checkout "$OPENWRT_VERSION"

# Add kernel patches for better support of the Orange Pi Zero
cp -Rp ../patches-4.14 target/linux/sunxi/

# Install default packages and local feed
grep "src-git packages" feeds.conf.default >feeds.conf
echo "src-link custom ../../packages" >>feeds.conf

# Get the OpenWRT packages
./scripts/feeds update -a
./scripts/feeds install -a

# Apply configuration
cp ../config.diff .config
make defconfig

# Copy files that will be included in the image
mkdir -p files/usr/share/
cp -Rp ../fonts files/usr/share/
#cp -Rp ../files ./

# Build. On failure, rerun with debug output
make -j "$BUILD_THREADS" || make V=s

popd

cp openwrt/bin/targets/sunxi/cortexa7/openwrt-sunxi-cortexa7-sun8i-h2-plus-orangepi-zero-squashfs-sdcard.img.gz labeldrucker-openwrt.img.gz
