LOCAL_PATH:= $(call my-dir)

##
# libselinux.a
#

include $(CLEAR_VARS)
LOCAL_MODULE:= libselinux
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/ $(LOCAL_PATH)/../libsepol/include/
LOCAL_SRC_FILES := \
	src/booleans.c \
	src/canonicalize_context.c \
	src/disable.c \
	src/enabled.c \
	src/fgetfilecon.c \
	src/fsetfilecon.c \
	src/getenforce.c \
	src/getfilecon.c \
	src/getpeercon.c \
	src/lgetfilecon.c \
	src/load_policy.c \
	src/lsetfilecon.c \
	src/policyvers.c \
	src/procattr.c \
	src/setenforce.c \
	src/setfilecon.c \
	src/context.c \
	src/mapping.c \
	src/stringrep.c \
	src/compute_create.c \
	src/compute_av.c \
	src/avc.c \
	src/avc_internal.c \
	src/avc_sidtab.c \
	src/get_initial_context.c \
	src/checkAccess.c \
	src/sestatus.c \
	src/deny_unknown.c \
	src/freecon.c \
	src/setrans_client.c

# 1003 corresponds to auditd, from system/core/logd/event.logtags
LOCAL_CFLAGS := -DAUDITD_LOG_TAG=1003
include $(BUILD_STATIC_LIBRARY)
