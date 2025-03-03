#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SOONG_NAMESPACES += \
    device/qcom/common/vendor/media-5.10

TARGET_MEDIA_COMPONENT_VARIANT := media-5.10

# Inherit configuration from the HAL.
$(call inherit-product-if-exists, hardware/qcom/media-5.10/product.mk)

# Enable 64-bit mediaserver
PRODUCT_VENDOR_PROPERTIES += \
    ro.mediaserver.64b.enable=true

<<<<<<< HEAD:vendor/media/qti-media.mk
=======
PRODUCT_COPY_FILES += \
    device/qcom/common/vendor/media-5.10/media_codecs_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_audio.xml

>>>>>>> 40072be3 (vendor: media: Rename to media-5.10):vendor/media-5.10/qti-media-5.10.mk
# Packages
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.2.vendor \
    libavservices_minijail.vendor

# Properties
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    ro.media.recorder-max-base-layer-fps=60

# Media Init
PRODUCT_COPY_FILES += \
    device/qcom/common/vendor/media-5.10/init.qti.media.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.media.sh

# Get non-open-source specific aspects.
$(call inherit-product-if-exists, vendor/qcom/common/vendor/media-5.10/media-5.10-vendor.mk)
