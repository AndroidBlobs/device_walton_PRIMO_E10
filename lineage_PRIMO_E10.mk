# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from PRIMO_E10 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := walton
PRODUCT_DEVICE := PRIMO_E10
PRODUCT_MANUFACTURER := walton
PRODUCT_NAME := lineage_PRIMO_E10
PRODUCT_MODEL := PRIMO E10

PRODUCT_GMS_CLIENTID_BASE := android-walton
TARGET_VENDOR := walton
TARGET_VENDOR_PRODUCT_NAME := PRIMO_E10
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k80hd_bsp_fwv_512m-user 8.1.0 O11019 1563265178 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := WALTON/PRIMO_E10/PRIMO_E10:8.1.0/O11019/1563265178:user/release-keys
