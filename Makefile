ARCHS = arm64

TARGET := iphone:clang:13.6:7.0

INSTALL_TARGET_PROCESSES = MobileSMS

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MessagesTextChanger

MessagesTextChanger_FILES = Tweak.x
MessagesTextChanger_CFLAGS = -fobjc-arc
MessagesTextChanger_LIBRARIES = cosmo
MessagesTextChanger_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
