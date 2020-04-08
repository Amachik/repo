include $(THEOS)/makefiles/common.mk
ARCHS = arm64 arm64e
TARGET = iphone:clang:13.3:13.3
BUNDLE_NAME = hapdemopref

hapdemopref_FILES = PDPRootListController.m
hapdemopref_INSTALL_PATH = /Library/PreferenceBundles
hapdemopref_FRAMEWORKS = UIKit
hapdemopref_PRIVATE_FRAMEWORKS = Preferences
hapdemopref_CFLAGS = -fobjc-arc
hapdemopref_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/vibrovol.plist$(ECHO_END)
