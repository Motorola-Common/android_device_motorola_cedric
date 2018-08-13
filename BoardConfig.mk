#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/motorola/potter

TARGET_KERNEL_CONFIG := potter_defconfig

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        #    16384 * 1024 mmcblk0p37
BOARD_CACHEIMAGE_PARTITION_SIZE := 260014080      #   253920 * 1024 mmcblk0p52
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432    #    16484 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3510353920    #  3428080 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26401026048 # 25782252 * 1024 mmcblk0p54  

# Sensor
USE_SENSOR_MULTI_HAL := true
BOARD_USES_MOT_SENSOR_HUB := true
BOARD_USES_CAP_SENSOR_SX9310 := true
MOT_SENSOR_HUB_HW_TYPE_L0 := true
MOT_AP_SENSOR_HW_REARPROX := true
MOT_AP_SENSOR_HW_REARPROX_2 := true
MOT_SENSOR_HUB_HW_AK09912 := true
MOT_SENSOR_HUB_HW_BMI160 := true
MOT_SENSOR_HUB_FEATURE_CHOPCHOP := true
MOT_SENSOR_HUB_FEATURE_LIFT := true
MOT_SENSOR_HUB_FEATURE_PEDO := true
MOT_SENSOR_HUB_FEATURE_LA := true
MOT_SENSOR_HUB_FEATURE_GR := true

# inherit from motorola msm8953-common
-include device/motorola/msm8953-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += $(PLATFORM_PATH)/include

# inherit from the proprietary version
-include vendor/motorola/potter/BoardConfigVendor.mk