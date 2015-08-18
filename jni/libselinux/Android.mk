LOCAL_PATH:= $(call my-dir)

common_src_files := \
	src/avc.c \
	src/avc_internal.c \
	src/avc_sidtab.c \
	src/booleans.c \
	src/callbacks.c \
	src/canonicalize_context.c \
	src/checkAccess.c \
	src/check_context.c \
	src/compute_av.c \
	src/compute_create.c \
	src/context.c \
	src/deny_unknown.c \
	src/disable.c \
	src/enabled.c \
	src/fgetfilecon.c \
	src/freecon.c \
	src/fsetfilecon.c \
	src/get_initial_context.c \
	src/getenforce.c \
	src/getfilecon.c \
	src/getpeercon.c \
	src/init.c \
	src/label.c \
	src/label_android_property.c \
	src/lgetfilecon.c \
	src/load_policy.c \
	src/lsetfilecon.c \
	src/mapping.c \
	src/policyvers.c \
	src/procattr.c \
	src/sestatus.c \
	src/setenforce.c \
	src/setfilecon.c \
	src/stringrep.c

common_cflags :=

common_includes := \
	$(LOCAL_PATH)/include/ \
	$(LOCAL_PATH)/src/

##
# libselinux.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libselinux
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes) 
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := $(common_src_files)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)
