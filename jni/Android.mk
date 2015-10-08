LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := seinfo
LOCAL_CFLAGS :=
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libsepol/include \
	$(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
	secmds/seinfo.c

LOCAL_STATIC_LIBRARIES := libapol libqpol libsepol libselinux

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := sesearch
LOCAL_CFLAGS := -std=gnu99
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libsepol/include \
	$(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
	secmds/sesearch.c

LOCAL_STATIC_LIBRARIES := libapol libqpol libsepol

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := sediff

LOCAL_SRC_FILES := \
	secmds/sediff.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

LOCAL_STATIC_LIBRARIES := libpoldiff libapol libqpol

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := sepolicy-inject
LOCAL_CFLAGS :=
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libsepol/include

LOCAL_SRC_FILES := \
	sepolicy-inject/sepolicy-inject.c

LOCAL_STATIC_LIBRARIES := libsepol

include $(BUILD_EXECUTABLE)

$(call import-add-path, $(LOCAL_PATH))
$(call import-module, libpoldiff)
$(call import-module, libapol)
$(call import-module, libqpol)
$(call import-module, libsepol)
$(call import-module, libselinux)
