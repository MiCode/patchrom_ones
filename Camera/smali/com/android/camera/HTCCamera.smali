.class public Lcom/android/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/ISettingsOwner;
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCamera$30;,
        Lcom/android/camera/HTCCamera$TVDisplayListener;,
        Lcom/android/camera/HTCCamera$MainHandler;
    }
.end annotation


# static fields
.field public static final APP_LAUNCH_RESTRICT:I = 0x54

.field public static final CAMERA_THREAD_RUNNING:I = 0x2776

.field public static final COUNT_DOWN_SELFTIMER:I = 0x5

.field public static final DEVICE_ORIENTATION_UNKNOWN:I = -0x1

.field public static final DO_CREATE_RESUME_AFTER_PREVIEW:I = 0x2d

.field public static final ENABLE_GARBAGE_COLLECTION:I = 0x38

.field public static final ENABLE_SENSOR_FOCUS:I = 0x1e

.field public static final FOCUSING_NO_ACTION:I = 0x1

.field public static final FOCUSING_PRESS_CAPTURE:I = 0x3

.field public static final FOCUSING_PRESS_RECORD:I = 0x4

.field public static final FOCUSING_TAP_CAPTURE:I = 0x2

.field public static final HTC_CAM_SWITCH_CHANGE:I = 0xe

.field public static final HW_3D_BUTTON_SWITCH:I = 0x48

.field public static final INTENT_ACTION_ALBUM:Ljava/lang/String; = "FROM_CAMERA"

.field private static final INTENT_KEY_JPEG_DATA:Ljava/lang/String; = "jpeg_data"

.field private static final INTENT_KEY_LAST_FILE_MIME:Ljava/lang/String; = "camera_last_file_mime"

.field private static final INTENT_KEY_LAST_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field private static final INTENT_KEY_ORIENTATION:Ljava/lang/String; = "camera_orientation"

.field public static final INTENT_MODE_CAMCORDER:Ljava/lang/String; = "comcorder"

.field public static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final INTENT_PREVIEW_CAPTURE:Ljava/lang/String; = "capture"

.field public static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field public static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field public static final LONG_PRESS_AREA:I = 0xf

.field public static final LONG_PRESS_PERIOD:J = 0x190L

.field public static final MENU_3D_CAMERA_SWITCH:I = 0x4f

.field private static final MSG_COMPLETE_CAPTURE:I = 0x277a

.field private static final MSG_INVOKE:I = 0x27d8

.field private static final MSG_LEAVE_QUICK_LAUNCH_STATE:I = 0x277b

.field private static final MSG_SHOW_TOAST_UI:I = 0x277c

.field private static final MSG_SHOW_TOAST_UI_DONE:I = 0x277d

.field public static final NO_FOCUSING:I = 0x0

.field public static final PANEL_FADEOUT_TIMEOUT:I = 0x1f40

.field public static final SCREEN_SAVE:I = 0x24

.field public static final SHOW_3D_HINT:I = 0x50

.field public static final SHOW_FOCUS_END:I = 0x53

.field public static final SHOW_TOAST:I = 0x25

.field private static final SHOW_TOAST_UI_DELAY:I = 0x3e8

.field public static final STOP_RECORDING_INDICATOR:I = 0x4

.field public static final SWITCH_3D_PREVIEW_READY:I = 0x49

.field private static final TAG:Ljava/lang/String; = "HTCCamera"

.field private static final TIMEOUT_QUICK_LAUNCH_STATE:I = 0x1f4

.field private static final TOAST_SHOWN_DURATION:I = 0x3e8

.field public static final TRIGGER_STOP_RECORD:I = 0x52

.field public static bFocusFromPress:Z

.field public static bHoldFocusKey:Z

.field private static mBlock3DSwitch:Z

.field private static mIsSelfPortraitTask:Z

.field private static mIsWaitKeyguardBeforePreview:Z


# instance fields
.field public Display_Orientation:I

.field public SCREEN_DELAY:I

.field public final accelerometerValues:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<[F>;"
        }
    .end annotation
.end field

.field public final actionScreenCloseReason:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field public final actionScreenState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final activatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoDetectedScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCancelingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private bCancelFocus:Z

.field public final cameraMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraType:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonLongPressedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonPressedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonReleasedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final closingMenuItemClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Landroid/net/ConnectivityManager;

.field public final currentEffect:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final deactivatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceOrientation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final effectAppliedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectApplyingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectCenter:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final effectListUpdatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectList;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectPanelState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final elapsedRecordingSeconds:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final externalCommendReceivedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoFocusMode;",
            ">;"
        }
    .end annotation
.end field

.field public final focusPointUpdateEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field public final hasDialog:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasFlash:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasPopupBubble:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAccelerometerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPaused:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPausing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCameraThreadRunning:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIBlocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIOpen:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFlashDisabled:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFocusKeyPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFocusUIShowing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isKeyguardLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLowBatteryTemperature:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLowPower:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isMirrorMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarting:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isQuickLaunchState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRemainingCounterVisible:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRotationLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isZoomLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private keep_backgroundDataSetting:Z

.field public final keyDownEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final keyUpEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m3DButtonStatus:I

.field private final m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

.field private m3DOptimalLandscape:Z

.field private m3DPreviewReady:Z

.field private m3DStatusInitialized:Z

.field private m3DTriggerCapture:Z

.field mActionPerformedOnPreviewSurfaceCreated:Z

.field private mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private mActionScreenDisableCounter:I

.field private mActivityOnPause:Z

.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

.field public mAutoUploader:Lcom/android/camera/AutoUploader;

.field private mBlockPowerWarning:Z

.field private mCameraHandler:Landroid/os/Handler;

.field mCameraThread:Lcom/android/camera/CameraThread;

.field private mCanGSensorEnabled:Z

.field private mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

.field private mCaptureUiContainer:Landroid/view/ViewGroup;

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

.field private mComponentManager:Lcom/android/camera/component/UIComponentManager;

.field private mCountDownEndSoundHandle:Lcom/android/camera/Handle;

.field private mCountDownSoundHandle:Lcom/android/camera/Handle;

.field private mDialog:Landroid/app/Dialog;

.field private final mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mEffectManager:Lcom/android/camera/effect/EffectManager;

.field private mEnableSensorFocus:Z

.field private mFaceNumber:I

.field private mFlashDisableCounter:I

.field private mFocusPos_X:I

.field private mFocusPos_Y:I

.field private mFocusingSoundHandle:Lcom/android/camera/Handle;

.field public mFocusingState:I

.field private mForce2DMode:Z

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private mGSensorUsageCounter:I

.field private mIdle:Z

.field private mIntentManager:Lcom/android/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCaptureUiInitialized:Z

.field private mIsFirstOrientationReceived:Z

.field private mIsOnResumeCompleted:Z

.field private mIsPowerWarning:Z

.field private mIsSipExist:Z

.field private volatile mIsSurfaceAvailable:Z

.field private mIsTouchScreen:Z

.field private mIsUIReady:Z

.field private mIsUpdatingStorageSlotSetting:Z

.field private final mKeyguardReceiver:Landroid/content/BroadcastReceiver;

.field private final mLastTouchFocusPoint:Landroid/graphics/Point;

.field private mLocationHandler:Lcom/android/camera/LocationHandler;

.field mMainThread:Ljava/lang/Thread;

.field private mNeed_doOnResume:Z

.field private mNeed_unregisterReceiver:Z

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingTakingPictureStartTime:Ljava/lang/Long;

.field private mPopupBubbleCount:I

.field private final mPrepareActionScreenRunnable:Ljava/lang/Runnable;

.field private mPreparedActionScreenSessionID:J

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

.field private mRecordingBlockHandle:Lcom/android/camera/Handle;

.field private mRecordingLockHandle:Lcom/android/camera/Handle;

.field private mRotationManager:Lcom/android/camera/IUIRotationManager;

.field private final mSIPReceiver:Landroid/content/BroadcastReceiver;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSelfTimerDisableCounter:I

.field private mSensorFocusDisabledCounter:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionID:J

.field private mSettings:Lcom/android/camera/CameraSettings;

.field private mStartCountTime:J

.field private mStartMode:Lcom/android/camera/CameraStartMode;

.field private mStartTapCapture:Z

.field private mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

.field private volatile mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceStateSyncRoot:Ljava/lang/Object;

.field private mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

.field private mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

.field private mTakingPictureBlockHandle:Lcom/android/camera/Handle;

.field private mTakingPictureLockHandle:Lcom/android/camera/Handle;

.field mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

.field private mToast:Lcom/android/camera/rotate/RotateToast;

.field private mTouchFocusDisabledCounter:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateCountDuration:J

.field private final mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

.field private mZoomLockCounter:I

.field m_CancelFocusFromTouch:Z

.field m_IsToastShownEnd:Z

.field m_NeedTriggerRecord:Z

.field public final mediaScannerFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final newIntentEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final pausingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOutsideTouchEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final previewStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field public final previewSurfaceDestroyedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field public final queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final queryMediaToSetAsEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final queryMediaToShareEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final queryPreviewSurfaceHitRectEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public final recordingState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public final resetToDefaultEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final resolutionSelectedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final restartingCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final resumingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public final selfFinishingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final selfTimerCountDownEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final selfTimerValue:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/SelfTimerValue;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsMenuState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusEndEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusFailEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusSucessEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final stoppingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final storageEjectedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageMountedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public final storageUnmountedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final takingPictureState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public final thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ThumbnailButtonEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final touchPreviewEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 409
    sput-boolean v0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 420
    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    .line 425
    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 469
    sput-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 471
    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v1, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x4

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 892
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 170
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 172
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    .line 201
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    .line 209
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 214
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 330
    new-instance v0, Lcom/android/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$1;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v0, Lcom/android/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$2;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    .line 344
    new-instance v0, Lcom/android/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$3;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    .line 391
    iput v12, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    .line 392
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    .line 394
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 396
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 399
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 405
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    .line 407
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    .line 411
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    .line 413
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    .line 415
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 417
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 428
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    .line 434
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 438
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 442
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 444
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 447
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 451
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 459
    iput v12, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 464
    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    .line 465
    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    .line 466
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    .line 467
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    .line 470
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    .line 473
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 476
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    .line 479
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 481
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    .line 483
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    .line 488
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    .line 490
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    .line 501
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 504
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 505
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    .line 508
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 511
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 514
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 520
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 521
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    .line 529
    new-instance v0, Lcom/android/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$4;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    .line 3031
    new-instance v0, Lcom/android/camera/HTCCamera$11;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$11;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    .line 3060
    new-instance v0, Lcom/android/camera/HTCCamera$12;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$12;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    .line 3075
    new-instance v0, Lcom/android/camera/HTCCamera$13;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$13;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    .line 3097
    new-instance v0, Lcom/android/camera/HTCCamera$14;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$14;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 7670
    new-instance v0, Lcom/android/camera/HTCCamera$28;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$28;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 893
    const-string v0, "HTCCamera"

    const-string v2, "Constructor() - start"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v0, "HTCCamera"

    const-string v2, "Disable GC"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-static {v12}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 900
    new-instance v0, Lcom/android/camera/debug/ThreadMonitor;

    invoke-direct {v0}, Lcom/android/camera/debug/ThreadMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 904
    .local v6, t:J
    const-string v0, "HTCCamera.AccelerometerValues"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    new-array v3, v1, [F

    new-instance v5, Lcom/android/camera/HTCCamera$5;

    invoke-direct {v5, p0}, Lcom/android/camera/HTCCamera$5;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-static/range {v0 .. v5}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/Property$ValidateValueCallback;Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    .line 921
    const-string v0, "HTCCamera.ActionScreenCloseReason"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    .line 922
    const-string v0, "HTCCamera.ActionScreenState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    .line 923
    const-string v0, "HTCCamera.AutoDetectedScene"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    .line 924
    const-string v0, "HTCCamera.CameraMode"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    .line 925
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "HTCCamera.CameraType"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    .line 929
    :goto_0
    const-string v0, "HTCCamera.CurrentEffect"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v12, v2, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    .line 930
    const-string v0, "HTCCamera.CurrentScene"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v12, v2, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    .line 931
    const-string v0, "HTCCamera.DeviceOrientation"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    .line 932
    const-string v0, "HTCCamera.EffectCenter"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v12, v2, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectCenter:Lcom/android/camera/property/Property;

    .line 933
    const-string v0, "HTCCamera.EffectControlState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectControlState:Lcom/android/camera/property/Property;

    .line 934
    const-string v0, "HTCCamera.EffectPanelState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    .line 935
    const-string v0, "HTCCamera.ElapsedRecordingSeconds"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    .line 936
    const-string v0, "HTCCamera.FlashMode"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    .line 937
    const-string v0, "HTCCamera.AutoFocusMode"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    .line 938
    const-string v0, "HTCCamera.HasDialog"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    .line 939
    const-string v0, "HTCCamera.HasFlash"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    .line 940
    const-string v0, "HTCCamera.HasPopupBubble"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    .line 941
    const-string v0, "HTCCamera.IsAccelerometerStarted"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    .line 942
    const-string v0, "HTCCamera.IsActivityPaused"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2, v12}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    .line 943
    const-string v0, "HTCCamera.IsActivityPausing"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    .line 944
    const-string v0, "HTCCamera.IsAutoFocusing"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    .line 945
    const-string v0, "HTCCamera.IsCameraThreadRunning"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    .line 946
    const-string v0, "HTCCamera.IsCaptureUIBlocked"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    .line 947
    const-string v0, "HTCCamera.IsCaptureUIOpen"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    .line 948
    const-string v0, "HTCCamera.IsFlashDisabled"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    .line 949
    const-string v0, "HTCCamera.IsFocusKeyPressed"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2, v10}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    .line 950
    const-string v0, "HTCCamera.IsFocusUIShowing"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    .line 951
    const-string v0, "HTCCamera.IsKeyguardLocked"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    .line 952
    const-string v0, "HTCCamera.IsLowBatteryTemperature"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    .line 953
    const-string v0, "HTCCamera.IsLowPower"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    .line 954
    const-string v0, "HTCCamera.IsMirrorMode"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    .line 955
    const-string v0, "HTCCamera.IsPhotoCaptureButtonPressed"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    .line 956
    const-string v0, "HTCCamera.IsPreviewStarted"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    .line 957
    const-string v0, "HTCCamera.IsPreviewStarting"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    .line 958
    const-string v0, "HTCCamera.IsQuickLaunchState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2, v12}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    .line 959
    const-string v0, "HTCCamera.IsRemainingCounterVisible"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    .line 960
    const-string v0, "HTCCamera.IsRotationLocked"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    .line 961
    const-string v0, "HTCCamera.IsSelfTimerStarted"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    .line 962
    const-string v0, "HTCCamera.IsVideoCaptureButtonPressed"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;

    .line 963
    const-string v0, "HTCCamera.IsZoomLocked"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    .line 964
    const-string v0, "HTCCamera.PreviewSize"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v12, v2, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    .line 965
    const-string v0, "HTCCamera.RecordingState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    .line 966
    const-string v0, "HTCCamera.Rotation"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    .line 967
    const-string v0, "HTCCamera.SelfTimerValue"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    .line 968
    const-string v0, "HTCCamera.SettingsMenuState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    .line 969
    const-string v0, "HTCCamera.StorageState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    .line 970
    const-string v0, "HTCCamera.TakingPictureState"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v6

    .line 972
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor() - Create properties : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 976
    const-string v0, "HTCCamera.Activated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    .line 977
    const-string v0, "HTCCamera.AutoFocusCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    .line 978
    const-string v0, "HTCCamera.AutoFocusCanceling"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    .line 979
    const-string v0, "HTCCamera.CaptureButtonCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonCanceledEvent:Lcom/android/camera/event/Event;

    .line 980
    const-string v0, "HTCCamera.CaptureButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonClickedEvent:Lcom/android/camera/event/Event;

    .line 981
    const-string v0, "HTCCamera.CaptureButtonLongPressed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonLongPressedEvent:Lcom/android/camera/event/Event;

    .line 982
    const-string v0, "HTCCamera.CaptureButtonPressed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonPressedEvent:Lcom/android/camera/event/Event;

    .line 983
    const-string v0, "HTCCamera.CaptureButtonReleased"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonReleasedEvent:Lcom/android/camera/event/Event;

    .line 984
    const-string v0, "HTCCamera.ClosingMenuItemClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    .line 985
    const-string v0, "HTCCamera.Deactivated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    .line 986
    const-string v0, "HTCCamera.EffectApplied"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    .line 987
    const-string v0, "HTCCamera.EffectApplying"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectApplyingEvent:Lcom/android/camera/event/Event;

    .line 988
    const-string v0, "HTCCamera.EffectCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectCanceledEvent:Lcom/android/camera/event/Event;

    .line 989
    const-string v0, "HTCCamera.EffectListUpdated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectListUpdatedEvent:Lcom/android/camera/event/Event;

    .line 990
    const-string v0, "HTCCamera.ExternalCommentReceived"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    .line 991
    const-string v0, "HTCCamera.FlashButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    .line 992
    const-string v0, "HTCCamera.KeyDown"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    .line 993
    const-string v0, "HTCCamera.KeyUp"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    .line 994
    const-string v0, "HTCCamera.MediaScannerFinished"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/android/camera/event/Event;

    .line 995
    const-string v0, "HTCCamera.MediaScannerStarted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaScannerStartedEvent:Lcom/android/camera/event/Event;

    .line 996
    const-string v0, "HTCCamera.NewIntent"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    .line 997
    const-string v0, "HTCCamera.Pausing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    .line 998
    const-string v0, "HTCCamera.PopupOutsideTouched"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    .line 999
    const-string v0, "HTCCamera.PreviewStarting"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewStartingEvent:Lcom/android/camera/event/Event;

    .line 1000
    const-string v0, "HTCCamera.PreviewSurfaceCreated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    .line 1001
    const-string v0, "HTCCamera.PreviewSurfaceDestroyed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewSurfaceDestroyedEvent:Lcom/android/camera/event/Event;

    .line 1002
    const-string v0, "HTCCamera.QueryConfirmDeletingMediaMessage"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    .line 1003
    const-string v0, "HTCCamera.QueryMediaToSetAs"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    .line 1004
    const-string v0, "HTCCamera.QueryMediaToShare"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    .line 1005
    const-string v0, "HTCCamera.QueryPreviewSurfaceHitRect"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryPreviewSurfaceHitRectEvent:Lcom/android/camera/event/Event;

    .line 1006
    const-string v0, "HTCCamera.ResolutionSelected"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    .line 1007
    const-string v0, "HTCCamera.ResetToDefault"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resetToDefaultEvent:Lcom/android/camera/event/Event;

    .line 1008
    const-string v0, "HTCCamera.RestartingCamera"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    .line 1009
    const-string v0, "HTCCamera.Resuming"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    .line 1010
    const-string v0, "HTCCamera.ReviewAnimationCompleted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;

    .line 1011
    const-string v0, "HTCCamera.SelfFinishing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    .line 1012
    const-string v0, "HTCCamera.SelfTimerCountDown"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    .line 1013
    const-string v0, "HTCCamera.Stopping"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    .line 1014
    const-string v0, "HTCCamera.StorageEjected"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    .line 1015
    const-string v0, "HTCCamera.StorageMounted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    .line 1016
    const-string v0, "HTCCamera.StorageUnmounted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    .line 1017
    const-string v0, "HTCCamera.ThumbnailButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    .line 1018
    const-string v0, "HTCCamera.TouchPreview"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    .line 1020
    const-string v0, "HTCCamera.FocusPointUpdate"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    .line 1021
    const-string v0, "HTCCamera.ShowFocusing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    .line 1022
    const-string v0, "HTCCamera.ShowFocusSucess"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    .line 1023
    const-string v0, "HTCCamera.ShowFocusFail"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    .line 1024
    const-string v0, "HTCCamera.ShowFocusEnd"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v6

    .line 1026
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor() - Create events : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v11}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 1045
    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    return-void

    .line 928
    :cond_0
    const-string v0, "HTCCamera.CameraType"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-static {v0, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    goto/16 :goto_0
.end method

.method private QueryToggleStorage()V
    .locals 5

    .prologue
    .line 5239
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v2, :cond_0

    .line 5270
    :goto_0
    return-void

    .line 5242
    :cond_0
    const-string v1, ""

    .line 5243
    .local v1, szOut:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5244
    const v2, 0x7f0a01aa

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5248
    :goto_1
    new-instance v2, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v2, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a01a8

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x2040151

    new-instance v4, Lcom/android/camera/HTCCamera$17;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$17;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x2040152

    new-instance v4, Lcom/android/camera/HTCCamera$16;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$16;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 5269
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    goto :goto_0

    .line 5246
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    const v2, 0x7f0a01a9

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private WriteModePreference()V
    .locals 3

    .prologue
    .line 2574
    const-string v0, "camera_capture_mode_photo"

    .line 2575
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 2576
    const-string v0, "camera_capture_mode_photo"

    .line 2580
    :goto_0
    const-string v1, "camera_capture_mode"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2581
    return-void

    .line 2578
    :cond_0
    const-string v0, "camera_capture_mode_movie"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IUIRotationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateToast;)Lcom/android/camera/rotate/RotateToast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/HTCCamera;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->switch3DMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CameraMode;J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showFocusEnd()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showPowerRestrict()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$2804(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$2806(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ICaptureUIBlockManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsFirstOrientationReceived:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    return-void
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToCameraThread()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/HTCCamera;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/HTCCamera;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/HTCCamera;Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageEjected(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageMounted(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageUnmounted(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/camera/HTCCamera;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/HTCCamera;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/HTCCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/camera/HTCCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/camera/HTCCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/camera/HTCCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide p1
.end method

.method static synthetic access$922(Lcom/android/camera/HTCCamera;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method private autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z
    .locals 18
    .parameter "focusMode"
    .parameter "focusLocations"

    .prologue
    .line 4638
    if-nez p1, :cond_0

    .line 4640
    const-string v14, "focusMode"

    invoke-static {v14}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4641
    const/4 v14, 0x0

    .line 4851
    .end local p2
    :goto_0
    return v14

    .line 4643
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 4645
    const-string v14, "focusPoints"

    invoke-static {v14}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4646
    const/4 v14, 0x0

    goto :goto_0

    .line 4650
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v14, :cond_2

    .line 4652
    const-string v14, "HTCCamera"

    const-string v15, "autoFocus() - No camera thread"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    const/4 v14, 0x0

    goto :goto_0

    .line 4655
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v14, :cond_4

    .line 4657
    :cond_3
    const-string v14, "HTCCamera"

    const-string v15, "autoFocus() - Activity is paused or idle"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4658
    const/4 v14, 0x0

    goto :goto_0

    .line 4662
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v14, :cond_5

    .line 4664
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 4665
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4673
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v14, v14, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_7

    sget-object v14, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_7

    .line 4675
    const-string v14, "HTCCamera"

    const-string v15, "autoFocus() - Focus mode is sensor, but canAutoFocus is false"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4676
    const/4 v14, 0x0

    goto :goto_0

    .line 4668
    :cond_6
    const-string v14, "HTCCamera"

    const-string v15, "autoFocus() - Cannot cancel auto-focus"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4669
    const/4 v14, 0x0

    goto :goto_0

    .line 4679
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v14

    if-nez v14, :cond_8

    .line 4681
    const-string v14, "HTCCamera"

    const-string v15, "autoFocus() - Cannot trigger focus"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4682
    const/4 v14, 0x0

    goto :goto_0

    .line 4686
    :cond_8
    const-string v14, "HTCCamera"

    const-string v15, "autoFocus() - Block capture UI"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4687
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v15, "Auto focusing"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 4690
    const-string v14, "HTCCamera"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "autoFocus() - Focus mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4691
    move-object/from16 v0, p2

    instance-of v14, v0, [Landroid/graphics/PointF;

    if-eqz v14, :cond_9

    move-object/from16 v14, p2

    .line 4693
    check-cast v14, [Landroid/graphics/PointF;

    move-object v7, v14

    check-cast v7, [Landroid/graphics/PointF;

    .line 4694
    .local v7, focusPoints:[Landroid/graphics/PointF;
    array-length v14, v7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 4695
    const-string v14, "HTCCamera"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "autoFocus() - Focus point = ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    .end local v7           #focusPoints:[Landroid/graphics/PointF;
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4712
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v14, :cond_a

    .line 4713
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 4714
    :cond_a
    move-object/from16 v0, p2

    instance-of v14, v0, [Landroid/graphics/PointF;

    if-eqz v14, :cond_f

    .line 4715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    check-cast p2, [Landroid/graphics/PointF;

    .end local p2
    check-cast p2, [Landroid/graphics/PointF;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    .line 4851
    :cond_b
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 4696
    .restart local v7       #focusPoints:[Landroid/graphics/PointF;
    .restart local p2
    :cond_c
    sget-boolean v14, Lcom/android/camera/LOG;->DEBUG:Z

    if-eqz v14, :cond_9

    .line 4698
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4699
    .local v2, buffer:Ljava/lang/StringBuffer;
    const-string v14, "autoFocus() - Focus point = {"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4700
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    array-length v14, v7

    if-ge v9, v14, :cond_e

    .line 4702
    if-eqz v9, :cond_d

    .line 4703
    const/16 v14, 0x2c

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4704
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v9

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v9

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4700
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4706
    :cond_e
    const-string v14, "}"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4707
    const-string v14, "HTCCamera"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4716
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v7           #focusPoints:[Landroid/graphics/PointF;
    .end local v9           #i:I
    :cond_f
    move-object/from16 v0, p2

    instance-of v14, v0, [Landroid/graphics/RectF;

    if-eqz v14, :cond_b

    .line 4718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    if-ne v14, v15, :cond_18

    move-object/from16 v14, p2

    .line 4725
    check-cast v14, [Landroid/graphics/RectF;

    move-object v11, v14

    check-cast v11, [Landroid/graphics/RectF;

    .line 4726
    .local v11, rectFocus:[Landroid/graphics/RectF;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    move-object/from16 v14, p2

    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    array-length v14, v14

    if-ge v9, v14, :cond_15

    move-object/from16 v14, p2

    .line 4728
    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    aget-object v10, v14, v9

    .line 4731
    .local v10, rect:Landroid/graphics/RectF;
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_12

    .line 4733
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    sub-double v14, v14, v16

    double-to-float v5, v14

    .line 4734
    .local v5, diffX:F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    sub-double v14, v14, v16

    double-to-float v6, v14

    .line 4735
    .local v6, diffY:F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_10

    .line 4737
    iget v14, v10, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4000

    div-float v15, v5, v15

    add-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->left:F

    .line 4738
    iget v14, v10, Landroid/graphics/RectF;->left:F

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->right:F

    .line 4740
    :cond_10
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-eqz v14, :cond_11

    .line 4742
    iget v14, v10, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x4000

    div-float v15, v6, v15

    add-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->top:F

    .line 4743
    iget v14, v10, Landroid/graphics/RectF;->top:F

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->bottom:F

    .line 4763
    .end local v5           #diffX:F
    .end local v6           #diffY:F
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v14}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 4765
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 4766
    .local v8, height:F
    iget v14, v10, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x4080

    div-float v15, v8, v15

    add-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->top:F

    .line 4767
    iget v14, v10, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x4000

    div-float v15, v8, v15

    add-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->bottom:F

    .line 4777
    .end local v8           #height:F
    :goto_6
    aput-object v10, v11, v9

    .line 4726
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 4746
    :cond_12
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fc0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_11

    .line 4748
    const-wide/high16 v14, 0x3fc0

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-float v5, v14

    .line 4749
    .restart local v5       #diffX:F
    const-wide/high16 v14, 0x3fc0

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-float v6, v14

    .line 4750
    .restart local v6       #diffY:F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_13

    .line 4752
    iget v14, v10, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4000

    div-float v15, v5, v15

    sub-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->left:F

    .line 4753
    iget v14, v10, Landroid/graphics/RectF;->left:F

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fc0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->right:F

    .line 4755
    :cond_13
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-eqz v14, :cond_11

    .line 4757
    iget v14, v10, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x4000

    div-float v15, v6, v15

    sub-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->top:F

    .line 4758
    iget v14, v10, Landroid/graphics/RectF;->top:F

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fc0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 4771
    .end local v5           #diffX:F
    .end local v6           #diffY:F
    :cond_14
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 4772
    .local v13, width:F
    iget v14, v10, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4080

    div-float v15, v13, v15

    add-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->left:F

    .line 4773
    iget v14, v10, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4000

    div-float v15, v13, v15

    add-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 4782
    .end local v10           #rect:Landroid/graphics/RectF;
    .end local v13           #width:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/camera/effect/HdrScene;

    if-eqz v14, :cond_17

    .line 4785
    check-cast p2, [Landroid/graphics/RectF;

    .end local p2
    move-object/from16 v12, p2

    check-cast v12, [Landroid/graphics/RectF;

    .line 4821
    .local v12, rectMetering:[Landroid/graphics/RectF;
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v12, v0}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    goto/16 :goto_2

    .end local v12           #rectMetering:[Landroid/graphics/RectF;
    .restart local p2
    :cond_17
    move-object/from16 v14, p2

    .line 4789
    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    array-length v14, v14

    new-array v12, v14, [Landroid/graphics/RectF;

    .line 4791
    .restart local v12       #rectMetering:[Landroid/graphics/RectF;
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v14, p2

    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    array-length v14, v14

    if-ge v9, v14, :cond_16

    .line 4793
    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v14, p2

    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    aget-object v14, v14, v9

    invoke-direct {v10, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4794
    .restart local v10       #rect:Landroid/graphics/RectF;
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 4795
    .local v3, centerX:F
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 4797
    .local v4, centerY:F
    float-to-double v14, v3

    const-wide/high16 v16, 0x3fc0

    sub-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->left:F

    .line 4798
    float-to-double v14, v3

    const-wide/high16 v16, 0x3fc0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->right:F

    .line 4799
    float-to-double v14, v4

    const-wide/high16 v16, 0x3fc0

    sub-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->top:F

    .line 4800
    float-to-double v14, v4

    const-wide/high16 v16, 0x3fc0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->bottom:F

    .line 4818
    aput-object v10, v12, v9

    .line 4791
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 4828
    .end local v3           #centerX:F
    .end local v4           #centerY:F
    .end local v9           #i:I
    .end local v10           #rect:Landroid/graphics/RectF;
    .end local v11           #rectFocus:[Landroid/graphics/RectF;
    .end local v12           #rectMetering:[Landroid/graphics/RectF;
    :cond_18
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_8
    move-object/from16 v14, p2

    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    array-length v14, v14

    if-ge v9, v14, :cond_1b

    move-object/from16 v14, p2

    .line 4830
    check-cast v14, [Landroid/graphics/RectF;

    check-cast v14, [Landroid/graphics/RectF;

    aget-object v10, v14, v9

    .line 4833
    .restart local v10       #rect:Landroid/graphics/RectF;
    const-wide/high16 v14, 0x3fd0

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-float v5, v14

    .line 4834
    .restart local v5       #diffX:F
    const-wide/high16 v14, 0x3fd0

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-float v6, v14

    .line 4835
    .restart local v6       #diffY:F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_19

    .line 4837
    iget v14, v10, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4000

    div-float v15, v5, v15

    sub-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->left:F

    .line 4838
    iget v14, v10, Landroid/graphics/RectF;->left:F

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->right:F

    .line 4840
    :cond_19
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-eqz v14, :cond_1a

    .line 4842
    iget v14, v10, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x4000

    div-float v15, v6, v15

    sub-float/2addr v14, v15

    iput v14, v10, Landroid/graphics/RectF;->top:F

    .line 4843
    iget v14, v10, Landroid/graphics/RectF;->top:F

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fd0

    add-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v10, Landroid/graphics/RectF;->bottom:F

    .line 4828
    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 4846
    .end local v5           #diffX:F
    .end local v6           #diffY:F
    .end local v10           #rect:Landroid/graphics/RectF;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    check-cast p2, [Landroid/graphics/RectF;

    .end local p2
    check-cast p2, [Landroid/graphics/RectF;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    goto/16 :goto_2
.end method

.method private broadcastStopFM()V
    .locals 0

    .prologue
    .line 5206
    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    .prologue
    .line 5214
    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    .prologue
    .line 5191
    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5194
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 5195
    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5197
    return-void
.end method

.method private changetoCameraMode(Z)V
    .locals 5
    .parameter "isUiOnly"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2585
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Camera, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2587
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    :goto_0
    return-void

    .line 2591
    :cond_0
    if-nez p1, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)V

    .line 2594
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    if-nez p1, :cond_2

    .line 2597
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2598
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    .line 2606
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2609
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_3

    .line 2610
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    .line 2612
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_4

    .line 2613
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 2616
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    .line 2601
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v3}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 2602
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2603
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private changetoVideoMode(Z)V
    .locals 5
    .parameter "isUiOnly"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2621
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Video, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 2623
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video - but current mode is Video !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    .line 2634
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    .line 2637
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    .line 2639
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 2640
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, v3}, Lcom/android/camera/IAudioManager;->requestAudioFocus(I)V

    .line 2642
    :cond_2
    if-nez p1, :cond_3

    .line 2643
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)V

    .line 2645
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    if-nez p1, :cond_4

    .line 2648
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2649
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    .line 2657
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2660
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_5

    .line 2661
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    .line 2664
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    if-ne v0, v1, :cond_8

    .line 2665
    :cond_6
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    .line 2652
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v4}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 2653
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2654
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2666
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 2667
    sget-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0
.end method

.method private checkFlash()V
    .locals 4

    .prologue
    .line 3568
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3569
    .local v0, value:Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3570
    return-void

    .line 3568
    .end local v0           #value:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStartMode(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1307
    instance-of v1, p0, Lcom/android/camera/CameraServiceEntry;

    if-eqz v1, :cond_1

    .line 1308
    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    .line 1315
    :goto_0
    const-string v1, "RequestedFrom"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, requester:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1318
    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1319
    sget-object v1, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    .line 1342
    :cond_0
    :goto_1
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Start mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    return-void

    .line 1309
    .end local v0           #requester:Ljava/lang/String;
    :cond_1
    instance-of v1, p0, Lcom/android/camera/VideoServiceEntry;

    if-eqz v1, :cond_2

    .line 1310
    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_0

    .line 1312
    :cond_2
    sget-object v1, Lcom/android/camera/CameraStartMode;->Generic:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_0

    .line 1320
    .restart local v0       #requester:Ljava/lang/String;
    :cond_3
    const-string v1, "captureSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1321
    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1322
    :cond_4
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1323
    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1324
    :cond_5
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1326
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v1, v2, :cond_6

    .line 1327
    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1329
    :cond_6
    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1331
    :cond_7
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1333
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v1, v2, :cond_8

    .line 1334
    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1336
    :cond_8
    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesVideo:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    .line 1339
    :cond_9
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Unknown service requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private checkTapCapture(II)V
    .locals 6
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x1

    .line 4424
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTapCapture mStartTapCapture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4426
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    .line 4464
    :cond_0
    :goto_0
    return-void

    .line 4429
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/ContinuousBurstScene;

    if-nez v1, :cond_0

    .line 4432
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    if-eq v1, v4, :cond_0

    .line 4436
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4438
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4442
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v5, :cond_3

    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 4445
    const-string v1, "HTCCamera"

    const-string v2, "checkTapCapture in area"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4449
    const-string v1, "HTCCamera"

    const-string v2, "checkTapCapture triggerTakePicture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    .line 4451
    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    .line 4452
    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    .line 4453
    const-string v1, "HTCCamera"

    const-string v2, "Tap & Capture - mFocusingState = FOCUSING_TAP_CAPTURE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto :goto_0

    .line 4461
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    .line 4462
    const-string v1, "HTCCamera"

    const-string v2, "checkTapCapture resetTapCapture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 3

    .prologue
    .line 3393
    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3398
    :cond_0
    return-void
.end method

.method private completeCapture(Lcom/android/camera/CameraMode;J)V
    .locals 11
    .parameter "mode"
    .parameter "delay"

    .prologue
    const/16 v1, 0x277a

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v4, :cond_8

    .line 5397
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x12c

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    move v7, v3

    .line 5398
    .local v7, hasPendingTakingPicture:Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v7, :cond_0

    iget-wide v4, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    .line 5404
    :cond_0
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5417
    :goto_1
    if-nez v7, :cond_1

    .line 5418
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5421
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CameraMode;)V

    .line 5466
    .end local v7           #hasPendingTakingPicture:Z
    :goto_2
    return-void

    :cond_2
    move v7, v2

    .line 5397
    goto :goto_0

    .line 5407
    .restart local v7       #hasPendingTakingPicture:Z
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5408
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    goto :goto_1

    .line 5411
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5412
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_1

    .line 5426
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_7

    .line 5429
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 5442
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_4

    .line 5444
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_5

    .line 5445
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5451
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_6

    .line 5452
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->open()V

    goto :goto_2

    .line 5432
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5433
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    goto :goto_3

    .line 5436
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 5437
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_3

    .line 5447
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 5455
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to open"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5456
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CameraMode;)V

    goto :goto_2

    .line 5460
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    move v3, v2

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_2

    .line 5462
    .end local v7           #hasPendingTakingPicture:Z
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 5463
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v2, v2, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5465
    :cond_9
    const-string v0, "HTCCamera"

    const-string v1, "Cannot show action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5429
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doOnDestory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2378
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIComponentManager;->removeComponents()V

    .line 2385
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2396
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->releaseLocationHandler()V

    .line 2398
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    .line 2401
    :cond_0
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2403
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_1

    .line 2404
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->releaseIntentManager()V

    .line 2405
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 2408
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 2409
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 2411
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 2412
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->releaseCameraThread()V

    .line 2413
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    .line 2414
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 2418
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_3

    .line 2420
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2421
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 2424
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_4

    .line 2426
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->releaseResource()V

    .line 2427
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 2431
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "Destroy events"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 2435
    const-string v0, "HTCCamera"

    const-string v1, "Destroy properties"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 2439
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->release()V

    .line 2442
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_5

    .line 2444
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->abort()V

    .line 2445
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    .line 2448
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    return-void

    .line 2386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOnResume_after_preview()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1910
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v4, :cond_0

    .line 1913
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - not need to do"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :goto_0
    return-void

    .line 1916
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 1920
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v4}, Lcom/android/camera/IntentManager;->resetLaunchedby()V

    .line 1922
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1923
    .local v1, partitionFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1924
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1928
    .local v2, sipFilter:Landroid/content/IntentFilter;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1929
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_1

    .line 1939
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v4}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    .line 1943
    :cond_1
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 1946
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraStorageLocationSettings;->readFromDatabase(Landroid/content/ContentResolver;)Lcom/android/camera/io/StorageSlot;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1947
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    .line 1948
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 1951
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1954
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 1956
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 1965
    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1967
    const-string v4, "pref_sdcard_state"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1969
    .local v3, state:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1971
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    .line 1973
    .end local v3           #state:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 1975
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private final getSelfTimerValueFromPreference()Lcom/android/camera/SelfTimerValue;
    .locals 2

    .prologue
    .line 3410
    const-string v1, "pref_camera_self_timer"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3411
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3413
    const-string v1, "2s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3414
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_2s:Lcom/android/camera/SelfTimerValue;

    .line 3418
    :goto_0
    return-object v1

    .line 3415
    :cond_0
    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3416
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_10s:Lcom/android/camera/SelfTimerValue;

    goto :goto_0

    .line 3418
    :cond_1
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    goto :goto_0
.end method

.method private initializeCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1237
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    if-eqz v1, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1239
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    .line 1241
    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1245
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    .line 1248
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1251
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->enableAutoInitialization(Z)V

    .line 1254
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IUIRotationManager;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    .line 1255
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v1, :cond_1

    .line 1256
    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - Cannot find IUIRotationManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_2

    .line 1261
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v2, "IUIRotationManager.DeviceOrientation"

    invoke-interface {v1, v2}, Lcom/android/camera/IUIRotationManager;->getProperty(Ljava/lang/String;)Lcom/android/camera/property/Property;

    move-result-object v1

    new-instance v2, Lcom/android/camera/HTCCamera$6;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$6;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1270
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v2, "IUIRotationManager.IsOrientationListenerStarted"

    invoke-interface {v1, v2}, Lcom/android/camera/IUIRotationManager;->getProperty(Ljava/lang/String;)Lcom/android/camera/property/Property;

    move-result-object v1

    new-instance v2, Lcom/android/camera/HTCCamera$7;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$7;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1279
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v2, "IUIRotationManager.Rotation"

    invoke-interface {v1, v2}, Lcom/android/camera/IUIRotationManager;->getProperty(Ljava/lang/String;)Lcom/android/camera/property/Property;

    move-result-object v1

    new-instance v2, Lcom/android/camera/HTCCamera$8;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$8;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1290
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 1293
    new-instance v1, Lcom/android/camera/RecordLimitCheck;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v1, v2}, Lcom/android/camera/RecordLimitCheck;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    .line 1296
    new-instance v1, Lcom/android/camera/LocationHandler;

    invoke-direct {v1, p0}, Lcom/android/camera/LocationHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    .line 1298
    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private leaveQuickLaunchState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8024
    const-string v0, "HTCCamera"

    const-string v1, "leaveQuickLaunchState()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8027
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8038
    :cond_0
    :goto_0
    return-void

    .line 8029
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8033
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 8034
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 8037
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private linkToCameraThread()V
    .locals 8

    .prologue
    .line 6102
    const-string v6, "HTCCamera"

    const-string v7, "linkToCameraThread() - Start"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6105
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 6106
    .local v2, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v2, :cond_0

    .line 6108
    const-string v6, "HTCCamera"

    const-string v7, "linkToCameraThread() - No camera thread"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    :goto_0
    return-void

    .line 6113
    :cond_0
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 6114
    .local v1, cameraHandler:Landroid/os/Handler;
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    .line 6115
    .local v5, uiHandler:Landroid/os/Handler;
    if-eqz v1, :cond_1

    if-nez v5, :cond_2

    .line 6117
    :cond_1
    const-string v6, "HTCCamera"

    const-string v7, "linkToCameraThread() - No handler"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6122
    :cond_2
    new-instance v3, Lcom/android/camera/HTCCamera$19;

    invoke-direct {v3, p0, v5}, Lcom/android/camera/HTCCamera$19;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    .line 6137
    .local v3, eventHandler:Lcom/android/camera/event/EventHandler;
    iget-object v6, v2, Lcom/android/camera/CameraThread;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6138
    iget-object v6, v2, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6139
    iget-object v6, v2, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6140
    iget-object v6, v2, Lcom/android/camera/CameraThread;->changeModeFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6141
    iget-object v6, v2, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6142
    iget-object v6, v2, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6143
    iget-object v6, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6144
    iget-object v6, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6147
    new-instance v0, Lcom/android/camera/HTCCamera$20;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/HTCCamera$20;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    .line 6162
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v6, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 6163
    iget-object v6, v2, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 6164
    iget-object v6, v2, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 6165
    iget-object v6, v2, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 6168
    iget-object v6, v2, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/imaging/Size;

    .line 6169
    .local v4, previewSize:Lcom/android/camera/imaging/Size;
    if-eqz v4, :cond_3

    .line 6171
    new-instance v6, Lcom/android/camera/HTCCamera$21;

    invoke-direct {v6, p0, v4}, Lcom/android/camera/HTCCamera$21;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6181
    :cond_3
    const-string v6, "HTCCamera"

    const-string v7, "linkToCameraThread() - End"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onActionScreenClosed(Lcom/android/camera/CameraMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5552
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenClosed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5553
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenClosed() - Current mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5556
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 5558
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5572
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p1, v0, :cond_3

    .line 5575
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video snapshot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5576
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5577
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5580
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5582
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5583
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5584
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5585
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 5586
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->completeRecording()V

    .line 5643
    :cond_2
    :goto_1
    return-void

    .line 5561
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 5562
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    goto :goto_0

    .line 5565
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 5566
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    goto :goto_0

    .line 5592
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5594
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5595
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5599
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5600
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Power warning"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_1

    .line 5606
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-eqz v0, :cond_6

    .line 5608
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5613
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_9

    .line 5616
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5618
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Take picture immediately"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5619
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5620
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5621
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5624
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5628
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5630
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 5631
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startPreview()Z

    .line 5640
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 5642
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenClosed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5633
    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    const/4 v1, 0x1

    invoke-direct {p0, v4, v0, v1}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;I)Z

    goto :goto_2

    .line 5636
    :cond_b
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_2

    .line 5558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onActionScreenOpening()V
    .locals 0

    .prologue
    .line 5544
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 5545
    return-void
.end method

.method private onAutoFocusCanceled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7514
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7517
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7519
    :cond_0
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusCanceled() - mIsUIReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7520
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusCanceled() - IsActivityPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7537
    :goto_0
    return-void

    .line 7525
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 7527
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7534
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 7536
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 7348
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7351
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_1

    .line 7356
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - bCancelFocus = "

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7357
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - mFocusingState = "

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7358
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - IsActivityPaused = "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7395
    :goto_0
    return-void

    .line 7363
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_3

    .line 7365
    iget-boolean v0, p1, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    if-eqz v0, :cond_4

    .line 7367
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7370
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7374
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 7375
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7376
    sput-boolean v3, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    goto :goto_0

    .line 7379
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 7386
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7390
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsAfterAutoFocus()V

    .line 7391
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x53

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 7394
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7382
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method private onAutoFocusStarting(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7313
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7341
    :cond_0
    :goto_0
    return-void

    .line 7317
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_4

    .line 7320
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_2

    .line 7321
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v1, 0x7f060007

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    .line 7323
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_3

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_6

    .line 7326
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7327
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 7337
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7339
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 7329
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7331
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7332
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    goto :goto_1
.end method

.method private onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 1
    .parameter "event"
    .parameter "sender"
    .parameter "e"

    .prologue
    .line 6470
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6490
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 6474
    .restart local p3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_2

    .line 6475
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onAutoFocusCanceled()V

    goto :goto_0

    .line 6476
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_3

    .line 6477
    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V

    goto :goto_0

    .line 6478
    .restart local p3
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_4

    .line 6479
    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onAutoFocusStarting(Lcom/android/camera/AutoFocusEventArgs;)V

    goto :goto_0

    .line 6480
    .restart local p3
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->changeModeFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_5

    .line 6481
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/CameraMode;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onChangeCameraModeFailed(Lcom/android/camera/CameraMode;)V

    goto :goto_0

    .line 6482
    .restart local p3
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_6

    .line 6483
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPreviewStarting()V

    goto :goto_0

    .line 6484
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_7

    .line 6485
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingFailedReason;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/RecordingFailedReason;)V

    goto :goto_0

    .line 6486
    .restart local p3
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_8

    .line 6487
    check-cast p3, Lcom/android/camera/MediaEventArgs;

    .end local p3
    invoke-virtual {p0, p3}, Lcom/android/camera/HTCCamera;->onMediaSaved(Lcom/android/camera/MediaEventArgs;)V

    goto :goto_0

    .line 6488
    .restart local p3
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_0

    .line 6489
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/TakingPictureFailedReason;)V

    goto :goto_0
.end method

.method private onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .parameter "property"
    .parameter "e"

    .prologue
    .line 6498
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6521
    :cond_0
    :goto_0
    return-void

    .line 6502
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_3

    .line 6504
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6505
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRecordingStarted()V

    goto :goto_0

    .line 6507
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRecordingStopped()V

    goto :goto_0

    .line 6509
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_4

    .line 6511
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6512
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    goto :goto_0

    .line 6514
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_5

    .line 6516
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 6517
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V

    goto :goto_0

    .line 6519
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_0

    .line 6520
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onStorageStateChanged(Lcom/android/camera/io/StorageState;)V

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 3

    .prologue
    .line 6065
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6068
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    .line 6070
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - No camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    :goto_0
    return-void

    .line 6075
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 6078
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    new-instance v1, Lcom/android/camera/HTCCamera$18;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$18;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6087
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Cannot link to camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6091
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6093
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onChangeCameraModeFailed(Lcom/android/camera/CameraMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 7289
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switing mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7292
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    .line 7293
    :goto_0
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7304
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPreviewStarted()V

    .line 7305
    return-void

    .line 7292
    :cond_0
    sget-object p1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_0

    .line 7296
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->changetoCameraMode(Z)V

    goto :goto_1

    .line 7299
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->changetoVideoMode(Z)V

    goto :goto_1

    .line 7293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onEffectPanelStateChanged(Lcom/android/camera/UIState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 7645
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    invoke-virtual {p1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7664
    :cond_0
    :goto_0
    return-void

    .line 7649
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is opening"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7651
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_0

    .line 7652
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7653
    const-string v0, "HTCCamera"

    const-string v1, "onEffectPanelOpening when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7654
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 7655
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onEffectPanelOpening and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7657
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x0

    .line 7945
    iget-object v1, p1, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 7946
    .local v1, command:Ljava/lang/String;
    const-string v3, "activate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7947
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 7985
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    .line 7986
    :cond_1
    :goto_1
    return-void

    .line 7948
    :cond_2
    const-string v3, "deactivate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7949
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->deactivate()V

    goto :goto_0

    .line 7950
    :cond_3
    const-string v3, "help"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7952
    const-string v3, "HTCCamera"

    const-string v4, "activate"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 7953
    const-string v3, "HTCCamera"

    const-string v4, "deactivate"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 7954
    const-string v3, "HTCCamera"

    const-string v4, "switch_camera CAMERA_TYPE(Main/Main3D/Front/Front3D)"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 7955
    const-string v3, "HTCCamera"

    const-string v4, "take_picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7958
    :cond_4
    const-string v3, "switch_camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7960
    iget-object v3, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 7964
    :try_start_0
    const-class v3, Lcom/android/camera/CameraType;

    iget-object v4, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    .line 7965
    .local v0, cameraType:Lcom/android/camera/CameraType;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7966
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch camera to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7968
    .end local v0           #cameraType:Lcom/android/camera/CameraType;
    :catch_0
    move-exception v2

    .line 7970
    .local v2, ex:Ljava/lang/Throwable;
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown camera \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7974
    .end local v2           #ex:Ljava/lang/Throwable;
    :cond_5
    const-string v3, "HTCCamera"

    const-string v4, "No camera specified"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7976
    :cond_6
    const-string v3, "take_picture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7978
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7979
    const-string v3, "HTCCamera"

    const-string v4, "Take one picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7981
    :cond_7
    const-string v3, "HTCCamera"

    const-string v4, "Cannot take picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onPopupBubbleShown()V
    .locals 1

    .prologue
    .line 5960
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5961
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 5962
    :cond_0
    return-void
.end method

.method private onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    .locals 2
    .parameter "previewSize"

    .prologue
    .line 6613
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6614
    return-void
.end method

.method private onPreviewStarted()V
    .locals 8

    .prologue
    const/16 v7, 0x277b

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6653
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6656
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6657
    .local v0, isPreviewStarting:Z
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6660
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6662
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6774
    :goto_0
    return-void

    .line 6667
    :cond_0
    if-eqz v0, :cond_1

    .line 6669
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6670
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 6671
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - UnBlock Capture UI - after start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6674
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6675
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - isKeyguardShow() = true && !DisplayDevice.supportShowWhenLock(), waiting for unlock screen"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6676
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto :goto_0

    .line 6681
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFlash()V

    .line 6684
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6687
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initializeCaptureUI()V

    .line 6691
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V

    .line 6694
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6695
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6696
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6699
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 6700
    iget v1, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v1, :cond_5

    .line 6701
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    .line 6704
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 6705
    sput-boolean v6, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 6706
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 6707
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - mIsUIReady = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6708
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    if-ne v1, v2, :cond_6

    .line 6709
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6710
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    if-ne v1, v2, :cond_7

    .line 6711
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6725
    :cond_7
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - Unblock UI to prevent unexpected behavior"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6726
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6728
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6729
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 6730
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_8

    .line 6731
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 6732
    :cond_8
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 6734
    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6736
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6737
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 6738
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_a

    .line 6739
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 6740
    :cond_a
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 6744
    :cond_b
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6746
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6748
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - Start recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6749
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    .line 6770
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6771
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6773
    :cond_d
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6753
    :cond_e
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - Switch back to photo mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6754
    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    goto :goto_1

    .line 6757
    :cond_f
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v1, :cond_c

    .line 6759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-gtz v1, :cond_10

    .line 6761
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStarted() - Take picture immediately"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6762
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 6763
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    goto :goto_1

    .line 6766
    :cond_10
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_1
.end method

.method private onPreviewStarting()V
    .locals 3

    .prologue
    .line 6621
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6624
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6626
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6646
    :goto_0
    return-void

    .line 6629
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    .line 6631
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Screen-save mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6636
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6638
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 6639
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6643
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewStartingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6645
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPreviewStopped()V
    .locals 3

    .prologue
    .line 6781
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 6785
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    .line 6788
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6789
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6790
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6791
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6793
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6794
    return-void
.end method

.method private onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    .line 6529
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSurfaceCreated() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6530
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6533
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6535
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6565
    :goto_0
    return-void

    .line 6540
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 6542
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v0, :cond_1

    .line 6544
    const-string v0, "HTCCamera"

    const-string v2, "onPreviewSurfaceCreated() - Surface is already created"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6545
    monitor-exit v1

    goto :goto_0

    .line 6548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6547
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 6548
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6549
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_4

    .line 6550
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 6551
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6553
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6554
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    .line 6564
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    goto :goto_0

    .line 6557
    :cond_3
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSurfaceCreated() - Start preview later, taking picture state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recording state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6559
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - SurfaceCreated before onResume, set mIdle = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6560
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto :goto_1
.end method

.method private onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 6572
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 6574
    :try_start_0
    const-string v0, "HTCCamera"

    const-string v2, "onPreviewSurfaceDestroyed()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 6576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    .line 6578
    monitor-exit v1

    .line 6579
    return-void

    .line 6578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRecordingFailed(Lcom/android/camera/RecordingFailedReason;)V
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 7088
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7091
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7093
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - isActivityPaused = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7094
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7137
    :goto_0
    return-void

    .line 7099
    :cond_0
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingFailedReason:[I

    invoke-virtual {p1}, Lcom/android/camera/RecordingFailedReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7110
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7111
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7114
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7115
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 7118
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 7120
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 7121
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 7125
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 7128
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7130
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Switch back to photo mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7131
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    .line 7134
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    .line 7136
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7102
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    goto :goto_1

    .line 7105
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "low_internal_storage_view_text"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showToast(I)V

    goto :goto_1

    .line 7099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordingStarted()V
    .locals 3

    .prologue
    .line 6816
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6819
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v0, v1, :cond_0

    .line 6821
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStarted() - current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6833
    :goto_0
    return-void

    .line 6826
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    .line 6830
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTime()V

    .line 6832
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRecordingStopped()V
    .locals 4

    .prologue
    .line 6840
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6843
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6844
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6847
    :cond_0
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6856
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 6860
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6863
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6864
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 6883
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 6886
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 6892
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Waiting for video snapshot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6907
    :goto_1
    return-void

    .line 6851
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6897
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6900
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6901
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 6902
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->completeRecording()V

    .line 6904
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    .line 6906
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6847
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 6886
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 1547
    iget v0, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->updateRotateViews(I)V

    .line 1567
    return-void
.end method

.method private onStorageEjected(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 5970
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 5998
    :cond_0
    :goto_0
    return-void

    .line 5974
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 5977
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v0, v1, :cond_0

    .line 5980
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5995
    :cond_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 5996
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0

    .line 5985
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5987
    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5988
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5989
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 5980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onStorageMounted(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 6006
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 6026
    :cond_0
    :goto_0
    return-void

    .line 6010
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 6013
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6015
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6018
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    goto :goto_0

    .line 6024
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 6025
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0
.end method

.method private onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V
    .locals 6
    .parameter "slot"
    .parameter "changeFromCameraThread"

    .prologue
    .line 7162
    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 7167
    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged() - No settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7186
    :cond_0
    :goto_0
    return-void

    .line 7172
    :cond_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageSlotChanged() - Storage slot has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7173
    if-eqz p2, :cond_2

    .line 7175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    .line 7176
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    .line 7181
    :cond_2
    if-nez p2, :cond_0

    .line 7183
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    .line 7184
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->checkStorageState()V

    goto :goto_0
.end method

.method private onStorageStateChanged(Lcom/android/camera/io/StorageState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 7194
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7219
    :cond_0
    :goto_0
    return-void

    .line 7196
    :cond_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage state has been changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7199
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    invoke-virtual {p1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7209
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    .line 7212
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7216
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Storage error, close self-timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7217
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto :goto_0

    .line 7203
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "Storage error, close action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7204
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    goto :goto_1

    .line 7199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageUnmounted(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 6034
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    .line 6058
    :cond_0
    :goto_0
    return-void

    .line 6038
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 6041
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6056
    :cond_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 6057
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0

    .line 6046
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6048
    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6049
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6050
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 6041
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTakingPictureFailed(Lcom/android/camera/TakingPictureFailedReason;)V
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 7025
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTakingPictureFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7028
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7030
    const-string v1, "HTCCamera"

    const-string v2, "onTakingPictureFailed() - isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7031
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7081
    :goto_0
    return-void

    .line 7036
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 7039
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7040
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7044
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureFailedReason:[I

    invoke-virtual {p1}, Lcom/android/camera/TakingPictureFailedReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 7057
    const/4 v0, 0x0

    .line 7060
    .local v0, toastTextId:Ljava/lang/Integer;
    :goto_1
    if-eqz v0, :cond_1

    .line 7061
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->showToast(I)V

    .line 7064
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7065
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 7068
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_2

    .line 7070
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    .line 7071
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 7075
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 7078
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 7080
    const-string v1, "HTCCamera"

    const-string v2, "onTakingPictureFailed() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7047
    .end local v0           #toastTextId:Ljava/lang/Integer;
    :pswitch_0
    const v1, 0x7f0a0051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7048
    .restart local v0       #toastTextId:Ljava/lang/Integer;
    goto :goto_1

    .line 7050
    .end local v0           #toastTextId:Ljava/lang/Integer;
    :pswitch_1
    const/4 v0, 0x0

    .line 7051
    .restart local v0       #toastTextId:Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    goto :goto_1

    .line 7054
    .end local v0           #toastTextId:Ljava/lang/Integer;
    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "low_internal_storage_view_text"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7055
    .restart local v0       #toastTextId:Ljava/lang/Integer;
    goto :goto_1

    .line 7044
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onTakingPictureStateChanged(Lcom/android/camera/TakingPictureState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 7004
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    invoke-virtual {p1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7018
    :cond_0
    :goto_0
    return-void

    .line 7007
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7008
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 7014
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_0

    .line 7004
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private overrideSystemRotateAnimation()V
    .locals 1

    .prologue
    .line 5919
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation(I)V

    .line 5920
    return-void
.end method

.method private overrideSystemRotateAnimation(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 5923
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideSystemRotateAnimation, type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5924
    invoke-static {p0, p1}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    .line 5925
    return-void
.end method

.method private performActionsAfterAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7434
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7437
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    .line 7438
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7507
    :goto_0
    return-void

    .line 7441
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    if-eqz v0, :cond_1

    .line 7442
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - bCancelFocus = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7445
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_2

    .line 7446
    const-string v0, "HTCCamera"

    const-string v1, "Enter this state only when interrupt focus !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7447
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7454
    :cond_2
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    packed-switch v0, :pswitch_data_0

    .line 7497
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - unknown focus state !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7501
    :cond_3
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7502
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 7504
    sput-boolean v3, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 7506
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7456
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take focus end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7457
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7458
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_1

    .line 7461
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_3

    .line 7462
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7463
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7464
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7465
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - Freeze UI - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7466
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    goto :goto_1

    .line 7478
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - record after focusing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7479
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7480
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7481
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_1

    .line 7486
    :pswitch_3
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take picture after focusing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7487
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 7488
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 7489
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()Z

    goto :goto_1

    .line 7454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private performActionsOnPreviewSurfaceCreated()V
    .locals 2

    .prologue
    .line 6587
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 6605
    :goto_0
    return-void

    .line 6589
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    .line 6591
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6594
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6597
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initializeCaptureUI()V

    .line 6601
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "Enable GC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6602
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 6604
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverRotateAnimation()V
    .locals 2

    .prologue
    .line 1608
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation(I)V

    .line 1609
    const-string v0, "HTCCamera"

    const-string v1, "recoverRotateAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method private resetTapCapture(II)V
    .locals 1
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 4467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    .line 4468
    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    .line 4469
    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    .line 4470
    return-void
.end method

.method private saveAndFinish(Landroid/net/Uri;[B)V
    .locals 5
    .parameter "contentUri"
    .parameter "data"

    .prologue
    .line 2824
    if-eqz p1, :cond_2

    .line 2826
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - contentUri = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    if-eqz p2, :cond_1

    .line 2829
    const/4 v1, 0x0

    .line 2831
    .local v1, stream:Ljava/io/OutputStream;
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2833
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() file - Check directory path"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    .line 2839
    :cond_0
    :try_start_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Opening file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2841
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2843
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing completed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 2853
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    .end local v1           #stream:Ljava/io/OutputStream;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2866
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 2867
    return-void

    .line 2845
    .restart local v1       #stream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2847
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - Cannot save data to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2851
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 2853
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2851
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - Closing file"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 2853
    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - File closed"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 2857
    .end local v1           #stream:Ljava/io/OutputStream;
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - data = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2860
    :cond_2
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - contentUri = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final saveSDCardState()V
    .locals 3

    .prologue
    .line 5942
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 5943
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v1, "pref_sdcard_state"

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5944
    :cond_0
    return-void
.end method

.method private setFingerGestureEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 8044
    :try_start_0
    const-string v2, "wireless_display"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 8045
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v1, :cond_0

    .line 8046
    invoke-virtual {v1, p1}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8054
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    :goto_0
    return-void

    .line 8049
    :catch_0
    move-exception v0

    .line 8051
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HTCCamera"

    const-string v3, "setFingerGestureEnable - not work"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMaxBrightness()V
    .locals 0

    .prologue
    .line 2878
    return-void
.end method

.method private setOldBrightness()V
    .locals 0

    .prologue
    .line 2889
    return-void
.end method

.method public static declared-synchronized setWaitKeyguardBeforePreview(Z)V
    .locals 2
    .parameter "isWait"

    .prologue
    .line 3028
    const-class v0, Lcom/android/camera/HTCCamera;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3029
    monitor-exit v0

    return-void

    .line 3028
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setupEventHandlers()V
    .locals 2

    .prologue
    .line 6353
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$22;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$22;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6363
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$23;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$23;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6376
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewSurfaceDestroyedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$24;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$24;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6389
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$25;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$25;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6399
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$26;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$26;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6409
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$27;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$27;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 6417
    return-void
.end method

.method private showFocusEnd()V
    .locals 2

    .prologue
    .line 7426
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 7427
    return-void
.end method

.method private showPowerRestrict()V
    .locals 3

    .prologue
    .line 7403
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needShowRestrictAppLaunchString()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7405
    const-string v1, "HTCCamera"

    const-string v2, "show open camera fail toast"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7406
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_0

    .line 7407
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 7408
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x277c

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 7409
    const v1, 0x7f0a005c

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 7410
    .local v0, mLastToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7412
    .end local v0           #mLastToast:Landroid/widget/Toast;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 7419
    return-void
.end method

.method private showStorageToast()V
    .locals 4

    .prologue
    .line 7227
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7274
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7229
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7234
    :cond_2
    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 7270
    :pswitch_1
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown storage state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7239
    :pswitch_2
    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7240
    const v0, 0x20400a0

    .line 7273
    .local v0, resID:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showToast(I)V

    goto :goto_0

    .line 7245
    .end local v0           #resID:I
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7247
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_3

    .line 7248
    const v0, 0x7f0a003c

    .restart local v0       #resID:I
    goto :goto_1

    .line 7250
    .end local v0           #resID:I
    :cond_3
    const v0, 0x7f0a003d

    .restart local v0       #resID:I
    goto :goto_1

    .line 7254
    .end local v0           #resID:I
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_5

    .line 7255
    const v0, 0x7f0a003e

    .restart local v0       #resID:I
    goto :goto_1

    .line 7257
    .end local v0           #resID:I
    :cond_5
    const v0, 0x7f0a003f

    .line 7259
    .restart local v0       #resID:I
    goto :goto_1

    .line 7261
    .end local v0           #resID:I
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-nez v1, :cond_6

    .line 7262
    const v0, 0x7f0a003a

    .restart local v0       #resID:I
    goto :goto_1

    .line 7264
    .end local v0           #resID:I
    :cond_6
    const v0, 0x7f0a003b

    .line 7265
    .restart local v0       #resID:I
    goto :goto_1

    .line 7267
    .end local v0           #resID:I
    :pswitch_5
    const v0, 0x7f0a0039

    .line 7268
    .restart local v0       #resID:I
    goto :goto_1

    .line 7234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startAccelerometer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5128
    const-string v2, "HTCCamera"

    const-string v3, "startAccelerometer() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5131
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    if-nez v2, :cond_0

    .line 5133
    const-string v2, "HTCCamera"

    const-string v3, "startAccelerometer() - CanGSensorEnabled = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5157
    :goto_0
    return-void

    .line 5136
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_2

    .line 5138
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "startAccelerometer() - isAccelerometerStarted = true OR mSensorManager = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5143
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 5145
    .local v1, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 5147
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5148
    const-string v2, "HTCCamera"

    const-string v3, "registerSensor() - Sensor registered"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5154
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5156
    const-string v2, "HTCCamera"

    const-string v3, "startAccelerometer() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5150
    .restart local v1       #sensor:Landroid/hardware/Sensor;
    :cond_5
    const-string v2, "HTCCamera"

    const-string v3, "registerSensor() - Cannot register sensor"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPreview(ZLcom/android/camera/CameraType;I)Z
    .locals 6
    .parameter "directly"
    .parameter "cameraType"
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7825
    const-string v0, "HTCCamera"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "startPreview("

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, ")"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7828
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7830
    const-string v0, "HTCCamera"

    const-string v2, "startPreview() - Preview is already starting"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7831
    const-string v0, "startPreview()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    move v0, v1

    .line 7862
    :goto_0
    return v0

    .line 7834
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7836
    const-string v0, "HTCCamera"

    const-string v2, "startPreview() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7837
    goto :goto_0

    .line 7839
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7841
    const-string v0, "HTCCamera"

    const-string v2, "startPreview() - Activity is paused"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7842
    goto :goto_0

    .line 7844
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_3

    .line 7846
    const-string v0, "HTCCamera"

    const-string v2, "startPreview() - Camera is deactivated"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7847
    goto :goto_0

    .line 7849
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_4

    .line 7851
    const-string v0, "HTCCamera"

    const-string v2, "startPreview() - No camera thread"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7852
    goto :goto_0

    .line 7856
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v3, "Starting preview"

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 7857
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7858
    if-eqz p1, :cond_5

    .line 7859
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->startPreviewDirectly()I

    :goto_1
    move v0, v2

    .line 7862
    goto :goto_0

    .line 7861
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;I)I

    goto :goto_1
.end method

.method private stopAccelerometer()V
    .locals 5

    .prologue
    .line 5164
    const-string v2, "HTCCamera"

    const-string v3, "stopAccelerometer() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5167
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_1

    .line 5169
    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "stopAccelerometer() - isAccelerometerStarted = false OR mSensorManager = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5186
    :goto_0
    return-void

    .line 5174
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 5176
    .local v1, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 5178
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 5182
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5183
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [F

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5185
    const-string v2, "HTCCamera"

    const-string v3, "stopAccelerometer() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopNotesRecording()V
    .locals 3

    .prologue
    .line 5932
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5933
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5934
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 5935
    return-void
.end method

.method private stopRecordingIndicator()V
    .locals 2

    .prologue
    .line 3617
    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3623
    :cond_0
    return-void
.end method

.method private switch3DMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1500
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v0, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 1510
    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-ne v0, v3, :cond_4

    .line 1523
    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1527
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    .line 1528
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_5

    .line 1530
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    .line 1539
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    goto :goto_0

    .line 1525
    :cond_4
    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1537
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_2
.end method

.method private threadAccessCheck()V
    .locals 2

    .prologue
    .line 5738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 5739
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5740
    :cond_0
    return-void
.end method

.method private triggerTakePicture()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3629
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v5, "[press_jogball]take_picture"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3631
    const-string v2, "HTCCamera"

    const-string v5, "triggerTakePicture() - start"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    iput-object v7, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 3636
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3637
    const-string v2, "HTCCamera"

    const-string v4, "triggerTakePicture() - end, UI Block !!!"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3726
    :goto_0
    return v2

    .line 3641
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 3642
    goto :goto_0

    .line 3645
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v4, :cond_2

    .line 3647
    const-string v2, "HTCCamera"

    const-string v4, "triggerTakePicture() - end, 3D portrait capture !!!"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3650
    goto :goto_0

    .line 3652
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 3655
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3657
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v2, v5, :cond_4

    .line 3658
    sget-object v2, Lcom/android/camera/TakingPictureFailedReason;->StorageError:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/TakingPictureFailedReason;)V

    .line 3661
    const-string v2, "HTCCamera"

    const-string v4, "Storage_Status != STORAGE_OK - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    move v2, v3

    .line 3663
    goto :goto_0

    .line 3668
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3669
    const-string v2, "HTCCamera"

    const-string v4, "triggerTakePicture() - end, PowerWarning !!!"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3670
    goto :goto_0

    .line 3672
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 3674
    const-string v2, "HTCCamera"

    const-string v5, "Block Capture UI - Take Picture"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v5, "Taking picture"

    invoke-interface {v2, v5, v4}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 3676
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 3679
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    .line 3680
    .local v0, isPhotoMode:Z
    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v2}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v1

    .line 3692
    .local v1, timer:I
    :goto_1
    if-eqz v0, :cond_6

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3693
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 3697
    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3699
    if-gtz v1, :cond_b

    .line 3700
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    .line 3701
    const-string v2, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "triggerTakePicture mFocusingState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    const-string v2, "HTCCamera"

    const-string v5, "Freeze UI - Take Picture"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v2, :cond_7

    .line 3705
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v5, "Taking picture"

    invoke-interface {v2, v5, v7}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    .line 3709
    :cond_7
    if-eqz v0, :cond_8

    .line 3710
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3711
    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3723
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v8, v3, v3, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 3725
    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 3726
    goto/16 :goto_0

    .end local v1           #timer:I
    :cond_a
    move v1, v3

    .line 3680
    goto :goto_1

    .line 3716
    .restart local v1       #timer:I
    :cond_b
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_9

    .line 3718
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v5, 0x7f060008

    invoke-interface {v2, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    .line 3719
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v5, 0x7f060009

    invoke-interface {v2, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;

    goto :goto_2
.end method

.method private updateRecordingTime()V
    .locals 12

    .prologue
    .line 6914
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6917
    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v8, :cond_0

    .line 6919
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - mIsUIReady = false"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6997
    :goto_0
    return-void

    .line 6922
    :cond_0
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v8, v9, :cond_1

    .line 6924
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - isRecording = false"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6929
    :cond_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v4, v8, v10

    .line 6930
    .local v4, seconds:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    sub-long v0, v8, v10

    .line 6931
    .local v0, mCurrentRecordTime_System:J
    const-wide/16 v8, 0x3e8

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 6932
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    sub-long v10, v0, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 6933
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x320

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 6934
    const-wide/16 v8, 0x320

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 6941
    :cond_2
    :goto_1
    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    .line 6943
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6944
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v8, v9}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 6945
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 6949
    :cond_3
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6952
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v9, 0x24

    invoke-static {v8, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6954
    const-wide/16 v2, 0x0

    .line 6955
    .local v2, remain_time:J
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_6

    .line 6956
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getRecordingTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v2

    .line 6963
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_7

    const/4 v7, 0x1

    .line 6964
    .local v7, timeout:Z
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_8

    .line 6965
    :cond_4
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/MessageHandler;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 6996
    :goto_4
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6935
    .end local v2           #remain_time:J
    .end local v7           #timeout:Z
    :cond_5
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 6936
    const-wide/16 v8, 0x3e8

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    goto :goto_1

    .line 6958
    .restart local v2       #remain_time:J
    :cond_6
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    invoke-virtual {v8, v4, v5}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v2

    goto :goto_2

    .line 6963
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 6969
    .restart local v7       #timeout:Z
    :cond_8
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    invoke-virtual {v8}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v6

    .line 6970
    .local v6, state:I
    packed-switch v6, :pswitch_data_0

    .line 6990
    const-string v8, "HTCCamera"

    const-string v9, "should not enter this state !!!!!!!!!!!!!!!!"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6991
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/MessageHandler;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 6973
    :pswitch_0
    const-string v8, "HTCCamera"

    const-string v9, "reach file size limit - stop to update recording indicator"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 6976
    :pswitch_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x16

    invoke-static {v8, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6977
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    invoke-virtual {v8}, Lcom/android/camera/RecordLimitCheck;->getUseTimeOut_API()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 6978
    const-string v8, "HTCCamera"

    const-string v9, "ui reach time limit - wait api reach time limit"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 6981
    :cond_9
    const-string v8, "HTCCamera"

    const-string v9, "ui reach time limit - and not use api"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6985
    :pswitch_2
    const-string v8, "HTCCamera"

    const-string v9, "reach time limit to stop recorder"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6986
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_4

    .line 6970
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRotateViews(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_IsToastShownEnd:Z

    if-nez v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 1574
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 1576
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x277d

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1578
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x277c

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1580
    :cond_0
    return-void
.end method


# virtual methods
.method public IsFirstTimeLaunch()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2902
    const-string v1, "pref_first_time_launch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->ContainsKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2909
    :cond_0
    :goto_0
    return v0

    .line 2904
    :cond_1
    const-string v1, "pref_first_time_launch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2909
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public RequestVideoQualityLevel()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 3011
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 3012
    const-string v1, "HTCCamera"

    const-string v2, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    :cond_0
    :goto_0
    return v0

    .line 3016
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3019
    :cond_2
    invoke-static {}, Lcom/android/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3020
    const/4 v0, 0x1

    goto :goto_0

    .line 3022
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public activate()V
    .locals 2

    .prologue
    .line 4954
    const-string v0, "HTCCamera"

    const-string v1, "activate!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4955
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 4956
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "activate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4998
    :goto_0
    return-void

    .line 4960
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 4961
    const-string v0, "HTCCamera"

    const-string v1, "activate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4965
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    .line 4966
    const-string v0, "HTCCamera"

    const-string v1, "activate in mIdle == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4970
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4972
    const-string v0, "HTCCamera"

    const-string v1, "activate() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4976
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 4977
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 4978
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4980
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4981
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4982
    const-string v0, "HTCCamera"

    const-string v1, "addFlags FLAG_SHOW_WHEN_LOCKED activate"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4983
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4988
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - activate!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4990
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 4991
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4992
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    .line 4993
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 4994
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    .line 4997
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z
    .locals 2
    .parameter "focusMode"
    .parameter "focusPoint"

    .prologue
    const/4 v0, 0x0

    .line 4618
    if-nez p2, :cond_0

    .line 4620
    const-string v1, "focusPoint"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4625
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z
    .locals 1
    .parameter "focusMode"
    .parameter "focusPoints"

    .prologue
    .line 4629
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "focusMode"
    .parameter "focusAreas"

    .prologue
    .line 4633
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<*>;",
            "Lcom/android/camera/property/Property",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 7611
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    .local p2, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7614
    if-nez p1, :cond_0

    .line 7616
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 7617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7619
    :cond_0
    if-nez p2, :cond_1

    .line 7621
    const-string v0, "target"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 7622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7624
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7626
    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Cannot bind from HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7629
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7631
    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Can only bind to HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 7636
    :cond_3
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7637
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 7638
    return-void
.end method

.method public canFaceFocus()Z
    .locals 2

    .prologue
    .line 4411
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4413
    :cond_0
    const/4 v0, 0x0

    .line 4415
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4376
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    move v1, v2

    .line 4407
    :goto_0
    return v1

    .line 4379
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v1, :cond_1

    move v1, v2

    .line 4380
    goto :goto_0

    .line 4382
    :cond_1
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    if-lez v1, :cond_2

    move v1, v2

    .line 4383
    goto :goto_0

    .line 4386
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-gtz v1, :cond_3

    .line 4387
    const-string v1, "pref_camera_auto_focus"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4389
    .local v0, openAutoFocus:Z
    if-nez v0, :cond_3

    move v1, v2

    .line 4390
    goto :goto_0

    .line 4397
    .end local v0           #openAutoFocus:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 4398
    goto :goto_0

    .line 4400
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 4401
    goto :goto_0

    .line 4403
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move v1, v2

    .line 4405
    goto :goto_0

    :cond_7
    move v1, v3

    .line 4407
    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4340
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 4371
    :goto_0
    return v0

    .line 4343
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    move v0, v1

    .line 4344
    goto :goto_0

    .line 4353
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4354
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 4355
    goto :goto_0

    .line 4358
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 4368
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 4371
    goto/16 :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4498
    const-string v2, "HTCCamera"

    const-string v3, "cancelAutoFocus() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4500
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v2, :cond_0

    .line 4502
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - No focusing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4531
    :goto_0
    return v0

    .line 4506
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4507
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4508
    goto :goto_0

    .line 4511
    :cond_1
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v0, :cond_2

    .line 4512
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4513
    goto :goto_0

    .line 4516
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4519
    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 4521
    sput-boolean v1, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 4523
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->cancelAutoFocus()V

    .line 4525
    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 4526
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 4527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    .line 4529
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 5659
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5660
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5662
    const-string v0, "HTCCamera"

    const-string v1, "changeZoom() - Zoom is locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5673
    :goto_0
    return-void

    .line 5665
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 5667
    const-string v0, "HTCCamera"

    const-string v1, "changeZoom() - There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5672
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto :goto_0
.end method

.method public final closeActionScreen()V
    .locals 2

    .prologue
    .line 5473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 5477
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    .line 5479
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5490
    :goto_0
    return-void

    .line 5484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    goto :goto_0

    .line 5486
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 5487
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5489
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Cannot close action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeDialog()V
    .locals 3

    .prologue
    .line 7742
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7743
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 7745
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 7746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    .line 7748
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7749
    return-void
.end method

.method public final closeSelfTimer()V
    .locals 3

    .prologue
    .line 3582
    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3585
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3587
    const-string v0, "HTCCamera"

    const-string v1, "Self timer is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    :goto_0
    return-void

    .line 3590
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3593
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    if-ne v0, v1, :cond_1

    .line 3595
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3596
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3601
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 3603
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 3606
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 3607
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 3609
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - close self timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3610
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 3611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    .line 3613
    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3598
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final completeRecording()V
    .locals 3

    .prologue
    .line 5390
    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CameraMode;J)V

    .line 5391
    return-void
.end method

.method public final completeTakingPicture()V
    .locals 3

    .prologue
    .line 5382
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CameraMode;J)V

    .line 5383
    return-void
.end method

.method public final completeTakingPicture(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 5386
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CameraMode;J)V

    .line 5387
    return-void
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5001
    const-string v1, "HTCCamera"

    const-string v2, "deactivate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5002
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5003
    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5079
    :goto_0
    return-void

    .line 5007
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 5008
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5012
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v3, :cond_3

    .line 5013
    const-string v1, "HTCCamera"

    const-string v2, "deactivate in mIdle = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5018
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5020
    const-string v1, "HTCCamera"

    const-string v2, "deactivate() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5024
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 5027
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 5029
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v1, :cond_5

    .line 5030
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5031
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 5032
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v2, Lcom/android/camera/HTCCamera$15;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$15;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5039
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v2, 0x7f0800e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 5040
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 5043
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_7

    .line 5044
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_6

    .line 5045
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0197

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5056
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 5057
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5059
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 5062
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5064
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5065
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 5066
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    .line 5067
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 5069
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 5072
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    .line 5075
    iget-wide v1, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    .line 5078
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 5047
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0194

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 5049
    :cond_7
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_8

    .line 5050
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0196

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 5052
    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0193

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final disableActionScreen()V
    .locals 1

    .prologue
    .line 5366
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    .line 5367
    return-void
.end method

.method public final disableFlash()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3521
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 3528
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 3531
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-ne v0, v2, :cond_0

    .line 3533
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3534
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 3535
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 3537
    :cond_0
    return-void
.end method

.method public final disableSelfTimer()V
    .locals 2

    .prologue
    .line 6330
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 6337
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 6340
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval(Z)V

    .line 6345
    :cond_0
    return-void
.end method

.method public final disableSensorFocus()V
    .locals 1

    .prologue
    .line 4561
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    .line 4562
    return-void
.end method

.method public final disableTouchFocus()V
    .locals 1

    .prologue
    .line 4577
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 4578
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 5083
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 5086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 5087
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 5089
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 5094
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 5097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    .line 5103
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/input/MotionEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5106
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 5100
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_0
.end method

.method public doOnPause()V
    .locals 3

    .prologue
    .line 2270
    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 2273
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    .line 2275
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 2277
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x277c

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2279
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2280
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 2282
    :cond_1
    const-string v1, "HTCCamera"

    const-string v2, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2290
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2291
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2294
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2295
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2300
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v1, :cond_4

    .line 2301
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v1}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    .line 2307
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-static {v2, v1}, Lcom/android/camera/CameraStorageLocationSettings;->writeToDatabase(Landroid/content/ContentResolver;Lcom/android/camera/io/StorageSlot;)V

    .line 2308
    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    return-void

    .line 2297
    :catch_0
    move-exception v0

    .line 2298
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HTCCamera"

    const-string v2, "unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final enableActionScreen()V
    .locals 2

    .prologue
    .line 5349
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    .line 5351
    const-string v0, "HTCCamera"

    const-string v1, "Try to enable action screen, but counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    const-string v0, "enableActionScreen()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 5358
    :goto_0
    return-void

    .line 5357
    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    goto :goto_0
.end method

.method public final enableFlash()V
    .locals 3

    .prologue
    .line 3545
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 3548
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    .line 3561
    :cond_0
    :goto_0
    return-void

    .line 3552
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 3555
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-nez v0, :cond_0

    .line 3557
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3558
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 3559
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public enableGeoTagging(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 5111
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-nez v0, :cond_0

    .line 5121
    :goto_0
    return-void

    .line 5114
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 5117
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 5119
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.method public final enableSelfTimer()V
    .locals 1

    .prologue
    .line 6307
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 6310
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_1

    .line 6322
    :cond_0
    :goto_0
    return-void

    .line 6314
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 6317
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    .line 6320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval(Z)V

    goto :goto_0
.end method

.method public final enableSensorFocus()V
    .locals 1

    .prologue
    .line 4569
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    .line 4570
    return-void
.end method

.method public final enableTouchFocus(Z)V
    .locals 4
    .parameter "takeFocus"

    .prologue
    .line 4585
    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 4586
    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v2, :cond_0

    if-eqz p1, :cond_0

    .line 4589
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    if-ne v2, v3, :cond_1

    .line 4591
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v2, 0x2

    .line 4592
    .local v0, x:I
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v2, 0x2

    .line 4599
    .local v1, y:I
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    .line 4601
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void

    .line 4596
    :cond_1
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v2, 0x2

    .line 4597
    .restart local v0       #x:I
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_0
.end method

.method public final getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    return-object v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1

    .prologue
    .line 5217
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    return v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 5747
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public final getCaptureUiContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 7993
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    .line 5771
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentFactory()Lcom/android/camera/component/UIComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/UIComponentFactory;
    .locals 1

    .prologue
    .line 5755
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/UIComponentManager;
    .locals 1

    .prologue
    .line 5763
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    return-object v0
.end method

.method public final getEffectManager()Lcom/android/camera/effect/EffectManager;
    .locals 1

    .prologue
    .line 5951
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method public getFaceNumber()I
    .locals 2

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 3475
    :cond_0
    const/4 v0, 0x0

    .line 3477
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    goto :goto_0
.end method

.method public getFocusingState()I
    .locals 1

    .prologue
    .line 4419
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getPreviewSurfaceHitRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 6801
    const/4 v1, 0x0

    .line 6802
    .local v1, rect:Landroid/graphics/Rect;
    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 6803
    .local v0, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->queryPreviewSurfaceHitRectEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6804
    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6805
    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #rect:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 6806
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_0
    if-nez v1, :cond_1

    .line 6807
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #rect:Landroid/graphics/Rect;
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6808
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_1
    return-object v1
.end method

.method public getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;
    .locals 1

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method public final getRequestScene()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->getRequestScene()Ljava/lang/String;

    move-result-object v0

    .line 2980
    :goto_0
    return-object v0

    .line 2979
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "getRequestScene() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSessionID()J
    .locals 2

    .prologue
    .line 5338
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    return-wide v0
.end method

.method public final getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    .prologue
    .line 7601
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public bridge synthetic getSettings()Lcom/android/camera/Settings;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getStartMode()Lcom/android/camera/CameraStartMode;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    return-object v0
.end method

.method public final getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public final getSurfaceStateSyncRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method public final getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;
    .locals 1

    .prologue
    .line 7281
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    return-object v0
.end method

.method public handleSensorFocus()Z
    .locals 1

    .prologue
    .line 4536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    move-result v0

    return v0
.end method

.method public handleSensorFocus(Z)Z
    .locals 9
    .parameter "checkFaces"

    .prologue
    const/high16 v2, 0x3f00

    .line 4539
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 4542
    .local v6, focusPoint:Landroid/graphics/PointF;
    if-nez v6, :cond_0

    .line 4543
    new-instance v6, Landroid/graphics/PointF;

    .end local v6           #focusPoint:Landroid/graphics/PointF;
    invoke-direct {v6, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4546
    .restart local v6       #focusPoint:Landroid/graphics/PointF;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v8

    .line 4547
    .local v8, screenFocusPoint:Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4548
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4550
    :cond_1
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v7

    .line 4552
    .local v7, result:Z
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus("

    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ","

    iget v4, v8, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") - end"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4553
    return v7
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 4268
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 4272
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 4273
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4274
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 4275
    const-string v0, "HTCCamera"

    const-string v2, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4278
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4279
    const-string v0, "HTCCamera"

    const-string v2, "onTouchEvent - UI Block !!!"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4335
    :goto_0
    return v0

    .line 4283
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v0, v1, :cond_2

    .line 4284
    const-string v0, "HTCCamera"

    const-string v2, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4285
    goto :goto_0

    .line 4288
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4335
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 4291
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 4293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_1

    .line 4299
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v0, v1, :cond_3

    .line 4302
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isTapCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4309
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v0, :cond_4

    .line 4313
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->effectControlState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    .line 4319
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->checkTapCapture(II)V

    goto/16 :goto_1

    .line 4316
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "ACTION_MOVE, isEffectControlVisible == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4325
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v0, v1, :cond_3

    .line 4329
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v0, :cond_3

    .line 4330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    goto/16 :goto_1

    .line 4288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchFocus(II)Z
    .locals 5
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v1, 0x0

    .line 4931
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchFocus - X: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4933
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4935
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4936
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v2, :cond_0

    .line 4937
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 4938
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x277c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4940
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v3, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4942
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 4943
    .local v0, focusPoint:Landroid/graphics/PointF;
    if-eqz v0, :cond_1

    .line 4944
    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v1

    .line 4946
    :goto_0
    return v1

    .line 4945
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - touch point not in mSurfaceView"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final hasFlash()Z
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 8111
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 5
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8115
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 8117
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x27d8

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8118
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    .line 8120
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8132
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 8123
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8125
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8126
    const-string v1, "HTCCamera"

    const-string v3, "invokeAsync() - Fail to post to UI thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 8127
    goto :goto_0

    .line 8131
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    const-string v1, "HTCCamera"

    const-string v3, "invokeAsync() - No UI thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 8132
    goto :goto_0
.end method

.method public final is3DCameraActivated()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6215
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 6217
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final isActionScreenEnabled()Z
    .locals 1

    .prologue
    .line 5374
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 2

    .prologue
    .line 2954
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/UIState;

    .line 2955
    .local v0, state:Lcom/android/camera/UIState;
    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    .prologue
    .line 2914
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isAutoFocusing()Z
    .locals 1

    .prologue
    .line 4926
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    .prologue
    .line 6284
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isFastShotToShotMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 7545
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v1, :cond_1

    .line 7588
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 7549
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    .line 7553
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7557
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7559
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7561
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7567
    :cond_2
    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 7576
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isTapCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7587
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 7588
    .local v0, scene:Lcom/android/camera/effect/EffectBase;
    instance-of v1, v0, Lcom/android/camera/effect/BurstScene;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/android/camera/effect/SmartShotScene;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/android/camera/effect/PanoramaScene;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/android/camera/effect/HdrScene;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 7567
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isIdle()Z
    .locals 1

    .prologue
    .line 5322
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method public final isIdleOrPaused()Z
    .locals 1

    .prologue
    .line 5330
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInMirrorMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 8001
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8015
    :cond_0
    :goto_0
    return v2

    .line 8006
    :cond_1
    :try_start_0
    const-string v3, "wireless_display"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 8007
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v1, :cond_0

    .line 8008
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 8012
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v0

    .line 8014
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HTCCamera"

    const-string v4, "isInMirrorMode() - Error while getting mirror display status"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPowerWarning()Z
    .locals 1

    .prologue
    .line 6293
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 2984
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 2985
    const-string v1, "HTCCamera"

    const-string v2, "isRequestMode() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    :cond_0
    :goto_0
    return v0

    .line 2989
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, p1, :cond_0

    .line 2990
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 2996
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 2997
    const-string v1, "HTCCamera"

    const-string v2, "isRequestName() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    :cond_0
    :goto_0
    return v0

    .line 3001
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    if-ne v1, p1, :cond_0

    .line 3002
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isSelfPortraitTask()Z
    .locals 1

    .prologue
    .line 3137
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isServiceMode()Z
    .locals 1

    .prologue
    .line 5650
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    return v0
.end method

.method public final isSlowMotionMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5277
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 5280
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final isSurfaceAvailable()Z
    .locals 1

    .prologue
    .line 2935
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    return v0
.end method

.method public final lockZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5680
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5683
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5688
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    .line 5689
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-le v0, v2, :cond_0

    .line 5702
    :goto_0
    return-void

    .line 5693
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 5694
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    .line 5699
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5701
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5696
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final needsActionScreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5297
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5310
    :cond_0
    :goto_0
    return v1

    .line 5300
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 5301
    goto :goto_0

    .line 5303
    :cond_2
    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v3, :cond_3

    move v1, v2

    .line 5304
    goto :goto_0

    .line 5306
    :cond_3
    iget v3, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-gtz v3, :cond_0

    .line 5309
    const-string v3, "pref_camera_review_duration"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5310
    .local v0, review:Ljava/lang/String;
    const-string v3, "2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "3s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "5s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "10s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "no_limit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 7
    .parameter "normalizedPoint"

    .prologue
    .line 4900
    if-nez p1, :cond_0

    .line 4901
    const/4 v3, 0x0

    .line 4918
    :goto_0
    return-object v3

    .line 4904
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4908
    .local v0, previewBounds:Landroid/graphics/Rect;
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4910
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 4911
    .local v1, x:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 4918
    .local v2, y:I
    :goto_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 4915
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 4916
    .restart local v1       #x:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .restart local v2       #y:I
    goto :goto_1
.end method

.method public final notifyPopupBubbleClosed()V
    .locals 3

    .prologue
    .line 7912
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7915
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_1

    .line 7917
    const-string v0, "HTCCamera"

    const-string v1, "notifyPopupBubbleClosed() - Counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7918
    const-string v0, "notifyPopupBubbleClosed()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 7926
    :cond_0
    :goto_0
    return-void

    .line 7923
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    .line 7924
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_0

    .line 7925
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final notifyPopupBubbleOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7930
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7935
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    .line 7936
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-ne v0, v2, :cond_0

    .line 7937
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7938
    :cond_0
    return-void
.end method

.method public final notifyProcessingTakenPictures()V
    .locals 3

    .prologue
    .line 7145
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7146
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    if-eq v0, v1, :cond_0

    .line 7148
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProcessingTakenPictures() - current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7154
    :goto_0
    return-void

    .line 7153
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Processing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 2517
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    if-eq p2, v3, :cond_0

    .line 2542
    :goto_0
    return-void

    .line 2521
    :cond_0
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2539
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Unsupported REQUEST_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2523
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 2528
    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 2529
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 2535
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0, p3}, Lcom/android/camera/AutoUploader;->handleAutoUploadSettingResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 2521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 2556
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2557
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged LANDSCAPE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    iput v2, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 2569
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2570
    return-void

    .line 2561
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 2562
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged PORTRAIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    goto :goto_0

    .line 2567
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged Other"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1056
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[press_widget]launch"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v3, "HTCCamera"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    :try_start_0
    const-string v3, "HTCCamera"

    const-string v4, "Initial remote screen orientation"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :cond_0
    :goto_0
    new-instance v3, Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-direct {v3, p0, v8}, Lcom/android/camera/HTCCamera$TVDisplayListener;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    .line 1075
    new-instance v3, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-direct {v3, v4, v5}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1084
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    .line 1087
    new-instance v3, Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v3, p0, v8}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    .line 1090
    new-instance v3, Lcom/android/camera/IntentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v3, p0, v4}, Lcom/android/camera/IntentManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 1091
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->checkStartMode(Landroid/content/Intent;)V

    .line 1097
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1100
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1103
    new-instance v3, Lcom/android/camera/CameraSettings;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    .line 1106
    new-instance v4, Lcom/android/camera/CameraThread;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraMode;

    invoke-direct {v4, p0, v5, v3}, Lcom/android/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/camera/CameraMode;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 1107
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->start()V

    .line 1110
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v3, p0}, Lcom/android/camera/CameraSettings;->bindPreferences(Lcom/android/camera/HTCCamera;)V

    .line 1117
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->requestWindowFeature(I)Z

    .line 1118
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->setContentView(I)V

    .line 1121
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-virtual {v3}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 1123
    new-instance v3, Lcom/android/camera/AutoUploader;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/camera/AutoUploader;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 1126
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1128
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v6, :cond_1

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v6, :cond_1

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v6, :cond_1

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1132
    :cond_1
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    .line 1133
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1135
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v3, :cond_7

    .line 1136
    iput v6, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    .line 1139
    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 1141
    iget v3, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v3, v6, :cond_8

    .line 1142
    const-string v3, "pref_camera_3D_status"

    invoke-static {p0, v3, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1145
    :goto_2
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial m3DButtonStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1148
    .local v1, interruptingEventsFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1149
    const/16 v3, 0x3e9

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1152
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1162
    .end local v1           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :goto_3
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 1166
    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1169
    const-string v3, "pref_camera_self_portrait"

    invoke-static {p0, v3, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1170
    const-string v3, "pref_camera_self_timer"

    const-string v4, "none"

    invoke-static {p0, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1172
    const-string v3, "pref_smile_capture"

    invoke-static {p0, v3, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1173
    const-string v3, "pref_camera_face_number"

    const-string v4, "none"

    invoke-static {p0, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1175
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    .line 1177
    sput-boolean v6, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 1181
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1182
    .local v2, theWindow:Landroid/view/Window;
    invoke-virtual {v2, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1185
    new-instance v3, Lcom/android/camera/effect/EffectManager;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectManager;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    .line 1188
    new-instance v3, Lcom/android/camera/component/UIComponentFactory;

    invoke-direct {v3, p0}, Lcom/android/camera/component/UIComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    .line 1189
    new-instance v3, Lcom/android/camera/component/UIComponentManager;

    invoke-direct {v3, p0}, Lcom/android/camera/component/UIComponentManager;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    .line 1190
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    .line 1191
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    sget-object v4, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1194
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v4, Lcom/android/camera/IAudioManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IAudioManager;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 1195
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-nez v3, :cond_4

    .line 1196
    const-string v3, "HTCCamera"

    const-string v4, "onCreate() - Cannot find IAudioManager interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_4
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1200
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1201
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1202
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1203
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1206
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setupEventHandlers()V

    .line 1209
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v3, :cond_5

    .line 1211
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1212
    new-instance v3, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 1215
    :goto_4
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    .line 1219
    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v4, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ICaptureUIBlockManager;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    .line 1220
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    if-nez v3, :cond_6

    .line 1222
    const-string v3, "HTCCamera"

    const-string v4, "onCreate() - [Fatal] No ICaptureUIBlockManager interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 1227
    :cond_6
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x38

    const-wide/16 v5, 0x1388

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1228
    return-void

    .line 1067
    .end local v2           #theWindow:Landroid/view/Window;
    :catch_0
    move-exception v0

    .line 1069
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "HTCCamera"

    const-string v4, "Rotate remote Camera layout may not support"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_1

    .line 1144
    :cond_8
    const-string v3, "pref_camera_3D_status"

    invoke-static {p0, v3, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 1153
    .restart local v1       #interruptingEventsFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v0

    .line 1154
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HTCCamera"

    const-string v4, "registerReceiver failed!!"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1159
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :cond_9
    const-string v3, "pref_camera_3D_status"

    invoke-static {p0, v3, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 1214
    .restart local v2       #theWindow:Landroid/view/Window;
    :cond_a
    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1981
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2340
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[press_back]close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, v2, v2, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2348
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2349
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$10;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2360
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2364
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 2366
    :cond_0
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 2367
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    .line 2369
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2370
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[close_camera]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    return-void

    .line 2356
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/16 v5, 0x25

    const/4 v3, 0x1

    .line 3882
    new-instance v0, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 3883
    .local v0, e:Lcom/android/camera/input/KeyEventArgs;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3884
    invoke-virtual {v0}, Lcom/android/camera/input/KeyEventArgs;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3886
    const-string v2, "HTCCamera"

    const-string v4, "KeyDown event is handled by event handler"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4199
    :goto_0
    return v2

    .line 3891
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 3892
    goto :goto_0

    .line 3895
    :cond_1
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v3, :cond_2

    .line 3896
    sparse-switch p1, :sswitch_data_0

    .line 4007
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v2, v4, :cond_e

    .line 4010
    :cond_3
    const/16 v2, 0x19

    if-eq v2, p1, :cond_4

    if-ne v8, p1, :cond_e

    :cond_4
    move v2, v3

    .line 4012
    goto :goto_0

    .line 3898
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 3899
    sput-boolean v3, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_1

    .line 3903
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v3

    .line 3904
    goto :goto_0

    .line 3906
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_6

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v2, :cond_2

    .line 3910
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v2, v4, :cond_7

    .line 3911
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3912
    const-string v2, "HTCCamera"

    const-string v4, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3916
    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_9

    .line 3917
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    .line 3918
    goto :goto_0

    .line 3920
    :cond_8
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 3921
    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    :goto_2
    move v2, v3

    .line 3930
    goto/16 :goto_0

    .line 3925
    :cond_9
    const-string v2, "HTCCamera"

    const-string v4, "Press Record when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3928
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_2

    .line 3933
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_a

    move v2, v3

    .line 3934
    goto/16 :goto_0

    .line 3939
    :cond_a
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_b

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v2, :cond_b

    .line 3942
    const v1, 0x7f0a01a3

    .line 3943
    .local v1, str:I
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3944
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v2, v5, v1, v7, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3948
    .end local v1           #str:I
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v2, v4, :cond_c

    .line 3949
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3950
    const-string v2, "HTCCamera"

    const-string v4, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3957
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v3, :cond_d

    .line 3959
    const-string v2, "HTCCamera"

    const-string v4, "onKeyDown, 3D portrait capture !!!"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3965
    :cond_d
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 3967
    const-string v2, "HTCCamera"

    const-string v4, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3970
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    move v2, v3

    .line 3973
    goto/16 :goto_0

    .line 3992
    :sswitch_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 3993
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3994
    const-string v2, "HTCCamera"

    const-string v4, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4002
    :sswitch_5
    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v2, v4, :cond_2

    move v2, v3

    .line 4003
    goto/16 :goto_0

    .line 4015
    :cond_e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4016
    const/16 v2, 0x19

    if-eq v2, p1, :cond_f

    if-ne v8, p1, :cond_10

    .line 4018
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 4020
    :cond_10
    const-string v2, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown - UI Block !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4021
    goto/16 :goto_0

    .line 4025
    :cond_11
    sparse-switch p1, :sswitch_data_1

    .line 4199
    :cond_12
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 4029
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ne v2, v6, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v2

    if-ne v2, v3, :cond_12

    .line 4030
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    .line 4031
    sput-boolean v3, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_3

    .line 4038
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_13

    move v2, v3

    .line 4039
    goto/16 :goto_0

    .line 4041
    :cond_13
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v2, v3, :cond_16

    .line 4042
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v2, v4, :cond_14

    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v2, v4, :cond_15

    .line 4045
    :cond_14
    const-string v2, "HTCCamera"

    const-string v4, "screen save mode -- action key pressed so activate camera"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4046
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 4048
    :cond_15
    const-string v2, "HTCCamera"

    const-string v4, "save screen - block camcorder key"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4049
    goto/16 :goto_0

    .line 4053
    :cond_16
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v3

    .line 4055
    goto/16 :goto_0

    .line 4058
    :cond_17
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v2, v3, :cond_18

    .line 4059
    const-string v2, "HTCCamera"

    const-string v4, "SIP is shown, not handle center button"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4060
    goto/16 :goto_0

    .line 4063
    :cond_18
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_1a

    .line 4064
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v3

    .line 4065
    goto/16 :goto_0

    .line 4066
    :cond_19
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 4067
    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    :goto_4
    move v2, v3

    .line 4073
    goto/16 :goto_0

    .line 4070
    :cond_1a
    const-string v2, "HTCCamera"

    const-string v4, "Press camcorder button to start video recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4071
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_4

    .line 4078
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1b

    move v2, v3

    .line 4079
    goto/16 :goto_0

    .line 4084
    :cond_1b
    :sswitch_9
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v2, v3, :cond_1e

    .line 4085
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v2, v4, :cond_1c

    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v2, v4, :cond_1d

    .line 4088
    :cond_1c
    const-string v2, "HTCCamera"

    const-string v4, "screen save mode -- action key pressed so activate camera"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 4091
    :cond_1d
    const-string v2, "HTCCamera"

    const-string v4, "save screen - block capture key"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4092
    goto/16 :goto_0

    .line 4096
    :cond_1e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4097
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v2, v3

    .line 4098
    goto/16 :goto_0

    .line 4101
    :cond_1f
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v2, v3, :cond_20

    .line 4102
    const-string v2, "HTCCamera"

    const-string v4, "SIP is shown, not handle center button"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4103
    goto/16 :goto_0

    .line 4106
    :cond_20
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_22

    .line 4108
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_21

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v2, :cond_21

    .line 4111
    const v1, 0x7f0a01a3

    .line 4112
    .restart local v1       #str:I
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4113
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v5, v1, v7, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_3

    .line 4117
    .end local v1           #str:I
    :cond_21
    const-string v2, "HTCCamera"

    const-string v4, "Press center button to take picture"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4118
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()Z

    :goto_5
    move v2, v3

    .line 4124
    goto/16 :goto_0

    .line 4121
    :cond_22
    const-string v2, "HTCCamera"

    const-string v4, "Press center button to start video recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_5

    .line 4130
    :sswitch_a
    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v2, v4, :cond_23

    move v2, v3

    .line 4131
    goto/16 :goto_0

    .line 4136
    :cond_23
    :sswitch_b
    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v2, v4, :cond_24

    move v2, v3

    .line 4137
    goto/16 :goto_0

    .line 4143
    :cond_24
    :sswitch_c
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v2, v4, :cond_25

    .line 4144
    const-string v2, "HTCCamera"

    const-string v4, "Press back key to stop video recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    move v2, v3

    .line 4146
    goto/16 :goto_0

    .line 4150
    :cond_25
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4151
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v2, v3

    .line 4152
    goto/16 :goto_0

    .line 4155
    :cond_26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ge v2, v3, :cond_12

    .line 4159
    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-ne v2, v3, :cond_12

    .line 4160
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v2}, Lcom/android/camera/IntentManager;->isFromCamcorder()Z

    move-result v2

    if-ne v2, v3, :cond_27

    .line 4162
    const-string v2, "HTCCamera"

    const-string v4, "go Back - to finish CamcoderEntry"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    :goto_6
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_3

    .line 4165
    :cond_27
    const-string v2, "HTCCamera"

    const-string v4, "go Back - to finish CameraEntry"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4176
    :sswitch_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_28

    move v2, v3

    .line 4177
    goto/16 :goto_0

    .line 4179
    :cond_28
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_29

    .line 4180
    const-string v2, "HTCCamera"

    const-string v4, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4181
    goto/16 :goto_0

    .line 4184
    :cond_29
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    if-ne v2, v4, :cond_2a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4188
    :cond_2a
    const-string v2, "HTCCamera"

    const-string v4, "!! Menu Key block !!"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 4189
    goto/16 :goto_0

    :cond_2b
    move v2, v3

    .line 4192
    goto/16 :goto_0

    :sswitch_e
    move v2, v3

    .line 4195
    goto/16 :goto_0

    .line 3896
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x17 -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_3
        0x50 -> :sswitch_0
        0xe4 -> :sswitch_1
    .end sparse-switch

    .line 4025
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x17 -> :sswitch_9
        0x1b -> :sswitch_8
        0x42 -> :sswitch_9
        0x50 -> :sswitch_6
        0x52 -> :sswitch_d
        0x54 -> :sswitch_e
        0xe4 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4208
    new-instance v0, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 4209
    .local v0, e:Lcom/android/camera/input/KeyEventArgs;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4210
    invoke-virtual {v0}, Lcom/android/camera/input/KeyEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4212
    const-string v1, "HTCCamera"

    const-string v3, "KeyUp event is handled by event handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 4253
    :goto_0
    return v1

    .line 4216
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 4217
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 4219
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4220
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4222
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 4223
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 4228
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 4230
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_5

    .line 4233
    :cond_3
    if-eq v5, p1, :cond_4

    if-ne v4, p1, :cond_5

    :cond_4
    move v1, v2

    .line 4235
    goto :goto_0

    .line 4238
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4239
    if-eq v5, p1, :cond_6

    if-ne v4, p1, :cond_7

    .line 4241
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 4243
    :cond_7
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp - UI Block !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 4244
    goto :goto_0

    .line 4248
    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 4253
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 4250
    goto/16 :goto_0

    .line 4248
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSaved(Lcom/android/camera/MediaEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 2963
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->setSaveDone()V

    .line 2969
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2456
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2467
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 2470
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2471
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2472
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)V

    .line 2475
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 2477
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 2480
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_3

    .line 2481
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2486
    :goto_0
    const-string v0, "pref_camera_self_portrait"

    invoke-static {p0, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2487
    const-string v0, "pref_camera_self_timer"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2489
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2492
    const-string v0, "pref_smile_capture"

    invoke-static {p0, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2494
    const-string v0, "pref_camera_face_number"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2496
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    .line 2499
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 2500
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)I

    .line 2503
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 2506
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2507
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2508
    const-string v0, "HTCCamera"

    const-string v1, "addFlags FLAG_SHOW_WHEN_LOCKED onNewIntent"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2511
    :cond_2
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    return-void

    .line 2483
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1986
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1991
    const-string v4, "HTCCamera"

    const-string v5, "[NV] stop recording when on Pause"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->forceStopVideoRecording()V

    .line 1993
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v4, v5}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 1994
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 1998
    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2001
    invoke-virtual {p0, v7, v7}, Lcom/android/camera/HTCCamera;->overridePendingTransition(II)V

    .line 2003
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2004
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    .line 2007
    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    sget-object v5, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2010
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2011
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2012
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2013
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2014
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 2023
    :goto_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2024
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x277b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2026
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    .line 2027
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 2028
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 2029
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    .line 2030
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 2031
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 2037
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 2038
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 2041
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2043
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - Clear focus state"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2045
    iput v7, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 2059
    :cond_2
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - mIsUIReady = false"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeDialog()V

    .line 2064
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 2065
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2066
    const-string v4, "HTCCamera"

    const-string v5, "clearFlags FLAG_SHOW_WHEN_LOCKED onPause"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 2089
    :cond_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x2d

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2091
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    .line 2092
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2102
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 2105
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v4, :cond_5

    .line 2106
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v4}, Lcom/android/camera/IAudioManager;->restoreAudioStreamVolume()V

    .line 2108
    :cond_5
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 2109
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2117
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2121
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x25

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2124
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2126
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v4

    if-ne v4, v8, :cond_6

    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_6

    .line 2127
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->cancelAutoFocus()V

    .line 2128
    :cond_6
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 2130
    sput-boolean v7, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 2132
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - mFocusingState = NO_FOCUSING"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iput v7, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 2135
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2136
    sput-boolean v7, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    .line 2138
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/RecordingState;

    invoke-virtual {v4}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_1

    .line 2146
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v4, :cond_e

    .line 2151
    const-string v4, "HTCCamera"

    const-string v5, "onPause mIdle is false"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 2160
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 2172
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2175
    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v4

    if-eq v4, v8, :cond_8

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v8, :cond_9

    .line 2177
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->WriteModePreference()V

    .line 2180
    :cond_9
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    :goto_3
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2186
    :cond_a
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 2196
    :goto_4
    const-string v4, "HTCCamera"

    const-string v5, "OnPause - Freeze UI !!!"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    const/4 v3, 0x0

    .line 2199
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "com.htc.eas.intent.resumeSync"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2200
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "com.htc.eas.extra.tag"

    const-string v5, "com.android.camera.HTCCamera"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2201
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2204
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2206
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x48

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2209
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->doOnPause()V

    .line 2210
    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    .line 2213
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    .line 2215
    :try_start_1
    const-string v4, "HTCCamera"

    const-string v6, "onPause() - mIsSurfaceAvailable = false"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 2217
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2220
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_d

    .line 2222
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 2223
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_10

    .line 2226
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2230
    :try_start_2
    const-string v4, "HTCCamera"

    const-string v5, "[NV] waitForCheckRecording()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->waitForCheckRecording()V

    .line 2232
    const-string v4, "HTCCamera"

    const-string v5, "[NV] continueForCheckRecording()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->continueForCheckRecording()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2244
    :cond_c
    :goto_5
    :try_start_3
    const-string v4, "HTCCamera"

    const-string v5, "onPause +++stopPreview()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2246
    const-string v4, "HTCCamera"

    const-string v5, "onPause ---stopPreview()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 2255
    :goto_6
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 2256
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    .line 2257
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 2260
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2264
    iget-wide v4, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    .line 2266
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    return-void

    .line 2018
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2142
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2167
    :cond_e
    const-string v4, "HTCCamera"

    const-string v5, "onPause mIdle is true"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 2169
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2181
    :catch_0
    move-exception v2

    .line 2182
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "HTCCamera"

    const-string v5, "unregisterReceiver failed - mKeyguardReceiver"

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2188
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_f
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_4

    .line 2217
    .restart local v3       #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 2235
    .restart local v0       #camera:Landroid/hardware/Camera;
    :catch_1
    move-exception v1

    .line 2237
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "HTCCamera"

    const-string v5, "[NV] waitForCheckRecording() - InterruptedException exception caught"

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2248
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 2250
    .local v2, ex:Ljava/lang/Throwable;
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - Cannot stop preview"

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2254
    .end local v2           #ex:Ljava/lang/Throwable;
    :cond_10
    const-string v4, "HTCCamera"

    const-string v5, "onPause() - No open camera, no need to stop preview"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2014
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .parameter "property"
    .parameter "e"

    .prologue
    .line 6425
    const/4 v0, 0x1

    .line 6426
    .local v0, isHandled:Z
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_2

    .line 6428
    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 6456
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_1

    .line 6458
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    if-nez v1, :cond_1

    .line 6459
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/HTCCamera;->onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V

    .line 6461
    :cond_1
    return-void

    .line 6431
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onActionScreenOpening()V

    goto :goto_0

    .line 6434
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraMode;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CameraMode;)V

    goto :goto_0

    .line 6438
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_3

    .line 6439
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onEffectPanelStateChanged(Lcom/android/camera/UIState;)V

    goto :goto_0

    .line 6440
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_4

    .line 6442
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6443
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPopupBubbleShown()V

    goto :goto_0

    .line 6445
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_5

    .line 6447
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6448
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPreviewStopped()V

    goto :goto_0

    .line 6450
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_6

    .line 6451
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onTakingPictureStateChanged(Lcom/android/camera/TakingPictureState;)V

    goto :goto_0

    .line 6453
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 6428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 1599
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1603
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    return-void
.end method

.method public onResume()V
    .locals 15

    .prologue
    .line 1614
    const-string v11, "HTCCamera"

    const-string v12, "onResume() - start"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1620
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x51

    if-ne v11, v12, :cond_0

    .line 1621
    const-string v11, "HTCCamera"

    const-string v12, "sendBroadcast pause musicservicecommand"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.music.musicservicecommand"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v3, i:Landroid/content/Intent;
    const-string v11, "command"

    const-string v12, "pause"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1628
    .end local v3           #i:Landroid/content/Intent;
    :cond_0
    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v12

    .line 1630
    :try_start_0
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v11, :cond_1

    .line 1631
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    .line 1632
    :cond_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/camera/HTCCamera;->overridePendingTransition(II)V

    .line 1638
    new-instance v9, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-direct {v9, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1640
    .local v9, userPresentFilter:Landroid/content/IntentFilter;
    :try_start_1
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v9}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1645
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1648
    :try_start_2
    const-string v11, "HTCCamera"

    const-string v12, "Initial remote screen orientation"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const/4 v11, 0x3

    invoke-static {v11}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1656
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 1657
    .local v4, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v11, "com.htc.eas.intent.pauseSync"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v11, "com.htc.eas.extra.tag"

    const-string v12, "com.android.camera.HTCCamera"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1662
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopVoiceRecording()V

    .line 1665
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    iput-object v11, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    .line 1666
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v11, :cond_4

    .line 1667
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    .line 1673
    :goto_2
    const-string v11, "HTCCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " keep backgroundDataSetting: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v11, v12, :cond_5

    .line 1677
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    .line 1680
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    .line 1683
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    .line 1692
    :cond_3
    :goto_3
    const-string v11, "window"

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1693
    .local v7, mgr:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1694
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v11

    iput v11, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 1695
    const-string v11, "HTCCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Initial Display Orientation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v11, "HTCCamera"

    const-string v12, "OnResume - reset UI, immediately set mMainLayout invisible"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    :goto_4
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v11, :cond_6

    .line 1700
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    goto :goto_4

    .line 1632
    .end local v0           #display:Landroid/view/Display;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #mgr:Landroid/view/WindowManager;
    .end local v9           #userPresentFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 1641
    .restart local v9       #userPresentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 1642
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "HTCCamera"

    const-string v12, "registerReceiver failed - mKeyguardReceiver"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1650
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1652
    .local v2, ex:Ljava/lang/Throwable;
    const-string v11, "HTCCamera"

    const-string v12, "Rotate remote Camera layout may not support"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1670
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_4
    const-string v11, "HTCCamera"

    const-string v12, "connManager is null"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1685
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1687
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    goto :goto_3

    .line 1708
    .restart local v0       #display:Landroid/view/Display;
    .restart local v7       #mgr:Landroid/view/WindowManager;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    .line 1711
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    if-nez v11, :cond_a

    .line 1713
    sget-object v11, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    sget-object v11, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    sget-object v11, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    sget-object v11, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 1717
    :cond_7
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    .line 1718
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1720
    iget-boolean v11, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v11, :cond_f

    .line 1721
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    .line 1724
    :goto_5
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v11, :cond_9

    .line 1725
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v12, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v12, v11, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 1727
    :cond_9
    iget v11, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 1728
    const-string v11, "pref_camera_3D_status"

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1731
    :goto_6
    const-string v11, "HTCCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Initial m3DButtonStatus = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1734
    .local v5, interruptingEventsFilter:Landroid/content/IntentFilter;
    const-string v11, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1735
    const/16 v11, 0x3e9

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1738
    :try_start_4
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v5}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1748
    .end local v5           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :goto_7
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 1752
    :cond_a
    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1754
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-string v12, "PowerWarning UI"

    invoke-virtual {v11, v12}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/component/Component;->initialize()V

    .line 1768
    :cond_b
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    .line 1770
    const-string v11, "HTCCamera"

    const-string v12, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 1777
    const-string v11, "keyguard"

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 1778
    .local v6, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v6, :cond_12

    check-cast v6, Landroid/app/HtcIfKeyguardManager;

    .end local v6           #mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-interface {v6}, Landroid/app/HtcIfKeyguardManager;->keyguardIsShowing()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1779
    const-string v11, "HTCCamera"

    const-string v12, "keyguard is shown !!!!!"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1787
    :goto_8
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    sget-object v12, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v11, p0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1790
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1791
    const-string v11, "HTCCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isInMirrorMode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1794
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 1795
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 1798
    monitor-enter p0

    .line 1800
    :try_start_5
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 1801
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1803
    const-string v11, "HTCCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onResume() - mIdle = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v11, :cond_13

    .line 1806
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 1807
    .local v10, win:Landroid/view/Window;
    const/16 v11, 0x80

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1808
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1809
    const-string v11, "HTCCamera"

    const-string v12, "addFlags FLAG_SHOW_WHEN_LOCKED onResume"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const/high16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1812
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1843
    .end local v10           #win:Landroid/view/Window;
    :goto_9
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v11, "com.htc.intent.action.APP_READY"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v11, "app"

    const/4 v12, 0x2

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1845
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1848
    iget-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v11, :cond_d

    .line 1849
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    .line 1881
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 1882
    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    .line 1884
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval()V

    .line 1887
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 1889
    const-string v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1890
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1891
    const-string v11, "HTCCamera"

    const-string v12, "Camera is disabled by DevicePolicyManager"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const v11, 0x7f0a0059

    const/16 v12, 0x3e8

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 1893
    .local v8, mtoast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1894
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/HTCCamera$9;

    invoke-direct {v12, p0}, Lcom/android/camera/HTCCamera$9;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1906
    .end local v8           #mtoast:Landroid/widget/Toast;
    :goto_a
    return-void

    .line 1723
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v11

    iput v11, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_5

    .line 1730
    :cond_10
    const-string v11, "pref_camera_3D_status"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_6

    .line 1739
    .restart local v5       #interruptingEventsFilter:Landroid/content/IntentFilter;
    :catch_2
    move-exception v2

    .line 1740
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "HTCCamera"

    const-string v12, "registerReceiver failed!!"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1745
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :cond_11
    const-string v11, "pref_camera_3D_status"

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_7

    .line 1782
    :cond_12
    const-string v11, "HTCCamera"

    const-string v12, "keyguard is not shown !!!!!"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1801
    :catchall_1
    move-exception v11

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v11

    .line 1822
    :cond_13
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v12}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v12

    if-eq v11, v12, :cond_14

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v12}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v12

    if-ne v11, v12, :cond_16

    .line 1828
    :cond_14
    iget-object v11, p0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_15

    .line 1829
    const-string v11, "HTCCamera"

    const-string v12, "mIsKeyguardShow is false, activate"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :goto_b
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto/16 :goto_9

    .line 1831
    :cond_15
    const-string v11, "HTCCamera"

    const-string v12, "DisplayDevice.supportShowWhenLock() && by SHORTCUT or HOTKEY"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1835
    :cond_16
    const-string v11, "HTCCamera"

    const-string v12, "mIsKeyguardShow is true, setWaitKeyguardBeforePreview(true)"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto/16 :goto_9

    .line 1904
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_17
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    .line 1905
    const-string v11, "HTCCamera"

    const-string v12, "onResume() - end"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1584
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1585
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->requestAudioFocus(I)V

    .line 1594
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 2313
    const-string v1, "HTCCamera"

    const-string v2, "onStop() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2318
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2320
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 2321
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v1}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 2324
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2327
    :try_start_0
    const-string v1, "HTCCamera"

    const-string v2, "Reset remote screen orientation"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapSurface;->resetRemoteScreenOrientation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    :cond_1
    :goto_0
    const-string v1, "HTCCamera"

    const-string v2, "onStop() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    return-void

    .line 2329
    :catch_0
    move-exception v0

    .line 2331
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "HTCCamera"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4260
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openCaptureUI()V
    .locals 3

    .prologue
    .line 3384
    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3389
    :cond_0
    return-void
.end method

.method public powerWarningOn(Z)V
    .locals 3
    .parameter "isRec"

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 6255
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6281
    :goto_0
    return-void

    .line 6259
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 6260
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6264
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    .line 6266
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6269
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6271
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6272
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    .line 6273
    if-nez p1, :cond_3

    .line 6274
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 6276
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 6279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 6280
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    goto :goto_0
.end method

.method public final prepareActionScreen()V
    .locals 2

    .prologue
    .line 5497
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_6

    .line 5500
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    .line 5503
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    .line 5505
    const-string v0, "HTCCamera"

    const-string v1, "mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5536
    :goto_0
    return-void

    .line 5510
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_2

    .line 5512
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "Action screen is not needed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5517
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_3

    .line 5519
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5520
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 5523
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    .line 5527
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_5

    .line 5528
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->prepare()V

    goto :goto_0

    .line 5522
    :cond_4
    new-instance v0, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_1

    .line 5530
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "No available action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5532
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 5533
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5535
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "Cannot prepare action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareRecording()Z
    .locals 6

    .prologue
    const/16 v5, 0x25

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3294
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3296
    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - Activity is pausing"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3379
    :goto_0
    return v1

    .line 3299
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3301
    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - Activity is paused"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3302
    goto :goto_0

    .line 3306
    :cond_1
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 3312
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Taking picture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3313
    goto :goto_0

    .line 3317
    :pswitch_0
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_1

    .line 3323
    :pswitch_1
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Recording state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3324
    goto :goto_0

    .line 3328
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v1, v1, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v1, :cond_2

    .line 3330
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Cannot record video in current start mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3331
    goto/16 :goto_0

    .line 3334
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3335
    const-string v1, "HTCCamera"

    const-string v3, "Check MirrorMode :true"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    const v0, 0x7f0a0058

    .line 3337
    .local v0, str:I
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3338
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v1, v5, v0, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move v1, v2

    .line 3339
    goto/16 :goto_0

    .line 3342
    .end local v0           #str:I
    :cond_3
    const-string v1, "HTCCamera"

    const-string v4, "Check MirrorMode :false"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_4

    .line 3349
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-eqz v1, :cond_5

    .line 3351
    const-string v1, "HTCCamera"

    const-string v4, "onTouchCapture_Camcorder, 3D portrait capture !!!"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v4, :cond_6

    .line 3362
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3363
    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v1, v3

    .line 3379
    goto/16 :goto_0

    .line 3357
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    goto :goto_1

    .line 3367
    :cond_6
    const-string v1, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_RECORD"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3370
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 3373
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v2

    .line 3374
    goto/16 :goto_0

    .line 3306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3317
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    .prologue
    .line 2897
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 2898
    return-void
.end method

.method public resetFocusMode()V
    .locals 3

    .prologue
    .line 4950
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4951
    return-void
.end method

.method public resetIndicatorLayout()V
    .locals 1

    .prologue
    .line 3402
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    .line 3403
    return-void
.end method

.method public final resetScreenSaveTimer()V
    .locals 4

    .prologue
    .line 6189
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    .line 6190
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    iget v2, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 6191
    :cond_0
    return-void
.end method

.method public final resetToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7756
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7759
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7762
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_3

    .line 7763
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7768
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 7771
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->resetToDefaultEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 7774
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_1

    .line 7775
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetToDefault()V

    .line 7781
    :cond_1
    sput-boolean v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 7782
    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->setDefault(Z)V

    .line 7785
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->restartCamera()V

    .line 7788
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    .line 7792
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    .line 7798
    sget-object v0, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval(Lcom/android/camera/SelfTimerValue;)V

    .line 7801
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 7803
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    .line 7804
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 7809
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7810
    return-void

    .line 7764
    :cond_3
    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    .line 7765
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final restartCamera()V
    .locals 3

    .prologue
    .line 6199
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 6201
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - restartCamera()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6202
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6203
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 6204
    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6206
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 6208
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 6209
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    .line 6211
    :cond_0
    return-void
.end method

.method public final restartPreview(I)Z
    .locals 6
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7870
    const-string v0, "HTCCamera"

    const-string v3, "restartPreview("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v0, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7873
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7875
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Preview is already starting"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7903
    :goto_0
    return v0

    .line 7878
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7880
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7881
    goto :goto_0

    .line 7883
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7885
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is paused"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7886
    goto :goto_0

    .line 7888
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_3

    .line 7890
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Camera is deactivated"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7891
    goto :goto_0

    .line 7893
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_4

    .line 7895
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - No camera thread"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 7896
    goto :goto_0

    .line 7900
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v3, "Starting preview"

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    .line 7901
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7902
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    move v0, v2

    .line 7903
    goto :goto_0
.end method

.method public restoreBackgrounddataSetting()V
    .locals 0

    .prologue
    .line 5234
    return-void
.end method

.method public final returnRequestedMedia()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 2676
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2678
    const-string v7, "HTCCamera"

    const-string v8, "Returning media from non-service mode"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    :cond_0
    :goto_0
    return-void

    .line 2681
    :cond_1
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_0

    .line 2685
    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v6

    .line 2686
    .local v6, saveUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v2

    .line 2689
    .local v2, cropValue:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 2691
    const-string v7, "HTCCamera"

    const-string v8, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2694
    .local v5, myExtras:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 2696
    if-eqz v6, :cond_4

    .line 2697
    const-string v7, "output"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2702
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2703
    .local v1, cropIntent:Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2704
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2705
    if-eqz v5, :cond_3

    .line 2706
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2708
    :cond_3
    sget-object v7, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v7}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2699
    .end local v1           #cropIntent:Landroid/content/Intent;
    :cond_4
    const-string v7, "return-data"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2713
    .end local v5           #myExtras:Landroid/os/Bundle;
    :cond_5
    const/4 v4, 0x0

    .line 2714
    .local v4, jpegData:[B
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_6

    .line 2715
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getJpegData()[B

    move-result-object v4

    .line 2718
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2719
    .local v3, intent:Landroid/content/Intent;
    sget-object v7, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraStartMode:[I

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v8}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2775
    if-eqz v6, :cond_f

    .line 2777
    invoke-virtual {p0, v10}, Lcom/android/camera/HTCCamera;->setResult(I)V

    .line 2778
    invoke-direct {p0, v6, v4}, Lcom/android/camera/HTCCamera;->saveAndFinish(Landroid/net/Uri;[B)V

    goto :goto_0

    .line 2723
    :pswitch_0
    if-nez v4, :cond_9

    .line 2724
    const-string v7, "HTCCamera"

    const-string v8, "contacts - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_8

    .line 2813
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 2814
    :cond_8
    invoke-virtual {p0, v10, v3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 2815
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2727
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2729
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v8

    sget-object v9, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2734
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 2735
    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 2737
    :cond_a
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2740
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_b
    const-string v7, "jpeg_data"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2

    .line 2747
    :pswitch_1
    if-nez v4, :cond_c

    .line 2748
    const-string v7, "HTCCamera"

    const-string v8, "square - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2751
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2753
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v8

    sget v9, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v4, v7, v8, v9}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2758
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d

    .line 2759
    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 2761
    :cond_d
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2765
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_e
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2766
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2783
    :cond_f
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2784
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v8, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v7, v8, :cond_7

    .line 2790
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v7, v8, :cond_7

    .line 2792
    if-eqz v4, :cond_11

    .line 2794
    const v7, 0x19000

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v10, v7, v8}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2798
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_10

    .line 2799
    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2801
    :cond_10
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2804
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_11
    const-string v7, "HTCCamera"

    const-string v8, "inline-data - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;
    .locals 2
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"

    .prologue
    .line 4859
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 4860
    .local v0, result:Landroid/graphics/PointF;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4862
    .end local v0           #result:Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .restart local v0       #result:Landroid/graphics/PointF;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z
    .locals 5
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 4867
    if-nez p4, :cond_1

    .line 4895
    :cond_0
    :goto_0
    return v3

    .line 4871
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 4872
    .local v2, previewBounds:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4874
    if-eqz p3, :cond_0

    .line 4876
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_4

    .line 4877
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 4880
    :cond_2
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v3, :cond_5

    .line 4881
    iget p2, v2, Landroid/graphics/Rect;->top:I

    .line 4887
    :cond_3
    :goto_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    .line 4888
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v3

    .line 4889
    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 4890
    .local v0, focusX:F
    int-to-float v3, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 4891
    .local v1, focusY:F
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4892
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 4895
    :goto_3
    const/4 v3, 0x1

    goto :goto_0

    .line 4878
    .end local v0           #focusX:F
    .end local v1           #focusY:F
    :cond_4
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v3, :cond_2

    .line 4879
    iget p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4882
    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v3, :cond_3

    .line 4883
    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 4894
    .restart local v0       #focusX:F
    .restart local v1       #focusY:F
    :cond_6
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .parameter "newvalue"

    .prologue
    .line 5226
    return-void
.end method

.method public setBlock3DSwitch(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2893
    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 2894
    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 6288
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6289
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 6290
    return-void
.end method

.method public final setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3486
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 3489
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3513
    :cond_0
    :goto_0
    return-void

    .line 3493
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3499
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 3502
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3503
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3504
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 3507
    sget-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    if-ne p1, v0, :cond_3

    .line 3508
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3509
    :cond_3
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    if-ne p1, v0, :cond_0

    .line 3510
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 6297
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6298
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    .line 6299
    return-void
.end method

.method public setSelfTimerInterval()V
    .locals 1

    .prologue
    .line 3426
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerValueFromPreference()Lcom/android/camera/SelfTimerValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval(Lcom/android/camera/SelfTimerValue;)V

    .line 3427
    return-void
.end method

.method public setSelfTimerInterval(Lcom/android/camera/SelfTimerValue;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 3450
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Disabled:Lcom/android/camera/SelfTimerValue;

    if-ne p1, v1, :cond_0

    .line 3451
    const-string v1, "HTCCamera"

    const-string v2, "setSelfTimerInterval - Not suggest to set disable value to SelfTimerValue directly"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval(Z)V

    .line 3470
    :goto_0
    return-void

    .line 3457
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 3459
    .local v0, preference:Ljava/lang/String;
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    if-ne p1, v1, :cond_2

    .line 3460
    const-string v0, "none"

    .line 3466
    :cond_1
    :goto_1
    const-string v1, "pref_camera_self_timer"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3469
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3461
    :cond_2
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_2s:Lcom/android/camera/SelfTimerValue;

    if-ne p1, v1, :cond_3

    .line 3462
    const-string v0, "2s"

    goto :goto_1

    .line 3463
    :cond_3
    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_10s:Lcom/android/camera/SelfTimerValue;

    if-ne p1, v1, :cond_1

    .line 3464
    const-string v0, "10s"

    goto :goto_1
.end method

.method public setSelfTimerInterval(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 3434
    if-nez p1, :cond_0

    .line 3435
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/SelfTimerValue;->Disabled:Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3443
    :goto_0
    return-void

    .line 3440
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval()V

    goto :goto_0
.end method

.method public final showDialog(Landroid/app/Dialog;)Z
    .locals 2
    .parameter "dialog"

    .prologue
    .line 7688
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Z

    move-result v0

    return v0
.end method

.method public final showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Z
    .locals 5
    .parameter "dialog"
    .parameter "dismissListener"
    .parameter "useDefaultKeyListener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7693
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7696
    if-nez p1, :cond_0

    move v1, v2

    .line 7734
    :goto_0
    return v1

    .line 7700
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 7701
    goto :goto_0

    .line 7704
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 7705
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 7708
    :cond_3
    if-eqz p3, :cond_4

    .line 7709
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 7710
    :cond_4
    instance-of v1, p1, Lcom/android/camera/rotate/RotateDialog;

    if-eqz v1, :cond_5

    .line 7712
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsFirstOrientationReceived:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    move-object v0, v1

    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    :goto_1
    move-object v1, p1

    .line 7713
    check-cast v1, Lcom/android/camera/rotate/RotateDialog;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateDialog;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 7715
    .end local v0           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_5
    new-instance v1, Lcom/android/camera/HTCCamera$29;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/HTCCamera$29;-><init>(Lcom/android/camera/HTCCamera;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7731
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;

    .line 7732
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 7733
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v3

    .line 7734
    goto :goto_0

    .line 7712
    :cond_6
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_1
.end method

.method public final showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 6226
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showToast(Ljava/lang/String;)V

    .line 6227
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/16 v3, 0x25

    const/4 v2, 0x0

    .line 6230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 6232
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 6250
    :goto_0
    return-void

    .line 6236
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6238
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_1

    .line 6239
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 6243
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_IsToastShownEnd:Z

    .line 6245
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateToast;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 6246
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 6249
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x277c

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 6241
    :cond_1
    const-string v0, ""

    const v1, 0x186a0

    invoke-static {p0, v0, v1}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    goto :goto_1
.end method

.method public final startAlbum(Lcom/android/camera/MediaInfo;)Z
    .locals 2
    .parameter "mediaInfo"

    .prologue
    .line 5780
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    .line 5781
    const/4 v1, 0x0

    .line 5789
    :goto_0
    return v1

    .line 5785
    :cond_0
    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5786
    const-string v0, "FROM_CAMERA"

    .line 5789
    .local v0, action:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/MediaInfo;)Z

    move-result v1

    goto :goto_0

    .line 5788
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const-string v0, "android.intent.action.VIEW"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1
.end method

.method public final startAlbum(Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/MediaInfo;)Z
    .locals 1
    .parameter "action"
    .parameter "contentUri"
    .parameter "mediaInfo"

    .prologue
    .line 5801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/camera/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public final startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/camera/MediaInfo;)Z
    .locals 8
    .parameter "action"
    .parameter "contentUri"
    .parameter "bucketID"
    .parameter "mediaInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5840
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v6, "Starting album"

    invoke-interface {v3, v6, v5}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    .line 5843
    .local v0, blockHandle:Lcom/android/camera/Handle;
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    .line 5845
    const-string v3, "HTCCamera"

    const-string v5, "Returning to album"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5848
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "preview_mode"

    const-string v5, "filmstrip"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5849
    const-string v5, "camera_orientation"

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    iget v3, v3, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5851
    if-eqz p4, :cond_0

    .line 5852
    const-string v3, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaInfo camera_last_file_path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5853
    const-string v3, "camera_last_file_path"

    invoke-virtual {p4}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5854
    const-string v3, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaInfo camera_last_file_mine:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5855
    const-string v3, "camera_last_file_mime"

    iget-object v5, p4, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5859
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 5860
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 5862
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    .line 5864
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v3, v4

    .line 5909
    :goto_1
    return v3

    .line 5857
    :cond_0
    const-string v3, "HTCCamera"

    const-string v5, "mediaInfo null"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5869
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "HTCCamera"

    const-string v6, "Going to album"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5871
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5872
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v6, :cond_3

    .line 5873
    const-string v3, "capture_mode"

    const-string v6, "camera"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5877
    :goto_2
    if-nez p4, :cond_4

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v3, v3, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5879
    const-string v3, "preview_mode"

    const-string v6, "filmstrip"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5880
    const-string v6, "camera_orientation"

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    iget v3, v3, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5882
    if-eqz p4, :cond_5

    .line 5883
    const-string v3, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaInfo camera_last_file_path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p4, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5884
    const-string v3, "camera_last_file_path"

    invoke-virtual {p4}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5885
    const-string v3, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaInfo camera_last_file_mine:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p4, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5886
    const-string v3, "camera_last_file_mime"

    iget-object v6, p4, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5890
    :goto_4
    if-eqz p3, :cond_2

    .line 5892
    const-string v3, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Put intent extra bucketID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5893
    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5898
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    .line 5900
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    .line 5902
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 5903
    goto/16 :goto_1

    .line 5875
    :cond_3
    const-string v3, "capture_mode"

    const-string v6, "comcorder"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 5877
    :cond_4
    iget-object v3, p4, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    goto/16 :goto_3

    .line 5888
    :cond_5
    const-string v3, "HTCCamera"

    const-string v6, "mediaInfo null"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 5905
    :catch_0
    move-exception v1

    .line 5907
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start album : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5908
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    invoke-interface {v3, v0}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    move v3, v5

    .line 5909
    goto/16 :goto_1
.end method

.method public final startAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/MediaInfo;)Z
    .locals 1
    .parameter "action"
    .parameter "bucketID"
    .parameter "mediaInfo"

    .prologue
    .line 5794
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    .line 5795
    const/4 v0, 0x0

    .line 5797
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/camera/MediaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public startFocusFromLongPressKey()V
    .locals 2

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 4495
    :cond_0
    :goto_0
    return-void

    .line 4477
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4480
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 4482
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4483
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto :goto_0

    .line 4494
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()Z

    goto :goto_0
.end method

.method public final startPreview()Z
    .locals 3

    .prologue
    .line 7817
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;I)Z

    move-result v0

    return v0
.end method

.method public final startPreview(Lcom/android/camera/CameraType;I)Z
    .locals 1
    .parameter "cameraType"
    .parameter "status"

    .prologue
    .line 7821
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;I)Z

    move-result v0

    return v0
.end method

.method public final switchMode(Lcom/android/camera/CameraMode;)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    move-result v0

    .line 1360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z
    .locals 7
    .parameter "cameraType"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1365
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v3, :cond_0

    .line 1367
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    const-string v2, "HTCCamera"

    const-string v5, "change camera mode when focusing, cancel focus"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 1371
    const-string v2, "HTCCamera"

    const-string v5, "UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_2

    .line 1494
    :goto_0
    return v4

    .line 1373
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    :cond_2
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    .line 1389
    const-string v2, "HTCCamera"

    const-string v3, "switchMode() - Taking picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1394
    :pswitch_0
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/RecordingState;

    invoke-virtual {v2}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_1

    .line 1403
    :cond_3
    :pswitch_1
    const-string v2, "HTCCamera"

    const-string v3, "switchMode() - Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :pswitch_2
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    .line 1410
    :pswitch_3
    if-nez p1, :cond_4

    .line 1412
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/CameraType;

    .line 1413
    .restart local p1
    const/4 v0, 0x0

    .line 1417
    .local v0, isCameraChanged:Z
    :goto_1
    if-nez p2, :cond_6

    .line 1419
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/camera/CameraMode;

    .line 1420
    .restart local p2
    const/4 v1, 0x0

    .line 1424
    .local v1, isModeChanged:Z
    :goto_2
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    move v4, v3

    .line 1425
    goto :goto_0

    .line 1416
    .end local v0           #isCameraChanged:Z
    .end local v1           #isModeChanged:Z
    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_5

    move v0, v3

    .restart local v0       #isCameraChanged:Z
    :goto_3
    goto :goto_1

    .end local v0           #isCameraChanged:Z
    :cond_5
    move v0, v4

    goto :goto_3

    .line 1423
    .restart local v0       #isCameraChanged:Z
    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eq p2, v2, :cond_7

    move v1, v3

    .restart local v1       #isModeChanged:Z
    :goto_4
    goto :goto_2

    .end local v1           #isModeChanged:Z
    :cond_7
    move v1, v4

    goto :goto_4

    .line 1428
    .restart local v1       #isModeChanged:Z
    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1430
    const-string v2, "HTCCamera"

    const-string v3, "switchMode() - Capture UI is blocked"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1433
    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v5, "Switching camera mode"

    invoke-interface {v2, v5, v4}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    .line 1436
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    .line 1439
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 1443
    if-eqz v0, :cond_a

    .line 1445
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1446
    const-string v2, "HTCCamera"

    const-string v5, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 1451
    :cond_a
    if-eqz v1, :cond_c

    .line 1453
    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_2

    .line 1467
    const-string v2, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try switching to unknown mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    if-eqz v0, :cond_b

    .line 1469
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    .line 1480
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v4, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1483
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFlash()V

    .line 1486
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v4}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 1487
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    move v4, v3

    .line 1494
    goto/16 :goto_0

    .line 1457
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->changetoCameraMode(Z)V

    goto :goto_5

    .line 1462
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->changetoVideoMode(Z)V

    goto :goto_5

    .line 1475
    :cond_c
    if-eqz v0, :cond_b

    .line 1476
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;I)Z

    goto :goto_5

    .line 1383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1394
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1453
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final takeFocus(II)V
    .locals 1
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 4608
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4609
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    .line 4610
    :cond_0
    return-void
.end method

.method public final takePicture()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3145
    const-string v1, "HTCCamera"

    const-string v4, "takePicture()"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    .line 3150
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - No camera thread"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3285
    :goto_0
    return v1

    .line 3155
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3157
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Activity is pausing"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3158
    goto :goto_0

    .line 3160
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3162
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Activity is paused"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3163
    goto :goto_0

    .line 3167
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v1, :cond_3

    .line 3169
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Screen-save mode"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3170
    goto :goto_0

    .line 3174
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v4, :cond_9

    .line 3176
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3180
    :cond_4
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Cannot take picture in video mode"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3181
    goto :goto_0

    .line 3183
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3185
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Cannot take picture in slow motion mode"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3186
    goto/16 :goto_0

    .line 3188
    :cond_6
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v4, p0, v1}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 3189
    .local v0, videoResolution:Lcom/android/camera/Resolution;
    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v0}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v0}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3191
    :cond_7
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Cannot take picture in MMS video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3192
    goto/16 :goto_0

    .line 3194
    :cond_8
    const-string v1, "HTCCamera"

    const-string v4, "takePicture() - Take picture during video recording"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    .end local v0           #videoResolution:Lcom/android/camera/Resolution;
    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v1, v1, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v1, :cond_a

    .line 3200
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takePicture() - Cannot take picture in current start mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3201
    goto/16 :goto_0

    .line 3205
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-lez v1, :cond_b

    sget-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v1, :cond_b

    .line 3207
    const v1, 0x7f0a01a3

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->showToast(I)V

    move v1, v2

    .line 3208
    goto/16 :goto_0

    .line 3212
    :cond_b
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3214
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - There is still a visible dialog"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3215
    goto/16 :goto_0

    .line 3217
    :cond_c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3219
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - There is still a visible pop-up bubble"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3220
    goto/16 :goto_0

    .line 3224
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-eqz v1, :cond_e

    .line 3226
    const-string v1, "HTCCamera"

    const-string v3, "takePicture(), 3D portrait capture !!!"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3229
    goto/16 :goto_0

    .line 3232
    :cond_e
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 3235
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_10

    .line 3238
    const-string v1, "HTCCamera"

    const-string v2, "Taking picture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 3242
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3243
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 3246
    :cond_f
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v3

    .line 3248
    goto/16 :goto_0

    .line 3252
    :cond_10
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3254
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v1, v2

    .line 3255
    goto/16 :goto_0

    .line 3259
    :cond_11
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 3280
    :pswitch_0
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takePicture() - Cannot take picture due to current taking picture state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3281
    goto/16 :goto_0

    .line 3265
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3270
    const-string v1, "HTCCamera"

    const-string v2, "takePicture() - Take picture immediately after previous picture is completed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    move v1, v3

    .line 3272
    goto/16 :goto_0

    .line 3276
    :cond_12
    const-string v1, "HTCCamera"

    const-string v3, "takePicture() - Cannot take picture immediately after previous picture is completed"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3277
    goto/16 :goto_0

    .line 3285
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()Z

    move-result v1

    goto/16 :goto_0

    .line 3259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final triggerRecord()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3730
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3732
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3733
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - end, UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    :cond_0
    :goto_0
    return-void

    .line 3736
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3738
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - end, action screen open !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3743
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v6, :cond_3

    .line 3745
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - end, 3D portrait capture !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3750
    :cond_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 3752
    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/RecordingState;

    invoke-virtual {v2}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 3869
    :pswitch_0
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerRecord() - current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    :cond_4
    :goto_1
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3759
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3761
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - Switch to video mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    .line 3763
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3764
    const/4 v1, 0x1

    .line 3770
    .local v1, switchingToVideoMode:Z
    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_6

    .line 3772
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - Lock rotation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v2, :cond_6

    .line 3776
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3777
    :cond_5
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .line 3782
    .local v0, lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :goto_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v3, "Recording"

    invoke-interface {v2, v3, v0}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    .line 3787
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_6
    if-nez v1, :cond_0

    .line 3801
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[press_jogball]recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3804
    :cond_7
    sget-object v2, Lcom/android/camera/RecordingFailedReason;->HasPopupOrDialog:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/RecordingFailedReason;)V

    goto/16 :goto_0

    .line 3767
    .end local v1           #switchingToVideoMode:Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #switchingToVideoMode:Z
    goto :goto_2

    .line 3778
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isSlowMotionMode()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v3, p0, v2}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3779
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .restart local v0       #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    goto :goto_3

    .line 3781
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    goto :goto_3

    .line 3808
    .end local v0           #lockedRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_b
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v2, v3, :cond_c

    .line 3809
    sget-object v2, Lcom/android/camera/RecordingFailedReason;->StorageError:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/RecordingFailedReason;)V

    goto/16 :goto_0

    .line 3814
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3815
    const-string v2, "HTCCamera"

    const-string v3, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3818
    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 3820
    const-string v2, "HTCCamera"

    const-string v3, "Block Capture UI - Start Recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v3, "Start recording"

    invoke-interface {v2, v3, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 3822
    sput-boolean v6, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 3830
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3832
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7, v5, v5, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 3834
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 3837
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 3838
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    .line 3840
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3841
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    goto/16 :goto_1

    .line 3850
    .end local v1           #switchingToVideoMode:Z
    :pswitch_2
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[press_jogball]stop_record"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3855
    const-string v2, "HTCCamera"

    const-string v3, "Block Capture UI - Stop Recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v3, "Stop recording"

    invoke-interface {v2, v3, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    .line 3857
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7, v5, v5, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 3859
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    .line 3862
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 3863
    iget v2, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v2, :cond_4

    .line 3864
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    goto/16 :goto_1

    .line 3752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final unlockZoom()V
    .locals 3

    .prologue
    .line 5709
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5712
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 5715
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-nez v0, :cond_1

    .line 5717
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - Counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5718
    const-string v0, "unlockZoom()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 5731
    :cond_0
    :goto_0
    return-void

    .line 5723
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    .line 5724
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-gtz v0, :cond_0

    .line 5728
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5730
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
