DEVICE_PATH := device/huawei/dura
BOARD_VENDOR := huawei

#Dalvik Heap
$(call inherit-product, frameworksnative/build/phone-xhdpi-1024-dalvik-heap.mk)

#TODO: it seems to be finished but make dura-vendor work
$(call inherit-product, vendor/huawei/dura/dura-vendor.mk)

# Kernel
TARGET_KERNEL_CONFIG := dura_defconfig

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

-include vendor/huawei/dura/BoardConfigVendor.mk
