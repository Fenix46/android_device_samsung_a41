#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Audio
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.1 \
    android.hardware.audio.effect@7.0 \
    android.hardware.audio.common@7.0 \
    android.hardware.audio@7.0

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.mt6768 \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default


# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.mt6768

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    install-recovery.sh \
    init.insmod.sh \

PRODUCT_PACKAGES += \
    fstab.enableswap \
    factory_init.project.rc \
    factory_init.connectivity.common.rc \
    meta_init.modem.rc \
    init.ago.rc \
    init.connectivity.common.rc \
    factory_init.connectivity.rc \
    meta_init.rc \
    factory_init.rc \
    init.project.rc \
    init.cgroup.rc \
    init.modem.rc \
    init.mt6768.usb.rc \
    init_connectivity.rc \
    init.aee.rc \
    multi_init.rc \
    meta_init.project.rc \
    meta_init.connectivity.rc \
    meta_init.connectivity.common.rc \
    init.mt6768.rc \
    init.connectivity.rc \
    init.recovery.mt6768.rc \
    init.recovery.samsung.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.enableswap:$(TARGET_COPY_OUT_RAMDISK)/fstab.enableswap

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/mediatek \
    hardware/samsung \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.3

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a41/a41-vendor.mk)
