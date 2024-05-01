#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# TODO: as permissões deste arquivo estão corretas?
# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# TODO: este arquivo não está em formato texto, isto é um problema?
# Thermal configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    Z01KDWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/asus/Z01KD/Z01KD-vendor.mk)
