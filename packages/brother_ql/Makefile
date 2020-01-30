# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=brother_ql
PKG_VERSION:=0.9.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/b/brother_ql
PKG_HASH:=1f5c57a039f012c9c204397f470001f76ebb7483421ebde985d0cb3c614e8660

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-brother_ql
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=brother_ql
  URL:=https://github.com/pklaus/brother_ql
  DEPENDS:=+python3-light +python3-pillow +python3-attrs +python3-click \
           +python3-future +python3-packbits +python3-pyusb
  VARIANT:=python3
endef

define Package/python3-brother_ql/description
A Python package to control Brother QL label printers. It implements
the raster language of those printers and allows you to send
instruction files to your printer.
endef

$(eval $(call Py3Package,python3-brother_ql))
$(eval $(call BuildPackage,python3-brother_ql))
