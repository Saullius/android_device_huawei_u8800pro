
USE_CAMERA_STUB := false

# Inherit from the proprietary version if exists
-include vendor/huawei/u8800pro/BoardConfigVendor.mk

# Platform
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_NO_HW_VSYNC := true

TARGET_BOARD_PLATFORM := msm7630_surf
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := u8800pro
TARGET_OTA_ASSERT_DEVICE := u8800pro,U8800PRO

TARGET_COMPRESS_MODULE_SYMBOLS := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
BOARD_ALWAYS_INSECURE := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DHAVE_ARM_TLS_REGISTER
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x30
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7630
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x30_SURF
COMMON_GLOBAL_CFLAGS += -DTARGET7x30
COMMON_GLOBAL_CFLAGS += -DTARGET7630
COMMON_GLOBAL_CFLAGS += -DTARGET7630_SURF
COMMON_GLOBAL_CFLAGS += -DTARGET7x30_SURF
BOARD_USE_SKIA_LCDTEXT := true

COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS

# Audio
#BOARD_PROVIDES_LIBAUDIO := true
#BOARD_USES_QCOM_AUDIO_LPA := true
#BOARD_USES_QCOM_AUDIO_SPEECH := true
#TARGET_USES_QCOM_LPA := true
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_QCOM_AUDIO_V2 := true
#BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true
#BOARD_USES_QCOM_AUDIO_CALIBRATION := true
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA  
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_SPEECH
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_CALIBRATION
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_VOIPMUTE
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_RESETALL
BOARD_NEEDS_MEMORYHEAPPMEM := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Graphics
DCHECK_FOR_EXTERNAL_FORMAT := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
TARGET_USES_C2D_COMPOSITION := true
#TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := true
TARGET_FORCE_CPU_UPLOAD := true
#BOARD_USES_QCNE := true
#TARGET_USES_SF_BYPASS := false

#TARGET_HAVE_TSLIB := true
BOARD_EGL_CFG := device/huawei/u8800pro/egl.cfg
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_NO_RGBX_8888 := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL = true
WEBCORE_INPAGE_VIDEO := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/honor
TARGET_KERNEL_CONFIG := shendu_u8800pro_defconfig

#TARGET_PREBUILT_KERNEL := device/huawei/u8800pro/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8800pro/kernel

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
#HOSTAPD_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/dhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/wifi/nvram.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_USE_SERNUM_FOR_MAC := true
# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8800pro
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

# lights
TARGET_PROVIDES_LIBLIGHTS := true

# FM
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4329
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

# File System
TARGET_USERIMAGES_USE_EXT4 := true

#BOARD_MMC_DEVICE := /dev/block/mmcblk0
#BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
#BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p14
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04200000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x05300000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 264634368 #256MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 274464768 #1GB
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5242880 #5MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728 #128MB
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 4096000 #4000KB
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 14


# Recovery

BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_CHARGEMODE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
TARGET_RECOVERY_INITRC := device/huawei/u8800pro/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/huawei/u8800pro/recovery_recovery.fstab
BOARD_RECOVERY_RMT_STORAGE := true

# Custom releasetools for old partition table.
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/u8800pro/releasetools/ota_from_target_files

# ETC
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8800pro/include



