#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Z01KD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Z01KD
PRODUCT_DEVICE := ASUS_Z01KD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone 4
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_Z01KD \
    PRODUCT_NAME=WW_Z01KD \
    PRIVATE_BUILD_DESC="WW_Phone-user 8.0.0 OPR1.170623.032 15.0610.1909.39-0 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "asus/WW_Z01KD/ASUS_Z01KD:8.0.0/OPR1.170623.032/15.0610.1909.39-0:user/release-keys"
