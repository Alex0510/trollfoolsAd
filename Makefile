# 使用环境变量 THEOS，如果未设置则默认 /opt/theos
THEOS ?= /opt/theos
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TrollFoolsAdRemover
TrollFoolsAdRemover_FILES = Tweak.xm
TrollFoolsAdRemover_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk