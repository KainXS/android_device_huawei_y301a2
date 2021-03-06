# Copyright (C) 2015 The Android Open Source Project
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

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/huawei/y301a2

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := device/huawei/y301a2
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.class_core.sh:recovery/root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.class_main.sh:recovery/root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.early_boot.sh:recovery/root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.ril.sh:recovery/root/init.qcom.ril.sh\
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.sh:recovery/root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.syspart_fixup.sh:recovery/root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.usb.rc:recovery/root/init.qcom.usb.rc\
    $(LOCAL_PATH)/rootdir/recovery/init.qcom.usb.sh:recovery/root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/recovery/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_01.png:recovery/root/res/images/480x800/battery_01.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_02.png:recovery/root/res/images/480x800/battery_02.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_03.png:recovery/root/res/images/480x800/battery_03.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_04.png:recovery/root/res/images/480x800/battery_04.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_05.png:recovery/root/res/images/480x800/battery_05.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_06.png:recovery/root/res/images/480x800/battery_06.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_07.png:recovery/root/res/images/480x800/battery_07.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_08.png:recovery/root/res/images/480x800/battery_08.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_09.png:recovery/root/res/images/480x800/battery_09.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_10.png:recovery/root/res/images/480x800/battery_10.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/battery_11.png:recovery/root/res/images/480x800/battery_11.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/bg.png:recovery/root/res/images/480x800/bg.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_00.png:recovery/root/res/images/480x800/number_00.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_01.png:recovery/root/res/images/480x800/number_01.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_02.png:recovery/root/res/images/480x800/number_02.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_03.png:recovery/root/res/images/480x800/number_03.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_04.png:recovery/root/res/images/480x800/number_04.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_05.png:recovery/root/res/images/480x800/number_05.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_06.png:recovery/root/res/images/480x800/number_06.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_07.png:recovery/root/res/images/480x800/number_07.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_08.png:recovery/root/res/images/480x800/number_08.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_09.png:recovery/root/res/images/480x800/number_09.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_10.png:recovery/root/res/images/480x800/number_10.png \
    $(LOCAL_PATH)/rootdir/recovery/res/images/480x800/number_wait.png:recovery/root/res/images/480x800/number_wait.png


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/sbin/charge:recovery/root/sbin/charge \
    $(LOCAL_PATH)/rootdir/recovery/sbin/charge.sh:recovery/root/sbin/charge.sh \
    $(LOCAL_PATH)/rootdir/recovery/sbin/libqmi_oem_main:recovery/root/sbin/libqmi_oem_main \
    $(LOCAL_PATH)/rootdir/recovery/sbin/resize2fs_s:recovery/root/sbin/resize2fs_s \
    $(LOCAL_PATH)/rootdir/recovery/sbin/rmt_oeminfo:recovery/root/sbin/rmt_oeminfo \
    $(LOCAL_PATH)/rootdir/recovery/sbin/rmt_storage:recovery/root/sbin/rmt_storage

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/tp/1191601.img:recovery/root/tp/1191601.img \
    $(LOCAL_PATH)/rootdir/recovery/tp/1469183_btn.img:recovery/root/tp/1469183_btn.img 

PRODUCT_PACKAGES += \
    fs_mgr \
    resize2fs \
    mkfs.f2fs

PRODUCT_PACKAGES += \
    busybox

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_y301a2
PRODUCT_DEVICE := y301a2
