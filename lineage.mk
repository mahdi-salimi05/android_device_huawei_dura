# TODO: Rename all the source to gura like the funny shark that says A

# Release name
PRODUCT_RELEASE_NAME := dura

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from dura device
$(call inherit-product, $(LOCAL_PATH)/device.mk)


# Display
#-- is qhd (720 x 1440)
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1440

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := dura
PRODUCT_MANUFACTURER := huawei
PRODUCT_NAME := lineage_dura
PRODUCT_MODEL := DRA-LX5

PRODUCT_GMS_CLIENTID_BASE := android-huawei
TARGET_VENDOR := huawei
TARGET_VENDOR_PRODUCT_NAME := dura
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=dura \
   BUILD_FINGERPRINT=HUAWEI/DRA-LX5RU/HWDRA-MG:8.1.0/HUAWEIDRA-LX5/1.0.0.124(C10):user/release-keys \
   PRIVATE_BUILD_DESC="DRA-LX5-user 8.1.0 HUAWEIDRA-LX5 1.0.0.124(C10) release-keys"
