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

$(call inherit-product, device/samsung/p1l/full_p1l.mk)

# --------------------------------------------------------------------------------
# product specific settings
# --------------------------------------------------------------------------------

# ISDB-T support
#TARGET_INITRC_IMPORT += tv.rc
#PRODUCT_COPY_FILES += device/samsung/p1l/tv.rc:root/tv.rc

PRODUCT_NAME := cm_p1l
PRODUCT_DEVICE := p1l
PRODUCT_MODEL := GT-P1000L

# Set build fingerprint / ID / product name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
       PRODUCT_NAME=GT-P1000L \
       TARGET_DEVICE=GT-P1000L \
       BUILD_FINGERPRINT=samsung/GT-P1000L/GT-P1000L:2.3.6/GINGERBREAD/VIJR2:user/release-keys \
       PRIVATE_BUILD_DESC="GT-P1000L-user 2.3.6 GINGERBREAD VIJR2 release-keys"
