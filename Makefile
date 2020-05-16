INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Muser

Muser_FILES = Tweak.x
Muser_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
