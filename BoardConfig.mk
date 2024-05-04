#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/Z01KD

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ASUS_Z01KD,Z01KD,Z01K

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# TODO: Criar uma config especifica no kernal base
# Kernel
TARGET_KERNEL_CONFIG := X00TD_defconfig

#TODO: ANALISAR DE ONDE VIRÁ
# Inherit the proprietary files
include vendor/asus/Z01KD/BoardConfigVendor.mk

# Display
TARGET_SCREEN_DENSITY := 480
