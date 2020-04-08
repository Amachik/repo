THEOS_DEVICE_IP = 192.168.15.128
ARCHS = arm64 arm64e
TARGET = iphone:clang:13.3:13.3


INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VibroVol

VibroVol_FILES = Tweak.x 
VibroVol_CFLAGS = -fobjc-arc
VibroVol_FRAMEWORKS = UIKit AudioToolbox
VibroVol_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk



SUBPROJECTS += hapdemopref
include $(THEOS_MAKE_PATH)/aggregate.mk
