# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pyusb
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/p/pyusb
PKG_HASH:=4e9b72cc4a4205ca64fbf1f3fff39a335512166c151ad103e55c8223ac147362

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyusb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pyusb
  URL:=https://pyusb.github.io/pyusb/
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

define Package/python3-pyusb/description
PyUSB offers easy USB devices communication in Python. It should work
without additional code in any environment with Python >= 2.4, ctypes
and an pre-built usb backend library (currently, libusb 0.1.x,
libusb 1.x, and OpenUSB).
endef

$(eval $(call Py3Package,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb))
