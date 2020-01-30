# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=future
PKG_VERSION:=0.18.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/f/future
PKG_HASH:=b1bead90b70cf6ec3f0710ae53a525360fa360d306a86583adc6bf83a4db537d

PKG_MAINTAINER:=Aaron Bulmahn <arbu@posteo.de>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-future
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=python-future
  URL:=http://python-future.org/
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

define Package/python3-future/description
future is the missing compatibility layer between Python 2 and
Python 3. It allows you to use a single, clean Python 3.x-compatible
codebase to support both Python 2 and Python 3 with minimal overhead.
endef

$(eval $(call Py3Package,python3-future))
$(eval $(call BuildPackage,python3-future))
