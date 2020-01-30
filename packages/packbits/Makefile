# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=packbits
PKG_VERSION:=0.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/p/packbits
PKG_HASH:=bc6b370bb34e04ac8cfa835e06c0484380affc6d593adb8009dd6c0f7bfff034

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYTHON3_PKG_SETUP_ARGS:=

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-packbits
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=packbits
  URL:=https://github.com/psd-tools/packbits
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

define Package/python3-packbits/description
This module implements a PackBits encoder/decoder for Python 2.x and 3.x.
endef

$(eval $(call Py3Package,python3-packbits))
$(eval $(call BuildPackage,python3-packbits))
