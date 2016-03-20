include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-branchswitch
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-branchswitch
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Switch autoupdater Branch
  DEPENDS:=+gluon-core
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-branchswitch/install
        $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-branchswitch))


