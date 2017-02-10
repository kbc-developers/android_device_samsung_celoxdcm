$(call inherit-product, device/samsung/celoxdcm/full_celoxdcm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_DEVICE := celoxdcm
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SC-03D
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SC-03D TARGET_DEVICE=SC-03D BUILD_FINGERPRINT="samsung/SC-03D/SC-03D:7.0.0/NBD90Z/OMMP5:user/release-keys" PRIVATE_BUILD_DESC="SC-03D-user 7.0.0 NBD90Z OMLPH release-keys"

PRODUCT_NAME := cm_celoxdcm
PRODUCT_DEVICE := celoxdcm
