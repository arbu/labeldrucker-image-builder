include $(TOPDIR)/rules.mk

PKG_NAME:=xradio
PKG_RELEASE=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/fifteenhex/xradio.git
PKG_SOURCE_DATE:=2020-01-11
PKG_SOURCE_VERSION:=502489a9389ac7118401dc7271c56d128376e191
PKG_MIRROR_HASH:=c937ad8e5c0a6ba150af2fac9bc5524c931582b9a1bfd3734d347167238ea599

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=GPLv2
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

FIRMWARE_RELEASE:=7172b4b6608b131cbd6c60253c78a231993beed8
FIRMWARE_URL:=@GITHUB/armbian/firmware/$(FIRMWARE_RELEASE)/xr819/

define Download/firmware-boot
  URL_FILE:=boot_xr819.bin
  FILE:=xradio-firmware-$(FIRMWARE_RELEASE)-boot
  URL:=$(FIRMWARE_URL)
  HASH:=6583350b3eb12f70fc6d6081426717bd0019b55c6558ffe820c1548f0702bb8c
endef
$(eval $(call Download,firmware-boot))

define Download/firmware-fw
  URL_FILE:=fw_xr819.bin
  FILE:=xradio-firmware-$(FIRMWARE_RELEASE)-fw
  URL:=$(FIRMWARE_URL)
  HASH:=4954ceb85807959c42e82c432109455bd9eabe95971402299a16d77ddd7d79f5
endef
$(eval $(call Download,firmware-fw))

define Download/firmware-sdd
  URL_FILE:=sdd_xr819.bin
  FILE:=xradio-firmware-$(FIRMWARE_RELEASE)-sdd
  URL:=$(FIRMWARE_URL)
  HASH:=84d3fb3ca8e5d25a0c113a5063bccbeb5b53da230a0afa236b5b625f37db5161
endef
$(eval $(call Download,firmware-sdd))

define KernelPackage/xradio
  SUBMENU:=Wireless Drivers
  TITLE:=xradio (experimental xr819 wifi-drivers)
  DEPENDS:=@TARGET_sunxi +kmod-mac80211 +wpad-mini
  FILES:=$(PKG_BUILD_DIR)/xradio_wlan.ko
  AUTOLOAD:=$(call AutoProbe,xradio_wlan)
endef

NOSTDINC_FLAGS = \
	-I$(PKG_BUILD_DIR) \
	-I$(STAGING_DIR)/usr/include/mac80211-backport/uapi \
	-I$(STAGING_DIR)/usr/include/mac80211-backport \
	-I$(STAGING_DIR)/usr/include/mac80211/uapi \
	-I$(STAGING_DIR)/usr/include/mac80211 \
	-include backport/autoconf.h \
	-include backport/backport.h

define Build/Compile
	+$(MAKE) $(PKG_JOBS) -C "$(LINUX_DIR)" \
		$(KERNEL_MAKE_FLAGS) \
		$(PKG_MAKE_FLAGS) \
		SUBDIRS="$(PKG_BUILD_DIR)" \
		NOSTDINC_FLAGS="$(NOSTDINC_FLAGS)" \
		modules
endef

define KernelPackage/xradio/install
	$(INSTALL_DIR) $(1)/lib/firmware/xr819
	$(CP) $(DL_DIR)/xradio-firmware-$(FIRMWARE_RELEASE)-boot $(1)/lib/firmware/xr819/boot_xr819.bin
	$(CP) $(DL_DIR)/xradio-firmware-$(FIRMWARE_RELEASE)-fw $(1)/lib/firmware/xr819/fw_xr819.bin
	$(CP) $(DL_DIR)/xradio-firmware-$(FIRMWARE_RELEASE)-sdd $(1)/lib/firmware/xr819/sdd_xr819.bin
endef

$(eval $(call KernelPackage,xradio))
