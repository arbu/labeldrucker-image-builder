# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=printui
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/arbu/printui.git
PKG_SOURCE_DATE:=2020-01-30
PKG_SOURCE_VERSION:=f9bb17f072ef63e9f6e9b388c7350084ab6e32e8
PKG_MIRROR_HASH:=c48cdcfb644786beb09ae11476c74414ee2741f92ce834adbdcbb41b03de0535

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=GPL-3.0-or-later / MIT / OFL-1.1 / CC-BY-4.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/printui
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Print UI
  URL:=https://github.com/arbu/printui
  DEPENDS:=+python3-light +python3-setuptools +python3-bottle +python3-jinja2 +python3-brother_ql +python3-fontconfig
  VARIANT:=python3
endef


define Py3Package/printui/install
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_CONF) ./files/printui.conf $(1)/etc/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/printui.init $(1)/etc/init.d/printui
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

define Package/printui/description
This is a web service to print labels on Brother QL label printers.
endef

define Package/printui/conffiles
/etc/printui.conf
endef

$(eval $(call Py3Package,printui))
$(eval $(call BuildPackage,printui))
