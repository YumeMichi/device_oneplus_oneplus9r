# Copyright (C) 2020 Paranoid Android
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

$(call inherit-product, vendor/oneplus/oneplus9r/oneplus9r-vendor.mk)
$(call inherit-product, device/oneplus/oneplus8/device.mk)

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/oneplus/oneplus9r

# Overlays
PRODUCT_PACKAGES += \
    OnePlus9RFrameworks \
    OnePlus9RSystemUI

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor Service Manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
