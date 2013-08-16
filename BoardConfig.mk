# Inherit from the proprietary version if exists
-include vendor/huawei/u8800pro/BoardConfigVendor.mk
# Inherit from the common msm7x30 definitions
-include device/huawei/msm7x30-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := u8800pro
TARGET_OTA_ASSERT_DEVICE := u8800pro,U8800PRO

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/u8800pro/RIL/

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/huawei/u8800pro/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_u8800pro_defconfig

TARGET_PREBUILT_KERNEL := device/huawei/u8800pro/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8800pro/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 373293056
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184
BOARD_FLASH_BLOCK_SIZE             := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/u8800pro/releasetools/ota_from_target_files

