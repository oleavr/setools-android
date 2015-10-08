LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libpoldiff

LOCAL_SRC_FILES := \
	attrib_diff.c \
	avrule_diff.c \
	bool_diff.c \
	cat_diff.c \
	class_diff.c \
	level_diff.c \
	poldiff.c \
	range_diff.c \
	range_trans_diff.c \
	rbac_diff.c \
	role_diff.c \
	terule_diff.c \
	type_diff.c \
	type_map.c \
	user_diff.c \
	util.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include

#LOCAL_STATIC_LIBRARIES := libbz2 libsepol libselinux

include $(BUILD_STATIC_LIBRARY)
