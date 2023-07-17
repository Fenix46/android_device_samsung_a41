#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from a41 device
$(call inherit-product, device/samsung/a41/device.mk)

PRODUCT_DEVICE := a41
PRODUCT_NAME := aosp_a41
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A415F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a41xx-user 12 SP1A.210812.016 A415FXXU3DWD2 release-keys"

BUILD_FINGERPRINT := samsung/a41xx/a41:12/SP1A.210812.016/A415FXXU3DWD2:user/release-keys
