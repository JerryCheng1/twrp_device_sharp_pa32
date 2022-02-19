LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),pa32)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
