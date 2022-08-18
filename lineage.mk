#TODO: Rename all the source to gura like the funny shark that says A

# Release name
PRODUCT_RELEASE_NAME := dura

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#TODO: add this file
# Inherit device configuration
#$(call inherit-product, device/huawei/dura/device.mk)

# Display
#-- is qhd (720 x 1440)
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1440

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dura
PRODUCT_NAME := lineage_dura
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Huawei Y5 2018 lite
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

#TODO: Update fingerprint (this is based on the j2 prime for some reason lol)
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=dura \
   BUILD_FINGERPRINT=huawei/omni_hwdra/hwdra:8.1.0/OPM8.181105.002/yu02131158:eng/test-keys \
   PRIVATE_BUILD_DESC="omni_hwdra-eng 8.1.0 OPM8.181105.002 eng.yu.20210213.115854 test-keys"
