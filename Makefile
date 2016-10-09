export SDKVERSION = 9.3
export SYSROOT = $(THEOS)/sdks/iPhoneOS9.3.sdk

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libunbox
libunbox_FILES = UBDelegate.m UBClient.m
libunbox_PRIVATE_FRAMEWORKS = AppSupport

include $(THEOS_MAKE_PATH)/library.mk
SUBPROJECTS += unboxd
include $(THEOS_MAKE_PATH)/aggregate.mk
