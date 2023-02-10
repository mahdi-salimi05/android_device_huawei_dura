DEVICE_PATH := device/huawei/dura
BOARD_VENDOR := huawei

# Platform
TARGET_BOARD_PLATFORM := mt6739

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT := cortex-a53


# TODO: Those are modified partitions so its needed to mod them if you are using stock gpt.bin
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_ERECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11859377664

# Partitions types

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

#Dalvik Heap
$(call inherit-product, frameworksnative/build/phone-xhdpi-1024-dalvik-heap.mk)

#TODO: it seems to be finished but make dura-vendor work
$(call inherit-product, vendor/huawei/dura/dura-vendor.mk)

# Kernel
TARGET_KERNEL_CONFIG := dura_defconfig
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage-dtb
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
BOARD_KERNEL_IMAGE_NAME := zImage-dtbTARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm

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
