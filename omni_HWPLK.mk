#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from hwgra device
$(call inherit-product, device/huawei/HWPLK/device.mk)

# must be before including omni part
#TARGET_BOOTANIMATION_SIZE := 1080x720

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE:=HWPLK
PRODUCT_NAME:=omni_HWPLK
PRODUCT_BRAND:=HUAWEI
PRODUCT_MODEL:=PLK-L01
PRODUCT_MANUFACTURER:=HUAWEI


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=HWPLK\
    PRODUCT_NAME=HWPLK \
    BUILD_FINGERPRINT=huawei/HWPLK/HWPLK:6.0.1/MOB31K/362280:userdebug/release-keys \
    PRIVATE_BUILD_DESC="HWPLK-userdebug 6.0.1 MOB31K 24 dev-keys"
