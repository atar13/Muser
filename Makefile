export ARCHS = arm64 arm64e
export SDKVERSION = 13.3

INSTALL_TARGET_PROCESSES = Music

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Muser

Muser_FILES = Tweak.x
Muser_CFLAGS = -fobjc-arc

# export TARGET = iphone:13.3:13.0
# ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk
