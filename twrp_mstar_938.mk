#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mstar_938 device
$(call inherit-product, device/letv/mstar_938/device.mk)

PRODUCT_DEVICE := mstar_938
PRODUCT_NAME := twrp_mstar_938
PRODUCT_BRAND := letv
PRODUCT_MODEL := letv-mstar_938
PRODUCT_MANUFACTURER := letv

PRODUCT_GMS_CLIENTID_BASE := android-letv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_mangosteen-user 6.0 V2401RCN02C080080B04121S 190412.193339 release-keys"
