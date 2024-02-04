#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from viva device
$(call inherit-product, device/xiaomi/viva/device.mk)

PRODUCT_DEVICE := viva
PRODUCT_NAME := twrp_viva
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := viva
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=viva \
    PRODUCT_NAME=viva \
    PRIVATE_BUILD_DESC="viva-user 12 SP1A.210812.016 V14.0.5.0.TGDMIXM release-keys"

BUILD_FINGERPRINT := Redmi/viva_global/viva:12/SP1A.210812.016/V14.0.5.0.TGDMIXM:user/release-keys

