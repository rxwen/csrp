LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcsrp

LOCAL_SRC_FILES := srp.c

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES := \
	libopenssl

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := test_srp

LOCAL_SRC_FILES := test_srp.c

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES := \
	libcsrp

include $(BUILD_EXECUTABLE)
