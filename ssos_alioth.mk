#
# Copyright (C) 2021 The Aosp Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Aosp stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := ssos_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true

# Inherit some ShapeShiftOS stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit ShapeShiftOS common properties.
PRODUCT_PRODUCT_PROPERTIES += \
    ro.ssos.cpu=SD870™

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth-user 11 RKQ1.200826.002 V12.5.2.0.RKHMIXM release-keys"

BUILD_FINGERPRINT := POCO/alioth_global/alioth:11/RKQ1.200826.002/V12.5.2.0.RKHMIXM:user/release-keys
