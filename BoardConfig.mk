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

DEVICE_PATH := device/oplus/ivan

# Inherit from oplus mt6877-common
include device/oplus/mt6877-common/BoardConfigCommon.mk

# Assertation
TARGET_OTA_ASSERT_DEVICE := ivan,OP515BL1

# Kernel
TARGET_KERNEL_CONFIG := ivan_defconfig
BOARD_KERNEL_IMAGE_NAME := kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_FORCE_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

# Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := \
    kheaders.ko \
    lcd.ko \
    tcp_westwood.ko

# Init
TARGET_INIT_VENDOR_LIB ?= //$(DEVICE_PATH):init_ivan
TARGET_RECOVERY_DEVICE_MODULES ?= init_ivan

# Vibrator
TARGET_VIBRATOR_ALT_SEQ_TYPE := true

# Call proprietary blob setup
include vendor/oplus/ivan/BoardConfigVendor.mk
