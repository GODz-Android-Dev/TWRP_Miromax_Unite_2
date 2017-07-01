USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/micromax/a106/BoardConfigVendor.mk

DEVICE_FOLDER := device/micromax/a106

# Platform
TARGET_BOARD_PLATFORM := mt6582
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := a106

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 943718400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 968884224
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SUPPRESS_EMMC_WIPE := true 
TARGET_PREBUILT_KERNEL := device/micromax/a106/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#CWM and CTR Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery.fstab

BOARD_HAS_MTK := true
# MTK Partitions Defines
MTK_BOOT_DEVICE_NAME := /dev/bootimg
MTK_BOOT_DEVICE_SIZE := 16777216
MTK_RECOVERY_DEVICE_NAME := /dev/recovery
MTK_RECOVERY_DEVICE_SIZE := 16777216
MTK_UBOOT_DEVICE_NAME := /dev/uboot
MTK_UBOOT_DEVICE_SIZE := 393216
MTK_NVRAM_DEVICE_NAME := /dev/nvram
MTK_NVRAM_DEVICE_SIZE := 5242880
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
DEVICE_RESOLUTION := 480x800
#BOARD_UMS_LUNFILE := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun0/file"
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness

#TWRP
TW_THEME := portrait_hdpi
TW_SDEXT_NO_EXT4 := true
TW_EXCLUDE_MTP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/power_supply/battery/batt_temp"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
SP1_NAME := "uboot"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "nvram"
SP2_DISPLAY_NAME := "nvram"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0
TW_INCLUDE_FB2PNG := true

#flipped screen

#BOARD_HAS_FLIPPED_SCREEN := true
#RECOVERY_TOUCHSCREEN_SWAP_XY := true

#RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
#BOARD_HAS_FLIPPED_SCREEN := true

# EGL settings
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true

# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=1 \
persist.sys.usb.config=mass_storage,adb \
ro.mount.fs=EXT4

#PhilZ Touch build flags for MTK
TARGET_COMMON_NAME := a106
BOARD_USE_MTK_LAYOUT := true
BOARD_USE_NTFS_3G := false
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TARGET_DEVICE := a106
BRIGHTNESS_SYS_FILE := /sys/class/leds/lcd-backlight/brightness
BOARD_CUSTOM_BOOTIMG_MK := device/micromax/a106/bootimg.mk
