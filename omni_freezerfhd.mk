$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/freezerfhd/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/bq/freezerfhd/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := freezerfhd
PRODUCT_NAME := omni_freezerfhd
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris M10 FHD
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Aquaris_M10_FHD PRODUCT_NAME=Aquaris_M10_FHD
