#
# CyanogenMod product configuration
#

# --------------------------------------------------------------------------------
# Inherit CM stuff
# --------------------------------------------------------------------------------

$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# --------------------------------------------------------------------------------
# Inherit device configuration
# --------------------------------------------------------------------------------

$(call inherit-product, device/samsung/p1/p1.mk)

# --------------------------------------------------------------------------------
# product specific settings
# --------------------------------------------------------------------------------

# ISDB-T support
#TARGET_INITRC_IMPORT += tv.rc
#PRODUCT_COPY_FILES += device/samsung/p1l/tv.rc:root/tv.rc

PRODUCT_NAME := cm_p1l
PRODUCT_DEVICE := p1l
PRODUCT_MODEL := GT-P1000

# kernel
TARGET_KERNEL_SOURCE := kernel/samsung/p1
TARGET_KERNEL_CONFIG := cyanogenmod_$(PRODUCT_DEVICE)_defconfig

# asserts
TARGET_OTA_ASSERT_DEVICE := galaxytab,$(PRODUCT_MODEL)
