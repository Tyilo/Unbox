export SDKVERSION = 9.2
export ARCHS = armv7 arm64

include theos/makefiles/common.mk

LIBRARY_NAME = libunbox
libunbox_FILES = UBDelegate.m UBClient.m
libunbox_PRIVATE_FRAMEWORKS = AppSupport

include $(THEOS_MAKE_PATH)/library.mk
SUBPROJECTS += unboxd
include $(THEOS_MAKE_PATH)/aggregate.mk
