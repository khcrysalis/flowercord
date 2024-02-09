ARCHS = armv7 arm64 arm64e
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Discord
FINALPACKAGE = 1

include ~/theos/makefiles/common.mk

TWEAK_NAME = FlowerCord

FlowerCord_FILES = $(wildcard Hooks/*.m) $(wildcard Hooks/*.xm)
FlowerCord_CFLAGS = -fobjc-arc -Wno-module-import-in-extern-c

include ~/theos/makefiles/tweak.mk
