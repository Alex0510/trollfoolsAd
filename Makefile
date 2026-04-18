THEOS ?= /opt/theos
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TrollFoolsAdRemover
# 使用 .x 扩展名（不经过 Logos 预处理）
TrollFoolsAdRemover_FILES = Tweak.x
TrollFoolsAdRemover_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk