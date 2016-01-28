LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := cocos_extension_static

LOCAL_MODULE_FILENAME := libextension

LOCAL_SRC_FILES := \
GUI/CCControlExtension/RepeatNode/Repeat9Sprite.cpp \
GUI/CCControlExtension/RepeatNode/RepeatNode.cpp \
GUI/CCControlExtension/CCControl.cpp \
GUI/CCControlExtension/CCControlButton.cpp \
GUI/CCControlExtension/CCControlColourPicker.cpp \
GUI/CCControlExtension/CCControlHuePicker.cpp \
GUI/CCControlExtension/CCControlPotentiometer.cpp \
GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
GUI/CCControlExtension/CCControlSlider.cpp \
GUI/CCControlExtension/CCControlStepper.cpp \
GUI/CCControlExtension/CCControlSwitch.cpp \
GUI/CCControlExtension/CCControlUtils.cpp \
GUI/CCControlExtension/CCInvocation.cpp \
GUI/CCScrollView/CCScrollView.cpp \
GUI/CCScrollView/CCTableView.cpp \
GUI/CCScrollView/CCTableViewCell.cpp \
gaf/GAFAnimationFrame.cpp \
gaf/GAFAnimationSequence.cpp \
gaf/GAFAsset.cpp \
gaf/GAFAssetTextureManager.cpp \
gaf/GAFCachedTexture.cpp \
gaf/GAFFile.cpp \
gaf/GAFFilterData.cpp \
gaf/GAFFilterManager.cpp \
gaf/GAFLoader.cpp \
gaf/GAFMask.cpp \
gaf/GAFMovieClip.cpp \
gaf/GAFObject.cpp \
gaf/GAFPrecompiled.cpp \
gaf/GAFQuadCommand.cpp \
gaf/GAFShaderManager.cpp \
gaf/GAFSoundInfo.cpp \
gaf/GAFSprite.cpp \
gaf/GAFStream.cpp \
gaf/GAFSubobjectState.cpp \
gaf/GAFTextData.cpp \
gaf/GAFTextField.cpp \
gaf/GAFTextureAtlas.cpp \
gaf/GAFTextureAtlasElement.cpp \
gaf/GAFTimeline.cpp \
gaf/GAFTimelineAction.cpp \
gaf/PrimitiveDeserializer.cpp \
gaf/TagDefineAnimationFrames.cpp \
gaf/TagDefineAnimationFrames2.cpp \
gaf/TagDefineAnimationMasks.cpp \
gaf/TagDefineAnimationObjects.cpp \
gaf/TagDefineAtlas.cpp \
gaf/TagDefineAtlas3.cpp \
gaf/TagDefineNamedParts.cpp \
gaf/TagDefineSequences.cpp \
gaf/TagDefineSounds.cpp \
gaf/TagDefineStage.cpp \
gaf/TagDefineTextField.cpp \
gaf/TagDefineTimeline.cpp \
physics-nodes/CCPhysicsDebugNode.cpp \
physics-nodes/CCPhysicsSprite.cpp

LOCAL_STATIC_LIBRARIES := cocos2dx_internal_static

ifeq ($(CC_USE_CURL),1)
LOCAL_SRC_FILES += \
assets-manager/AssetsManager.cpp \
assets-manager/AssetsManager.cpp \
assets-manager/Downloader.cpp \
assets-manager/Manifest.cpp \
assets-manager/AssetsManagerEx.cpp \
assets-manager/CCEventAssetsManagerEx.cpp \
assets-manager/CCEventListenerAssetsManagerEx.cpp \

LOCAL_STATIC_LIBRARIES += cocos_curl_static
endif

ifeq ($(CC_USE_PHYSICS),1)
LOCAL_STATIC_LIBRARIES += box2d_static
endif

LOCAL_CXXFLAGS += -fexceptions

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/. \
                           $(LOCAL_PATH)/.. \
                           $(LOCAL_PATH)/GUI/CCControlExtension \
                           $(LOCAL_PATH)/GUI/CCScrollView 
                    
include $(BUILD_STATIC_LIBRARY)
