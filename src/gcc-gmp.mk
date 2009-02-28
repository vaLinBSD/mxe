# GMP for GCC
# http://www.gmplib.org/

PKG            := gcc-gmp
$(PKG)_VERSION := 4.2.4
$(PKG)_SUBDIR  := gmp-$($(PKG)_VERSION)
$(PKG)_FILE    := gmp-$($(PKG)_VERSION).tar.bz2
$(PKG)_URL     := http://$(SOURCEFORGE_MIRROR)/tdm-gcc/$($(PKG)_FILE)
$(PKG)_DEPS    :=

define $(PKG)_UPDATE
    wget -q -O- 'http://sourceforge.net/project/showfiles.php?group_id=200665&package_id=238462' | \
    grep 'gmp-' | \
    $(SED) -n 's,.*gmp-\([4-9][^>]*\)\.tar.*,\1,p' | \
    head -1
endef