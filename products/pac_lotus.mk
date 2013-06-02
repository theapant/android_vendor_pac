# Check for target product
ifeq (pac_lotus,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_mdpi

# Common device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/common/mdpi

# include ParanoidAndroid common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/sony/lotus/cm.mk)

PRODUCT_NAME := pac_lotus

endif
