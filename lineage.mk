# Release name
PRODUCT_RELEASE_NAME := dura

# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#TODO: add this file
# Inherit device configuration
#$(call inherit-product, device/huawei/dura/device.mk)

# Display
#-- is qhd (960 x 540)
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1440

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dura
PRODUCT_NAME := lineage_dura
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Huawei Y5 2018
PRODUCT_MANUFACTURER := huawei

#TODO: What is this?
#PRODUCT_GMS_CLIENTID_BASE := android-samsung

#TODO: Update fingerprint (it is the j2 prime for some reason lol)
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=grandpplte \
   BUILD_FINGERPRINT=samsung/grandppltedx/grandpplte:6.0.1/MMB29T/G532DXU1ASA5:user/release-keys \
   PRIVATE_BUILD_DESC="grandppltedx-user 6.0.1 MMB29T G532GDXU1ASA5 release-keys"
