#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/zuma/overlay-lineage

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/zuma/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

# ViPER4AndroidFX
$(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)

# Linker config
PRODUCT_VENDOR_LINKER_CONFIG_FRAGMENTS += \
    device/google/zuma/linker.config.json

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

PRODUCT_COPY_FILES += \
    device/google/zuma/conf/disable_pds.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/disable_pds.sh

# Touch
include hardware/google/pixel/touch/device.mk
