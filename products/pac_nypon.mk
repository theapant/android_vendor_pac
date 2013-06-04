# Check for target product
ifeq (pac_nypon,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Common device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/common/hdpi

# include ParanoidAndroid common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/sony/nypon/cm.mk)

PRODUCT_NAME := pac_nypon


endif
