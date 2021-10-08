#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product-if-exists, vendor/build/config/BoardConfigAOSP.mk)

# Inherit from onclite device
$(call inherit-product, device/asus/X01AD/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ASUS-X01AD
PRODUCT_MANUFACTURER := Asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Pixel Charger
TARGET_INCLUDE_PIXEL_CHARGER := true
