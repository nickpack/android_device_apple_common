LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    ril.c \
    atchannel.c \
    misc.c \
    at_tok.c

LOCAL_SHARED_LIBRARIES := \
    libcutils libutils libril

# for asprinf
LOCAL_CFLAGS := -D_GNU_SOURCE

LOCAL_C_INCLUDES := $(KERNEL_HEADERS)

#build shared library
LOCAL_SHARED_LIBRARIES += libcutils libutils
LOCAL_LDLIBS += -lpthread
LOCAL_CFLAGS += -DRIL_SHLIB
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE:= libril.xmm6180
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := eng
include $(BUILD_SHARED_LIBRARY)