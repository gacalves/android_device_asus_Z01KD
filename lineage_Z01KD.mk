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
PRODUCT_DEVICE := Z01KD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone 4
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_Z01K \
    PRODUCT_NAME=WW_Z01K \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 1309 release-keys"

# TODO: WHATS THIS?
# Build fingerprint
# BUILD_FINGERPRINT := "asus/WW_X00TD/ASUS_X00T_2:8.1.0/OPM1/15.2016.1805.318-20180712:user/release-keys"
