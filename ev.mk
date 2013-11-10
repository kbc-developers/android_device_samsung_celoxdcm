# Inherit from hercules device
$(call inherit-product, device/samsung/hercules/device.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/gsm.mk)
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_hercules
PRODUCT_DEVICE := hercules
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SAMSUNG-SGH-T989
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.4/KRT16M/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.4 KRT16M UVMC6 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := potens

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your T-Mobile Galaxy S II\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip


