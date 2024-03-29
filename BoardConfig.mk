#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lavender-common
include device/xiaomi/lavender-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lavender

BUILD_BROKEN_DUP_RULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := lavender

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := lavender_defconfig
BOARD_KERNEL_SEPARATED_DTBO := true

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifest.xml

# Product properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3640619008
BOARD_VENDORIMAGE_PARTITION_SIZE := 2080305152
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Security patch level
VENDOR_SECURITY_PATCH := 2021-06-01

# Inherit the proprietary files
include vendor/xiaomi/lavender/BoardConfigVendor.mk
