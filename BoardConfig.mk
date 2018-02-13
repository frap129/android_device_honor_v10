# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := kirin970

# Platform
TARGET_BOARD_PLATFORM := kirin970
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ARCH_ARM_HAVE_TLS_REGISTER := true

# Ramdisk
BOARD_KERNEL_CMDLINE := buildvariant=user androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_NAME := 
BOARD_PAGE_SIZE := 2048
BOARD_HASH_TYPE := sha1
BOARD_OS_VERSION := 8.0.0
BOARD_OS_PATCH_LEVEL := 2017-10
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := device/honor/kirin970/Image.gz

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 38554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE	:= 23622320128
BOARD_USERDATAIMAGE_PARTITION_SIZE	:= 478687526912
BOARD_CACHEIMAGE_PARTITION_SIZE		:= 134217728
BOARD_FLASH_BLOCK_SIZE			:= 4096
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR	:= true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB565"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/Battery"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.gs6/lun.0/file"
TW_MAX_BRIGHTNESS := 7992
TW_DEFAULT_BRIGHTNESS := 1573
TW_INCLUDE_NTFS_3G := true

# No love for the wicked (device ships with N)
TW_EXCLUDE_SUPERSU := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Encryption support
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true

# Abuse unified device and system.prop to match props for OTA compatibility
TARGET_UNIFIED_DEVICE := true
