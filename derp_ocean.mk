# Inherit some common Derp stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

#BUILD_FINGERPRINT := motorola/derp/ocean:10/QPOS30.52-29-12/401fd:user/release-keys
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := ocean
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g(7) power
PRODUCT_NAME := derp_ocean

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ocean \
    PRIVATE_BUILD_DESC="ocean-user 10 QPOS30.52-29-12 401fd release-keys"

# Boot animation
scr_resolution := 720
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true