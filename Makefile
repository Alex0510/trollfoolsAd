THEOS ?= /opt/theos
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TrollFoolsAdRemover
TrollFoolsAdRemover_FILES = Tweak.xm
TrollFoolsAdRemover_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk