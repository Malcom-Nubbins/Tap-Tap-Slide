LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_DISABLE_FORMAT_STRING_CHECKS := true



LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
				   ../../Classes/Ball.cpp \
				   ../../Classes/Brick.cpp \
				   ../../Classes/CreditsScene.cpp \
				   ../../Classes/GameMainScene.cpp \
				   ../../Classes/Player.cpp \
				   ../../Classes/PowerUp.cpp \
				   ../../Classes/SoundManager.cpp \
				   ../../Classes/SplashScreenScene.cpp \
				   ../../Classes/GameManager.cpp \
				   ../../Classes/Death.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,./prebuilt-mk)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
