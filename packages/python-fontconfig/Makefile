# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-fontconfig
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ldo/python_fontconfig.git
PKG_SOURCE_DATE:=2019-05-29
PKG_SOURCE_VERSION:=9a54b93ecd054fd9b99dfaddf3ffdce567d09a9b
PKG_MIRROR_HASH:=e81e402ef825047339ab2570354db4a0501725f9af883c3e37dd9c15fe45569b

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PYTHON3_PKG_SETUP_ARGS:=

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-fontconfig
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=python_fontconfig
  URL:=https://github.com/ldo/python_fontconfig
  DEPENDS:=+python3-light +fontconfig
  VARIANT:=python3
endef

define Package/python3-fontconfig/description
Python_fontconfig is a Python 3 binding for Fontconfig, the standard
Linux font-matching API.
endef

$(eval $(call Py3Package,python3-fontconfig))
$(eval $(call BuildPackage,python3-fontconfig))
