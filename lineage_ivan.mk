#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/oplus/ivan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_ivan
PRODUCT_DEVICE := ivan
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Nord 2 5G
PRODUCT_MANUFACTURER := OnePlus

# Build info
BUILD_FINGERPRINT := "OnePlus/IV2201EEA/OP555BL1:13/TP1A.220905.001/R.108b2c1-1:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "oplus/ossi/ossi:12/SP1A.210812.016/1662019990870:user/release-keys"
