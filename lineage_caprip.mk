# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from caprip device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := caprip
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_caprip
PRODUCT_MODEL := moto g(30)

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := caprip
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="caprip_retail-user 11 RRCS31.Q1-3-48-2 2eae22 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/caprip_retail/caprip:11/RRCS31.Q1-3-48-2/2eae22:user/release-keys
