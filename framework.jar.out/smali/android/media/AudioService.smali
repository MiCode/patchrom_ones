.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$BeatsDeathHandler;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BEATS_HEADSET_TYPE:Ljava/lang/String; = "audio.beatsheadset.type"

.field private static final BIT_FM_HEADSET:I = 0x8

.field private static final BIT_FM_SPEAKER:I = 0x10

.field private static final BIT_HDMI_OUT:I = 0x1000

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_TTY:I = 0x4

.field private static final BIT_TTY_HCO:I = 0x40

.field private static final BIT_TTY_VCO:I = 0x20

.field private static final BIT_TV_OUT:I = 0x100

.field private static final BIT_USB_HEADSET:I = 0x2000

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final DEBUG:Z = false

.field protected static final DEBUG_RC:Z = false

.field private static final ERROR_HEADSET:I = -0x2bc

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BEATS_NOTIFY:I = 0x65

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xc

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x9

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xb

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PERSIST_VOLUME_FOR_HEADSET:I = 0x63

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xd

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xe

.field private static final MSG_SET_FORCE_USE:I = 0xa

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final MSG_SET_VOLUME_DIRECT:I = 0x67

.field private static final MSG_SHOW_BEATS_TOAST:I = 0x66

.field private static final NOTIFICATION_VOLUME_DELAY_MS:I = 0x1388

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final OTHER_HEADSET:I = 0x2c6

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOLO_BEATS_HEADSET:I = 0x2be

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_DEFAULT_VOLUME_DB:I = -0x14

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final UR_BEATS_HEADSET:I = 0x2bd

.field private static is_vibrate_un_check:Z

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static mBeatsEnable:Z

.field private static mNotificationOn:Z

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private SOUND_EFFECT_VOLUME_DB:I

.field private STREAM_VOLUME_ALIAS:[I

.field private final SenseVersion:F

.field private isBTConnected:Z

.field private isHSTouchMaxVolume:Z

.field private isTouchMaxVolume:Z

.field private mAppPlay:Z

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBackupRingerMode:I

.field private mBackupVibrateSettingForNotification:I

.field private mBackupVibrateSettingForRinger:I

.field private mBeatsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$BeatsDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mBeatsHeadset:I

.field private mBeatsState:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private mBtName:Ljava/lang/String;

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDockAddress:Ljava/lang/String;

.field private mDockMode:Z

.field private mDongleMediaOn:Z

.field private mEqList:[I

.field private mExitingDockMode:Z

.field private mFMActive:Z

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mGlobalSoundEffect:I

.field private mHasDockModeProjects:Z

.field private mHeadsetState:I

.field private mIgnoreMute:Z

.field private mIsRinging:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListNum:I

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMicrophone:I

.field private mMirrorDisplayStatus:Z

.field private mMirrorMode:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreVolumeIndex:I

.field private mPrevVolDirection:I

.field private mPreviousRingerMode:I

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeRingVolume:Z

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMaxVolumeStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoAudioState:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field mSkin:Ljava/lang/String;

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mVibrateSetting:I

.field private mVoiceCapable:Z

.field private mVolumePanel:Lmiui/view/VolumePanel;

.field private preRingerMode:I

.field private screenOn:Z

.field private setGlobalEffect_Flag:Z

.field private setGlobalEffect_NONE_Flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    sput-boolean v3, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 215
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 4349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 4351
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 5436
    sput-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    .line 5437
    sput-boolean v3, Landroid/media/AudioService;->mBeatsEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 446
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 177
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Landroid/media/AudioService;->SenseVersion:F

    .line 182
    iput-boolean v6, p0, Landroid/media/AudioService;->mFMActive:Z

    .line 194
    iput-boolean v6, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    .line 195
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 199
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 209
    iput-boolean v6, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z

    .line 210
    iput-boolean v6, p0, Landroid/media/AudioService;->setGlobalEffect_Flag:Z

    .line 226
    const/16 v3, 0x9

    new-array v3, v3, [[I

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v6

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    aput-object v4, v3, v9

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    aput-object v4, v3, v7

    const/4 v4, 0x3

    new-array v5, v7, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_4

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v7, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v7, [I

    fill-array-data v5, :array_6

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v7, [I

    fill-array-data v5, :array_7

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v7, [I

    fill-array-data v5, :array_8

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 239
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    iput-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 256
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    iput-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 270
    new-instance v3, Landroid/media/AudioService$1;

    invoke-direct {v3, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v3, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 308
    iput-boolean v6, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 309
    iput-boolean v6, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 310
    iput-boolean v9, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    .line 340
    new-instance v3, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v3, p0, v8}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v3, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    new-instance v3, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v3, p0, v8}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v3, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 367
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 374
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 417
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 426
    iput v6, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 429
    iput-boolean v9, p0, Landroid/media/AudioService;->screenOn:Z

    .line 430
    iput-boolean v6, p0, Landroid/media/AudioService;->isBTConnected:Z

    .line 432
    iput-boolean v6, p0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    .line 433
    iput-boolean v6, p0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    .line 436
    iput-boolean v6, p0, Landroid/media/AudioService;->mMirrorMode:Z

    .line 439
    iput-boolean v6, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    .line 2161
    iput-boolean v6, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    .line 2534
    new-instance v3, Landroid/media/AudioService$2;

    invoke-direct {v3, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v3, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3676
    iput-object v8, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3836
    iput v6, p0, Landroid/media/AudioService;->mMicrophone:I

    .line 4313
    const-string v3, "default"

    iput-object v3, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    .line 4353
    iput-boolean v6, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    .line 4354
    iput v6, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    .line 4356
    new-instance v3, Landroid/media/AudioService$3;

    invoke-direct {v3, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v3, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4446
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 4722
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 4728
    iput-object v8, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4742
    iput v6, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4823
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 5281
    iput v10, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5282
    iput v10, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5473
    iput-object v8, p0, Landroid/media/AudioService;->mEqList:[I

    .line 5474
    iput v6, p0, Landroid/media/AudioService;->mListNum:I

    .line 447
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 449
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 453
    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v4, "ro.config.vc_call_vol_steps"

    iget-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v6

    .line 457
    const-string/jumbo v3, "ro.config.sound_fx_volume"

    const/16 v4, -0x14

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    new-instance v3, Lmiui/view/VolumePanel;

    invoke-direct {v3, p1, p0}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;

    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    new-instance v3, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v3, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v3, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    iput v6, p0, Landroid/media/AudioService;->mHeadsetState:I

    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    iput v6, p0, Landroid/media/AudioService;->mMode:I

    iput-boolean v9, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    iput v6, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    iget-object v3, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v3}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "HDMI_CONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.FM"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.FMTX"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "DONGLE_MEDIA_PLAYING"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "DONGLE_MEDIA_STOP"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, pkgFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 539
    iget-object v3, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 545
    .local v2, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 546
    return-void

    .line 226
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 239
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 256
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10100(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$10102(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$10602(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 119
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2500(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$4402(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mHeadsetState:I

    return p1
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastFMVolume()V

    return-void
.end method

.method static synthetic access$4600(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6100(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return v0
.end method

.method static synthetic access$6302(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return p1
.end method

.method static synthetic access$6400(Landroid/media/AudioService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    return-void
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mAppPlay:Z

    return v0
.end method

.method static synthetic access$7002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$7402(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$7502(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    return v0
.end method

.method static synthetic access$7700(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7802(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->isBTConnected:Z

    return p1
.end method

.method static synthetic access$7900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mMicrophone:I

    return v0
.end method

.method static synthetic access$7902(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mMicrophone:I

    return p1
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->restoreStreamVolumes()V

    return-void
.end method

.method static synthetic access$8100(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mMirrorMode:Z

    return v0
.end method

.method static synthetic access$8102(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMirrorMode:Z

    return p1
.end method

.method static synthetic access$8202(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    return p1
.end method

.method static synthetic access$8302(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    return p1
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->resetVolumePanel()V

    return-void
.end method

.method static synthetic access$8502(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$8602(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$8702(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$8802(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    return p1
.end method

.method static synthetic access$8902(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mBeatsState:Z

    return p1
.end method

.method static synthetic access$9000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->initEqList()V

    return-void
.end method

.method static synthetic access$9200(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9302(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mFMActive:Z

    return p1
.end method

.method static synthetic access$9402(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->screenOn:Z

    return p1
.end method

.method static synthetic access$9500(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    return v0
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->initializeDockMode()V

    return-void
.end method

.method static synthetic access$9700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->deInitializeDockMode()V

    return-void
.end method

.method static synthetic access$9800(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    return v0
.end method

.method static synthetic access$9802(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    return p1
.end method

.method static synthetic access$9900(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    return v0
.end method

.method static synthetic access$9902(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    return p1
.end method

.method private applyOutdoorMode()Z
    .locals 2

    .prologue
    .line 1099
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 1100
    const/4 v0, 0x1

    .line 1103
    :goto_0
    return v0

    .line 1102
    :cond_0
    const-string v0, "AudioService"

    const-string/jumbo v1, "this project does not support outdoor mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applySoundEffectByHeadset()Z
    .locals 10

    .prologue
    const/16 v9, 0x384

    const/4 v8, 0x2

    const/16 v7, 0x320

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2035
    iget v3, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return v1

    .line 2038
    :cond_1
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applySoundEffectByHeadset() isHeadsetPlugged()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBluetoothHeadsetConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBeatsState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2044
    iget-boolean v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v3, :cond_4

    .line 2045
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v3, :cond_2

    .line 2046
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v9, :cond_0

    .line 2047
    const-string v1, "AudioService"

    const-string v3, "global_effect=beats"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const-string v1, "global_effect=Beats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2049
    iput v9, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2053
    goto :goto_0

    .line 2057
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioService;->isBeatsHeadsetBT()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2058
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_0

    .line 2059
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2061
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2062
    goto :goto_0

    .line 2065
    :cond_3
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v8, :cond_0

    .line 2066
    const-string v1, "AudioService"

    const-string v3, "global_effect=SRS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string v1, "global_effect=SRS"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2068
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2072
    goto/16 :goto_0

    .line 2078
    :cond_4
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_0

    .line 2079
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2081
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2085
    goto/16 :goto_0

    .line 2090
    :cond_5
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v3, :cond_6

    .line 2091
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v9, :cond_0

    .line 2092
    const-string v1, "AudioService"

    const-string v3, "global_effect=beats"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const-string v1, "global_effect=Beats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2094
    iput v9, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2098
    goto/16 :goto_0

    .line 2103
    :cond_6
    invoke-virtual {p0}, Landroid/media/AudioService;->isBeatsHeadset()Z

    move-result v0

    .line 2104
    .local v0, isBeats:Z
    if-eqz v0, :cond_7

    .line 2105
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_0

    .line 2106
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2108
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2112
    goto/16 :goto_0

    .line 2116
    :cond_7
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v8, :cond_0

    .line 2117
    const-string v1, "AudioService"

    const-string v3, "global_effect=SRS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v1, "global_effect=SRS"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2119
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2123
    goto/16 :goto_0
.end method

.method private backupVibrateSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1204
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vibrate_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1206
    .local v0, old_vibrateSetting:I
    if-nez v0, :cond_0

    .line 1208
    sput-boolean v3, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 1209
    invoke-virtual {p0, v4, v3}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1210
    invoke-virtual {p0, v3, v3}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1213
    :cond_0
    return-void
.end method

.method private broadcastFMVolume()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 5823
    iget-boolean v1, p0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v1, :cond_0

    .line 5824
    const-string v1, "AudioService"

    const-string v2, "broadcastFMVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fmservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5826
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5827
    const-string v2, "freq"

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5828
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5830
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 5827
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    goto :goto_0
.end method

.method private broadcastRingerMode()V
    .locals 5

    .prologue
    .line 2790
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2791
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2792
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2795
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2796
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2797
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2524
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 2525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2526
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2527
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2529
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2530
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2532
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private broadcastSoundEffectChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "appName"

    .prologue
    .line 2146
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 2158
    :cond_0
    :goto_0
    return-void

    .line 2150
    :cond_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSoundEffectChanged beats state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_BEATSEFFECT_STATUS"

    iget-boolean v2, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2153
    const-string v1, "android.media.EXTRA_CALLER_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2154
    const-string v1, "android.media.EXTRA_EFFECT_ID"

    iget v2, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2156
    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 2801
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2803
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2804
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2805
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2807
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 4541
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4542
    const/4 v0, 0x0

    .line 4544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 3781
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 3782
    return-void
.end method

.method private checkEqIdAndApplyEffect(I)Z
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x384

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5498
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEqIdAndApplyEffect isHeadsetPlugged()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wireless_display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/WirelessDisplayManager;

    .line 5500
    .local v2, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v2, :cond_2

    .line 5501
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMirrorDisplayStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , getMirrorDisplayStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    iget-boolean v5, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5503
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v5, v9, :cond_1

    .line 5504
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5505
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5506
    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-direct {p0, v4, v5}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    .line 5696
    :cond_0
    :goto_0
    return v3

    .line 5511
    :cond_1
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5512
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-direct {p0, v4, v3}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    move v3, v4

    .line 5513
    goto :goto_0

    .line 5517
    :cond_2
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-nez v5, :cond_4

    .line 5518
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v5, v9, :cond_3

    .line 5519
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5520
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    goto :goto_0

    :cond_3
    move v3, v4

    .line 5524
    goto :goto_0

    .line 5526
    :cond_4
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v5, :cond_5

    .line 5527
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mGlobalSoundEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mBeatsHeadset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5529
    if-ne p1, v8, :cond_5

    .line 5530
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5531
    const-string v4, "global_effect=Beats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5532
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5533
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5534
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5536
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others) for BT headset"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5537
    const-string v4, "global_headset_profile=others"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5542
    :cond_5
    if-ne p1, v8, :cond_6

    .line 5543
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    const-string v4, "global_effect=Beats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5545
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5546
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5547
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5549
    iget v4, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 5551
    :pswitch_1
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_urbeats)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5552
    const-string v4, "global_headset_profile=beats_urbeats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5556
    :pswitch_2
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_solo)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    const-string v4, "global_headset_profile=beats_solo"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5561
    :pswitch_3
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_studio)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    const-string v4, "global_headset_profile=beats_studio"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5566
    :pswitch_4
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_pro)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    const-string v4, "global_headset_profile=beats_pro"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5571
    :pswitch_5
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    const-string v4, "global_headset_profile=others"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5580
    :cond_6
    if-ne p1, v9, :cond_10

    .line 5581
    iget-boolean v5, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z

    if-nez v5, :cond_b

    .line 5582
    const-string v5, "AudioService"

    const-string/jumbo v6, "setGlobalEffect_NONE_Flag is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    invoke-direct {p0}, Landroid/media/AudioService;->getGlobalEffectDB()I

    move-result v5

    if-eq v5, v9, :cond_7

    .line 5584
    invoke-virtual {p0}, Landroid/media/AudioService;->checkBeatsHeadset()I

    move-result v0

    .line 5585
    .local v0, headset_type:I
    const/16 v5, 0x2bd

    if-ne v0, v5, :cond_8

    .line 5586
    const-string v4, "global_effect=Beats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5587
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5588
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5590
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_urbeats for none)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    const-string v4, "global_headset_profile=beats_urbeats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5592
    const/16 v4, 0x3e8

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->setBeatsHeadset(I)V

    .line 5593
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5622
    .end local v0           #headset_type:I
    :cond_7
    :goto_1
    iput-boolean v3, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z

    goto/16 :goto_0

    .line 5595
    .restart local v0       #headset_type:I
    :cond_8
    const/16 v5, 0x2be

    if-ne v0, v5, :cond_9

    .line 5596
    const-string v4, "global_effect=Beats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5597
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5598
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5600
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_solo for none)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5601
    const-string v4, "global_headset_profile=beats_solo"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5602
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->setBeatsHeadset(I)V

    .line 5603
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    goto :goto_1

    .line 5605
    :cond_9
    const/16 v5, 0x2c6

    if-ne v0, v5, :cond_a

    .line 5606
    const-string v4, "global_effect=Beats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5607
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5608
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5610
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others for none)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    const-string v4, "global_headset_profile=others"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5612
    const/16 v4, 0x3f2

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->setBeatsHeadset(I)V

    .line 5613
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    goto :goto_1

    .line 5616
    :cond_a
    const-string v5, "AudioService"

    const-string/jumbo v6, "setParameters(global_effect=none) for none"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5618
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5619
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5620
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    goto :goto_1

    .line 5625
    .end local v0           #headset_type:I
    :cond_b
    iget-boolean v5, p0, Landroid/media/AudioService;->setGlobalEffect_Flag:Z

    if-ne v5, v3, :cond_c

    .line 5626
    const-string v5, "AudioService"

    const-string/jumbo v6, "setParameters(global_effect=none)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5628
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5629
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5630
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    goto/16 :goto_0

    .line 5634
    :cond_c
    invoke-direct {p0}, Landroid/media/AudioService;->getGlobalEffectDB()I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5635
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v5}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5636
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-ne v5, v8, :cond_d

    .line 5637
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    const-string v4, "global_effect=Beats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5639
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5641
    iget v4, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    packed-switch v4, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 5643
    :pswitch_7
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_urbeats)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    const-string v4, "global_headset_profile=beats_urbeats"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5647
    :pswitch_8
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_solo)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    const-string v4, "global_headset_profile=beats_solo"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5651
    :pswitch_9
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_studio)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    const-string v4, "global_headset_profile=beats_studio"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5655
    :pswitch_a
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_pro)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5656
    const-string v4, "global_headset_profile=beats_pro"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5659
    :pswitch_b
    const-string v4, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    const-string v4, "global_headset_profile=others"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5667
    :cond_d
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-ne v5, v9, :cond_e

    .line 5668
    const-string v5, "AudioService"

    const-string/jumbo v6, "setParameters(global_effect=none)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5669
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5670
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    goto/16 :goto_0

    .line 5673
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v5, p0, Landroid/media/AudioService;->mListNum:I

    if-ge v1, v5, :cond_0

    .line 5674
    iget-object v5, p0, Landroid/media/AudioService;->mEqList:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-ne v5, v6, :cond_f

    .line 5675
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setParameters(global_effect=EQ;preset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "global_effect=EQ;preset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5677
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5673
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5684
    .end local v1           #i:I
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget v5, p0, Landroid/media/AudioService;->mListNum:I

    if-ge v1, v5, :cond_12

    .line 5685
    iget-object v5, p0, Landroid/media/AudioService;->mEqList:[I

    aget v5, v5, v1

    if-ne v5, p1, :cond_11

    .line 5686
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setParameters(global_effect=EQ;preset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "global_effect=EQ;preset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5688
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5689
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5690
    iget v4, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    goto/16 :goto_0

    .line 5684
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5695
    :cond_12
    const-string v3, "AudioService"

    const-string/jumbo v5, "id is not in the list"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5696
    goto/16 :goto_0

    .line 5549
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 5641
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method private checkForRingerModeChange(III)Z
    .locals 11
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "streamType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x1

    .line 2628
    const/4 v0, 0x1

    .line 2629
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 2630
    .local v1, newRingerMode:I
    add-int/lit8 v7, p1, 0x5

    div-int/lit8 v2, v7, 0xa

    .line 2631
    .local v2, uiIndex:I
    iget-object v7, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "vibrate_in_silent"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_5

    move v3, v4

    .line 2633
    .local v3, vibeInSilent:Z
    :goto_0
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForRingerModeChange: oldIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", direction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , streamType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , MAX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v7, v6, :cond_8

    .line 2643
    if-ne p2, v10, :cond_7

    if-gt v2, v4, :cond_7

    .line 2646
    if-nez v3, :cond_0

    iget v7, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v7, v10, :cond_1

    .line 2648
    :cond_0
    if-eqz v3, :cond_6

    move v1, v5

    .line 2650
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    iget v4, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-ne v4, v10, :cond_3

    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_3

    if-ne p3, v6, :cond_3

    .line 2654
    :cond_2
    const/4 v0, 0x0

    .line 2689
    :cond_3
    :goto_2
    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v4, :cond_4

    .line 2690
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2693
    :cond_4
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2695
    return v0

    .end local v3           #vibeInSilent:Z
    :cond_5
    move v3, v5

    .line 2631
    goto :goto_0

    .restart local v3       #vibeInSilent:Z
    :cond_6
    move v1, v4

    .line 2648
    goto :goto_1

    .line 2657
    :cond_7
    iget-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_3

    if-ne p2, v4, :cond_3

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2658
    const/4 v1, 0x3

    goto :goto_2

    .line 2661
    :cond_8
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v7, :cond_b

    .line 2662
    if-ne p2, v10, :cond_a

    .line 2665
    const/4 v1, 0x1

    .line 2670
    :cond_9
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2667
    :cond_a
    if-ne p2, v4, :cond_9

    .line 2668
    const/4 v1, 0x2

    goto :goto_3

    .line 2672
    :cond_b
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    .line 2673
    if-ne p2, v10, :cond_c

    .line 2674
    const/4 v1, 0x2

    goto :goto_2

    .line 2676
    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    .line 2680
    :cond_d
    if-ne p2, v4, :cond_e

    .line 2683
    if-eqz v3, :cond_f

    move v1, v5

    .line 2685
    :cond_e
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_f
    move v1, v6

    .line 2683
    goto :goto_4
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 2432
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2436
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2438
    :cond_0
    return-void
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 2
    .parameter "infoChangedFlags"

    .prologue
    .line 5120
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5121
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5147
    :goto_0
    return-void

    .line 5125
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5130
    const-string v0, "AudioService"

    const-string v1, "Situation 1. Disable clearRemoteControlDisplay_syncAfRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5137
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v1, v0, :cond_3

    .line 5139
    const-string v0, "AudioService"

    const-string v1, "Situation 2. Disable clearRemoteControlDisplay_syncAfRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5146
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    .prologue
    .line 5072
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5073
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5074
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5076
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5077
    return-void

    .line 5074
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 628
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 629
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 630
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 631
    return-void
.end method

.method private createStreamStates()V
    .locals 7

    .prologue
    .line 648
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 649
    .local v2, numStreamTypes:I
    new-array v3, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 651
    .local v3, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 652
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 657
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_1

    .line 658
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 659
    .local v1, index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 660
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 661
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 662
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 656
    .end local v1           #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 666
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 667
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_3

    .line 668
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 669
    .restart local v1       #index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 671
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 672
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 673
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$1002(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 666
    .end local v1           #index:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 678
    :cond_4
    return-void
.end method

.method private deInitializeDockMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 601
    const-string v2, "AudioService"

    const-string v3, "deInitializeDockMode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iput-boolean v5, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 603
    iput-boolean v4, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 606
    iget v2, p0, Landroid/media/AudioService;->mBackupVibrateSettingForRinger:I

    invoke-virtual {p0, v5, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 607
    iget v2, p0, Landroid/media/AudioService;->mBackupVibrateSettingForNotification:I

    invoke-virtual {p0, v4, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 609
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_on"

    iget v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 612
    iget v2, p0, Landroid/media/AudioService;->mBackupRingerMode:I

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 615
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, v6

    aget-object v0, v2, v3

    .line 617
    .local v0, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 621
    .local v1, tmpIndex:I
    :goto_0
    invoke-direct {p0, v6, v1, v1, v5}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 623
    iput-boolean v5, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 624
    return-void

    .line 620
    .end local v1           #tmpIndex:I
    :cond_0
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .restart local v1       #tmpIndex:I
    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 9
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2493
    iget-object v8, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2494
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2495
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 2497
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 2498
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 2499
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2501
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2512
    :cond_1
    :goto_0
    monitor-exit v8

    .line 2513
    return-void

    .line 2504
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 2512
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2510
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4453
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4454
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4455
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4456
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4457
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4458
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4462
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4463
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4830
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4832
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4833
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4835
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4840
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4841
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 2712
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 2713
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2715
    :cond_1
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 2718
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2719
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2721
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 10
    .parameter "suggestedStreamType"

    .prologue
    const/4 v4, 0x2

    const/high16 v9, -0x8000

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v3, 0x3

    .line 2725
    iget-boolean v7, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v7, :cond_8

    .line 2726
    const/4 v1, 0x0

    .line 2728
    .local v1, isOffhook:Z
    :try_start_0
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2729
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2734
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_4

    .line 2735
    :cond_1
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2738
    const/4 p1, 0x6

    .line 2783
    .end local v1           #isOffhook:Z
    .end local p1
    :cond_2
    :goto_1
    return p1

    .line 2730
    .restart local v1       #isOffhook:Z
    .restart local p1
    :catch_0
    move-exception v0

    .line 2731
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "Couldn\'t connect to phone service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    move p1, v6

    .line 2741
    goto :goto_1

    .line 2743
    :cond_4
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_5

    move p1, v3

    .line 2745
    goto :goto_1

    .line 2746
    :cond_5
    if-eq p1, v5, :cond_6

    iget-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v3, :cond_7

    :cond_6
    move p1, v5

    .line 2747
    goto :goto_1

    .line 2749
    :cond_7
    if-ne p1, v9, :cond_2

    move p1, v4

    .line 2752
    goto :goto_1

    .line 2758
    .end local v1           #isOffhook:Z
    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_a

    .line 2759
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    if-ne v4, v3, :cond_9

    .line 2762
    const/4 p1, 0x6

    goto :goto_1

    :cond_9
    move p1, v6

    .line 2765
    goto :goto_1

    .line 2767
    :cond_a
    const/4 v7, 0x5

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v7, 0x1388

    invoke-static {v4, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2772
    :cond_b
    const/4 p1, 0x5

    goto :goto_1

    .line 2773
    :cond_c
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-nez v4, :cond_d

    if-ne p1, v9, :cond_e

    :cond_d
    move p1, v3

    .line 2777
    goto :goto_1

    .line 2778
    :cond_e
    iget-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    if-nez v3, :cond_f

    if-ne p1, v5, :cond_2

    :cond_f
    move p1, v5

    .line 2779
    goto :goto_1
.end method

.method private getBluetoothHeadset()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2477
    const/4 v9, 0x0

    .line 2478
    .local v9, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 2479
    .local v8, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_0

    .line 2480
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v8, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v9

    .line 2487
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v6, 0x0

    if-eqz v9, :cond_1

    const/16 v7, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2489
    return v9

    :cond_1
    move v7, v2

    .line 2487
    goto :goto_0
.end method

.method private getGlobalEffectDB()I
    .locals 6

    .prologue
    const/16 v2, -0x64

    .line 5879
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio.soundenhancer.effect"

    const/16 v5, -0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5880
    .local v1, effect:I
    if-eq v1, v2, :cond_0

    .line 5881
    iput v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5886
    :goto_0
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "effect id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5891
    .end local v1           #effect:I
    :goto_1
    return v1

    .line 5884
    .restart local v1       #effect:I
    :cond_0
    const/16 v1, -0x64

    goto :goto_0

    .line 5888
    .end local v1           #effect:I
    :catch_0
    move-exception v0

    .line 5889
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "getGlobalEffectDB"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 5891
    goto :goto_1
.end method

.method private getIdFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "sub"

    .prologue
    const/16 v0, -0x64

    .line 5775
    if-nez p1, :cond_1

    .line 5818
    :cond_0
    :goto_0
    return v0

    .line 5779
    :cond_1
    const-string v1, "Bass Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5780
    const/16 v0, 0x321

    goto :goto_0

    .line 5781
    :cond_2
    const-string v1, "Mid Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5782
    const/16 v0, 0x322

    goto :goto_0

    .line 5783
    :cond_3
    const-string v1, "Treble Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5784
    const/16 v0, 0x323

    goto :goto_0

    .line 5785
    :cond_4
    const-string v1, "Loudness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5786
    const/16 v0, 0x324

    goto :goto_0

    .line 5787
    :cond_5
    const-string v1, "Live"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5788
    const/16 v0, 0x325

    goto :goto_0

    .line 5789
    :cond_6
    const-string v1, "Dance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5790
    const/16 v0, 0x326

    goto :goto_0

    .line 5791
    :cond_7
    const-string v1, "Warmth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5792
    const/16 v0, 0x327

    goto :goto_0

    .line 5793
    :cond_8
    const-string v1, "Sweetener"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5794
    const/16 v0, 0x328

    goto :goto_0

    .line 5795
    :cond_9
    const-string v1, "Vocal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5796
    const/16 v0, 0x329

    goto :goto_0

    .line 5797
    :cond_a
    const-string v1, "Blues"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5798
    const/16 v0, 0x32a

    goto :goto_0

    .line 5799
    :cond_b
    const-string v1, "Classical"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5800
    const/16 v0, 0x32b

    goto :goto_0

    .line 5801
    :cond_c
    const-string v1, "Country"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5802
    const/16 v0, 0x32c

    goto/16 :goto_0

    .line 5803
    :cond_d
    const-string v1, "Jazz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5804
    const/16 v0, 0x32d

    goto/16 :goto_0

    .line 5805
    :cond_e
    const-string v1, "Latin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5806
    const/16 v0, 0x32e

    goto/16 :goto_0

    .line 5807
    :cond_f
    const-string v1, "New Age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5808
    const/16 v0, 0x32f

    goto/16 :goto_0

    .line 5809
    :cond_10
    const-string v1, "Piano"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5810
    const/16 v0, 0x330

    goto/16 :goto_0

    .line 5811
    :cond_11
    const-string v1, "Pop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5812
    const/16 v0, 0x331

    goto/16 :goto_0

    .line 5813
    :cond_12
    const-string v1, "R&B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5814
    const/16 v0, 0x332

    goto/16 :goto_0

    .line 5815
    :cond_13
    const-string v1, "Rock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5816
    const/16 v0, 0x333

    goto/16 :goto_0
.end method

.method private static getMsg(II)I
    .locals 2
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 2811
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 2815
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 2441
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2442
    const/4 v0, 0x0

    .line 2443
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2444
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2445
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2446
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 2447
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 2453
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 2444
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 2449
    :cond_1
    if-eqz p2, :cond_2

    .line 2450
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2451
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 2454
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method private getSkinContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter "context"

    .prologue
    .line 4324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4325
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4333
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4331
    .restart local p1
    :cond_1
    :try_start_0
    const-string v2, "com.htc"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 4332
    :catch_0
    move-exception v1

    .line 4333
    .local v1, pme:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1272
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1275
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1277
    return p0
.end method

.method private handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    .line 3791
    if-nez p1, :cond_0

    .line 3831
    :goto_0
    return-void

    .line 3794
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3795
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3796
    const-string v0, ""

    .line 3798
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 3799
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 3803
    .local v1, isConnected:Z
    :goto_1
    if-eqz v1, :cond_5

    if-eq p2, v5, :cond_5

    .line 3804
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3805
    if-nez p2, :cond_2

    .line 3809
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 3830
    :cond_2
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #isConnected:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3799
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 3813
    .restart local v1       #isConnected:Z
    :cond_4
    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_2

    .line 3815
    :cond_5
    if-nez v1, :cond_2

    if-ne p2, v5, :cond_2

    .line 3816
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3818
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3819
    iput-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 3828
    :cond_6
    :goto_3
    invoke-direct {p0, v0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 3823
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3824
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3825
    iget-object v2, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private handleFocusForCalls(IILandroid/os/IBinder;)V
    .locals 7
    .parameter "oldMode"
    .parameter "newMode"
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1444
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1453
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 1467
    :cond_2
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1474
    :cond_3
    if-nez p2, :cond_0

    .line 1476
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p0, v4, v0}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 3786
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initEqList()V
    .locals 18

    .prologue
    .line 5723
    new-instance v3, Ljava/io/File;

    const-string v15, "/system/etc/soundimage/srs_geq10.cfg"

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5724
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 5725
    :cond_0
    const-string v15, "AudioService"

    const-string/jumbo v16, "open file error /system/etc/soundimage/srs_geq10.cfg"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    :cond_1
    const/4 v7, 0x0

    .line 5730
    .local v7, input:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5736
    .end local v7           #input:Ljava/io/BufferedReader;
    .local v8, input:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 5737
    .local v9, line:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5739
    .local v13, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 5740
    const-string v15, "\""

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 5741
    .local v10, sidx:I
    const-string v15, "\""

    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 5742
    .local v2, eidx:I
    if-ltz v10, :cond_2

    if-ltz v2, :cond_2

    .line 5745
    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v9, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5746
    .local v12, substr:Ljava/lang/String;
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "effect name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5749
    .end local v2           #eidx:I
    .end local v10           #sidx:I
    .end local v12           #substr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5750
    .local v1, e:Ljava/lang/Exception;
    const-string v15, "AudioService"

    const-string/jumbo v16, "initEqList"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5752
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 5753
    .local v11, size:I
    if-eqz v11, :cond_8

    .line 5754
    const/4 v6, 0x0

    .line 5755
    .local v6, idx:I
    new-array v14, v11, [I

    .line 5756
    .local v14, tempId:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v11, :cond_5

    .line 5757
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/media/AudioService;->getIdFromString(Ljava/lang/String;)I

    move-result v5

    .line 5758
    .local v5, id:I
    const/16 v15, -0x64

    if-eq v5, v15, :cond_4

    .line 5759
    aput v5, v14, v6

    .line 5760
    add-int/lit8 v6, v6, 0x1

    .line 5756
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5732
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #idx:I
    .end local v8           #input:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #size:I
    .end local v13           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #tempId:[I
    .restart local v7       #input:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 5733
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v15, "AudioService"

    const-string/jumbo v16, "initEqList()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5772
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 5763
    .end local v7           #input:Ljava/io/BufferedReader;
    .restart local v4       #i:I
    .restart local v6       #idx:I
    .restart local v8       #input:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #size:I
    .restart local v13       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #tempId:[I
    :cond_5
    new-array v15, v6, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/AudioService;->mEqList:[I

    .line 5764
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_6

    .line 5765
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/AudioService;->mEqList:[I

    aget v16, v14, v4

    aput v16, v15, v4

    .line 5764
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 5767
    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_7

    .line 5768
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " effect id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mEqList:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 5770
    :cond_7
    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/AudioService;->mListNum:I

    .end local v4           #i:I
    .end local v6           #idx:I
    .end local v14           #tempId:[I
    :cond_8
    move-object v7, v8

    .line 5772
    .end local v8           #input:Ljava/io/BufferedReader;
    .restart local v7       #input:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private initializeDockMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    const-string v0, "AudioService"

    const-string/jumbo v1, "initializeDockMode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput-boolean v3, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 584
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mBackupVibrateSettingForRinger:I

    .line 585
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mBackupVibrateSettingForNotification:I

    .line 588
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v0, p0, Landroid/media/AudioService;->mBackupRingerMode:I

    .line 591
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v3, :cond_0

    .line 592
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 595
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 596
    invoke-virtual {p0, v3, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 597
    return-void
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 4954
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4955
    const/4 v0, 0x1

    .line 4957
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDockMode()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockMode:Z

    return v0
.end method

.method private isExitingDockMode()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    return v0
.end method

.method private isHeadsetPlugged()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 553
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    const-string v2, "AudioService"

    const-string/jumbo v3, "isHeadsetPlugged() - in mirror mode return false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHeadsetPlugged() - return mHeadsetState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService;->mHeadsetState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v2, p0, Landroid/media/AudioService;->mHeadsetState:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isStreamModifiedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2704
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "address"
    .parameter "btDevice"

    .prologue
    const/16 v5, 0x80

    const/4 v6, 0x1

    .line 3681
    invoke-static {v5, v6, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3685
    const-string v3, "A2dpSuspended=false"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3687
    const-string v1, "false"

    .line 3688
    .local v1, isCarkit:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3689
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3690
    const-string v2, "<unknown>"

    .line 3692
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 3693
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 3698
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a2dp_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";a2dp_carkit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3700
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3702
    iput-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3713
    const-string v3, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v6}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3714
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendIntents, Intent.ACTION_A2DP_PLUG, state 1 , name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3717
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 3752
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3754
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3756
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3757
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3759
    iget-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3769
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3770
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntents, Intent.ACTION_A2DP_PLUG, state 0 , name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3776
    :goto_0
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3777
    return-void

    .line 3773
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "bt name is null , do not send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v4, 0x0

    .line 3721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3722
    .local v0, noisyIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3723
    invoke-static {v2, v4, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3726
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3728
    iget-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3738
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3739
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntents, Intent.ACTION_A2DP_PLUG, state 0 , name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3745
    :goto_0
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3746
    return-void

    .line 3742
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "bt name is null , do not send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 4389
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 4390
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4392
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4400
    :cond_0
    :goto_0
    return-void

    .line 4394
    :catch_0
    move-exception v0

    .line 4395
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 5023
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5024
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5025
    :try_start_1
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5027
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5029
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5030
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5031
    return-void

    .line 5029
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5030
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 7
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 5037
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 5038
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5039
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5042
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5045
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5051
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5062
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5063
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5064
    return-void

    .line 5053
    :catch_0
    move-exception v0

    .line 5054
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 5062
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 5063
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 7
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 4907
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4930
    :goto_0
    return-void

    .line 4910
    :cond_0
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pushMediaButtonReceiver target ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4912
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 4913
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 4914
    .local v2, wasInsideStack:Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4915
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4916
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4917
    const/4 v2, 0x1

    .line 4918
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4922
    :cond_2
    if-nez v2, :cond_3

    .line 4923
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4925
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4928
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .locals 5

    .prologue
    .line 5323
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_0

    .line 5325
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5326
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 5328
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5335
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 5329
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 5331
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .locals 1

    .prologue
    .line 5316
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 5318
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 5320
    :cond_0
    return-void
.end method

.method private readPersistedSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 681
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 683
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 686
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-static {v1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 688
    const-string/jumbo v1, "mode_ringer"

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 693
    :cond_0
    iput v3, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    .line 697
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 701
    const-string/jumbo v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 705
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v1, :cond_2

    .line 706
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 710
    :goto_0
    const-string/jumbo v1, "mode_ringer_streams_affected"

    iget v2, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    const-string/jumbo v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 716
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 717
    const-string/jumbo v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 720
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v4, :cond_1

    .line 721
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v3, v1, v2

    .line 726
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 729
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 730
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 733
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 734
    return-void

    .line 708
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_0
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 4475
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4478
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4479
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4480
    if-eqz p2, :cond_0

    .line 4482
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4484
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4485
    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4486
    monitor-exit v3

    .line 4502
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_0
    return-void

    .line 4486
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4491
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4492
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4494
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4495
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4498
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 4511
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 4513
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4514
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4515
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4516
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4517
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4511
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4523
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 4526
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4528
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4529
    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4530
    monitor-exit v4

    .line 4532
    :cond_3
    return-void

    .line 4530
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 4938
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4939
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4940
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4941
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4942
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4943
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4947
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"

    .prologue
    .line 4849
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4850
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4851
    monitor-exit v4

    .line 4878
    :goto_0
    return-void

    .line 4853
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4854
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4856
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4857
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4858
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4860
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4861
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1

    .line 4877
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4864
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4866
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4877
    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 4869
    :cond_4
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 4872
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 741
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 2516
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2517
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2518
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2520
    monitor-exit v1

    .line 2521
    return-void

    .line 2520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetVolumePanel()V
    .locals 3

    .prologue
    .line 4315
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 4316
    .local v0, skinPackage:Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getSkinContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1


    goto :goto_0
.end method

.method private restoreMediaButtonReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4885
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4887
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4888
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4891
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4893
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4894
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4896
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4898
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private restoreRingerMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1818
    const-string v4, "AudioService"

    const-string/jumbo v5, "restoreRingerMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v6

    aget-object v2, v4, v5

    .line 1821
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1822
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 1826
    .local v3, tmpIndex:I
    :goto_0
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1827
    .local v1, previousRingerMode:I
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1829
    .local v0, newRingerMode:I
    add-int/lit8 v4, v3, 0x5

    div-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    .line 1830
    iget v4, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1831
    const/4 v0, 0x1

    .line 1841
    :goto_1
    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_0

    .line 1842
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1845
    const/4 v4, 0x0

    invoke-direct {p0, v6, v3, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 1848
    :cond_0
    iput v1, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    .line 1849
    return-void

    .line 1824
    .end local v0           #newRingerMode:I
    .end local v1           #previousRingerMode:I
    .end local v3           #tmpIndex:I
    :cond_1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .restart local v3       #tmpIndex:I
    goto :goto_0

    .line 1833
    .restart local v0       #newRingerMode:I
    .restart local v1       #previousRingerMode:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1835
    :cond_3
    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 1836
    const/4 v0, 0x3

    goto :goto_1

    .line 1839
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private restoreStreamVolumes()V
    .locals 6

    .prologue
    .line 1795
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1796
    .local v0, numStreamTypes:I
    const/4 v2, 0x0

    .local v2, streamType:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1797
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 1798
    .local v1, streamState:Landroid/media/AudioService$VolumeStreamState;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreStreamVolumes streamState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isHeadsetPlugged(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1800
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1796
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1802
    :cond_0
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_1

    .line 1810
    .end local v1           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_1
    return-void
.end method

.method private restoreVibrateSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1218
    sget-boolean v0, Landroid/media/AudioService;->is_vibrate_un_check:Z

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0, v1, v1}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1220
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1221
    sput-boolean v1, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 1223
    :cond_0
    return-void
.end method

.method private final declared-synchronized sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "intentType"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 3668
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3669
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3670
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3671
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3673
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3674
    monitor-exit p0

    return-void

    .line 3668
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 4
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2820
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move v0, p1

    .line 2822
    .local v0, msg:I
    :goto_0
    if-nez p3, :cond_2

    .line 2823
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2828
    :cond_0
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2830
    :goto_1
    return-void

    .line 2820
    .end local v0           #msg:I
    :cond_1
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v0

    goto :goto_0

    .line 2824
    .restart local v0       #msg:I
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 4
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 960
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 961
    const/4 p1, 0x5

    .line 964
    :cond_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 965
    :cond_1
    const/4 p1, 0x3

    .line 966
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastFMVolume()V

    .line 969
    :cond_2
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bf] postVolumeChanged: streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;

    invoke-virtual {v1, p1, p4}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[af] postVolumeChanged: streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 974
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 975
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 980
    return-void
.end method

.method private setBeatsNotification(ZZ)V
    .locals 7
    .parameter "NotificationOn"
    .parameter "BeatsEnable"

    .prologue
    const/4 v6, 0x1

    .line 5440
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBeatsNotification() NotificationOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BeatsEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    const/4 v1, 0x0

    .line 5442
    .local v1, changed:Z
    const/4 v0, 0x0

    .line 5445
    .local v0, NewNf:Z
    sget-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    if-eq v3, p1, :cond_1

    .line 5446
    if-ne p1, v6, :cond_0

    .line 5447
    const/4 v0, 0x1

    .line 5449
    :cond_0
    sput-boolean p1, Landroid/media/AudioService;->mNotificationOn:Z

    .line 5450
    const/4 v1, 0x1

    .line 5454
    :cond_1
    sget-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    if-ne v3, v6, :cond_2

    .line 5455
    sget-boolean v3, Landroid/media/AudioService;->mBeatsEnable:Z

    if-eq v3, p2, :cond_2

    .line 5456
    sput-boolean p2, Landroid/media/AudioService;->mBeatsEnable:Z

    .line 5457
    const/4 v1, 0x1

    .line 5461
    :cond_2
    if-ne v1, v6, :cond_3

    .line 5462
    const-string v3, "AudioService"

    const-string/jumbo v4, "send ACTION_HTC_BEATS_NOTIFICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.BEATS_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5464
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "NotificationOn"

    sget-boolean v4, Landroid/media/AudioService;->mNotificationOn:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5465
    const-string v3, "NewNf"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5466
    const-string v3, "BeatsEnable"

    sget-boolean v4, Landroid/media/AudioService;->mBeatsEnable:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5467
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5469
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private setGlobalEffectDB(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 5895
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set effect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mGlobalSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5897
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5898
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5902
    :goto_0
    return-void

    .line 5899
    :catch_0
    move-exception v0

    .line 5900
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string/jumbo v2, "setGlobalEffectDB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 6
    .parameter "newClientGeneration"

    .prologue
    .line 4986
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4987
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4988
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4989
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 4991
    :try_start_0
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4992
    :catch_0
    move-exception v0

    .line 4993
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4995
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 4999
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4969
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    .line 4971
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4980
    :cond_0
    :goto_0
    return-void

    .line 4973
    :catch_0
    move-exception v0

    .line 4974
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 4977
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5012
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5014
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 5015
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .locals 10
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1110
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->isDockMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v5, :cond_1

    .line 1111
    const-string v0, "AudioService"

    const-string v1, "Can\'t change to Vibrate Mode while enter Dock Mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->isDockMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/media/AudioService;->isExitingDockMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v5, :cond_a

    if-eq p1, v5, :cond_a

    .line 1118
    invoke-direct {p0}, Landroid/media/AudioService;->restoreVibrateSetting()V

    .line 1126
    :cond_2
    :goto_1
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerModeInt pre="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , now="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , persist="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v0, p0, Landroid/media/AudioService;->preRingerMode:I

    .line 1129
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1135
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1136
    .local v8, numStreamTypes:I
    add-int/lit8 v9, v8, -0x1

    .local v9, streamType:I
    :goto_2
    if-ltz v9, :cond_e

    .line 1140
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamModifiedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1141
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v7, :cond_5

    .line 1145
    :cond_3
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, v9

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1148
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    const/16 v2, 0xa

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1151
    :cond_4
    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-ne v0, v1, :cond_b

    .line 1152
    const-string v0, "AudioService"

    const-string/jumbo v2, "outdoor back to normal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1154
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1162
    :cond_5
    :goto_3
    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v0, :cond_7

    .line 1164
    :cond_6
    const-string v0, "AudioService"

    const-string/jumbo v2, "outdoor to silent or vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1166
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1167
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1169
    :cond_7
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-nez v0, :cond_9

    .line 1171
    :cond_8
    const-string v0, "AudioService"

    const-string/jumbo v2, "silent or vibrate to outdoor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    invoke-virtual {v0, v6, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1173
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1174
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1136
    :cond_9
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1119
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_a
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_2

    if-ne p1, v5, :cond_2

    .line 1121
    invoke-direct {p0}, Landroid/media/AudioService;->backupVibrateSetting()V

    goto/16 :goto_1

    .line 1156
    .restart local v8       #numStreamTypes:I
    .restart local v9       #streamType:I
    :cond_b
    const-string v0, "AudioService"

    const-string/jumbo v2, "silent or vibrate back to normal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1158
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    .line 1177
    :cond_c
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v7, :cond_9

    .line 1179
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_d

    .line 1180
    const-string v0, "AudioService"

    const-string/jumbo v2, "normal to outdoor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    invoke-virtual {v0, v6, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1182
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    goto :goto_4

    .line 1184
    :cond_d
    const-string v0, "AudioService"

    const-string/jumbo v2, "normal to silent or vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1186
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_4

    .line 1194
    :cond_e
    if-eqz p2, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method private setStreamVolumeIndex(II)V
    .locals 1
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 737
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 738
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 993
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 997
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1000
    if-eqz p2, :cond_0

    invoke-virtual {v6}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1001
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 1006
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1016
    :cond_2
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_0

    .line 1019
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    .locals 10
    .parameter "streamState"
    .parameter "setToCurrent"

    .prologue
    const/16 v7, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2848
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AudioHandler] syncSetIndex Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    if-eqz p2, :cond_3

    .line 2850
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2851
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 2856
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 2857
    .local v8, numStreamTypes:I
    add-int/lit8 v9, v8, -0x1

    .local v9, streamType:I
    :goto_1
    if-ltz v9, :cond_3

    .line 2858
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2860
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2861
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 2857
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 2853
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_0

    .line 2863
    .restart local v8       #numStreamTypes:I
    .restart local v9       #streamType:I
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_2

    .line 2869
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_3
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2870
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2875
    :goto_3
    return-void

    .line 2873
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v1, v4

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_3
.end method

.method private unmuteIfNecessary(IZI)Z
    .locals 7
    .parameter "streamType"
    .parameter "adjustVolume"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 908
    move v0, p2

    .line 909
    .local v0, adjust:Z
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/media/AudioService;->isStreamModifiedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 910
    if-ne p3, v6, :cond_0

    .line 911
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v4, p1

    .line 912
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 913
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 914
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v4, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 915
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v4, v5, v5}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 913
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_0
    const/4 v0, 0x0

    .line 920
    :cond_1
    return v0
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .parameter "infoChangedFlags"

    .prologue
    .line 5088
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5089
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 5092
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    .line 5094
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5107
    :goto_0
    return-void

    .line 5097
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5098
    :try_start_0
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5100
    const/16 v0, 0xf

    .line 5102
    :cond_1
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5103
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5105
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5103
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 635
    monitor-enter p0

    .line 636
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 639
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 4646
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    :try_start_0
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4650
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4651
    monitor-exit v2

    .line 4660
    :goto_0
    return v4

    .line 4651
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4652
    :catch_0
    move-exception v0

    .line 4656
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 19
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 785
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStreamVolume(), streamType + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", direction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isBTConnected:Z

    if-eqz v3, :cond_0

    .line 788
    const/16 p1, 0x6

    .line 790
    :cond_0
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v3, :cond_1

    .line 791
    const-string v3, "AudioService"

    const-string v4, "adjustStreamVolume change from STREAM_FM to STREAM_MUSIC"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/16 p1, 0x3

    .line 794
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mDongleMediaOn:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    if-nez v3, :cond_2

    .line 795
    const-string v3, "AudioService"

    const-string v4, "Force to adjust Media volume because playing media content with Dongle."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 p1, 0x3

    .line 799
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 800
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v17, v3, p1

    .line 803
    .local v17, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v3, v17

    .line 806
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 807
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v18

    .line 812
    .local v18, tmpIndex:I
    :goto_0
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_b

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    .line 813
    .local v15, oldIndex:I
    :goto_1
    const/4 v11, 0x1

    .line 817
    .local v11, adjustVolume:Z
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v3, :cond_5

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    .line 821
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 822
    and-int/lit8 p3, p3, -0x11

    .line 826
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v11

    .line 829
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_6

    .line 831
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    .line 832
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7

    .line 833
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    .line 836
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 837
    if-nez p2, :cond_8

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    if-ne v3, v4, :cond_8

    .line 839
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    if-nez v3, :cond_c

    .line 840
    and-int/lit8 p3, p3, -0x5

    .line 858
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v11, v2}, Landroid/media/AudioService;->unmuteIfNecessary(IZI)Z

    move-result v11

    .line 863
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 865
    if-eqz v11, :cond_10

    .line 868
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    .line 869
    .local v14, numStreamTypes:I
    add-int/lit8 v12, v14, -0x1

    .local v12, i:I
    :goto_3
    if-ltz v12, :cond_10

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, v12

    move/from16 v0, v17

    if-ne v3, v0, :cond_9

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v16, v3, v12

    .line 873
    .local v16, s:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(I)V

    .line 878
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 869
    .end local v16           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_9
    :goto_4
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 809
    .end local v11           #adjustVolume:Z
    .end local v12           #i:I
    .end local v14           #numStreamTypes:I
    .end local v15           #oldIndex:I
    .end local v18           #tmpIndex:I
    :cond_a
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v18

    .restart local v18       #tmpIndex:I
    goto/16 :goto_0

    :cond_b
    move/from16 v15, v18

    .line 812
    goto/16 :goto_1

    .line 842
    .restart local v11       #adjustVolume:Z
    .restart local v15       #oldIndex:I
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    goto :goto_2

    .line 847
    :cond_d
    if-nez p2, :cond_8

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    if-ne v3, v4, :cond_8

    .line 849
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    if-nez v3, :cond_e

    .line 850
    and-int/lit8 p3, p3, -0x5

    goto :goto_2

    .line 852
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    goto :goto_2

    .line 882
    .restart local v12       #i:I
    .restart local v14       #numStreamTypes:I
    .restart local v16       #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0xbb8

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_4

    .line 888
    .end local v12           #i:I
    .end local v14           #numStreamTypes:I
    .end local v16           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_10
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v13

    .line 899
    .local v13, index:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->screenOn:Z

    if-nez v3, :cond_11

    .line 900
    or-int/lit8 p3, p3, 0x1

    .line 901
    :cond_11
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 902
    and-int/lit8 p3, p3, -0x5

    .line 904
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v15, v13, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 905
    return-void

    .line 890
    .end local v13           #index:I
    :cond_13
    if-eqz v11, :cond_14

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v5, v17

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 896
    :cond_14
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v13

    .restart local v13       #index:I
    goto :goto_5
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 4
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 756
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume(), direction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-boolean v1, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    if-eqz v1, :cond_0

    .line 761
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 762
    const-string v1, "AudioService"

    const-string/jumbo v2, "setStreamVolumeIndex STREAM_NOTIFICATION value: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_3

    .line 768
    move v0, p2

    .line 774
    .local v0, streamType:I
    :goto_0
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    and-int/lit8 p3, p3, -0x5

    :cond_2
    invoke-direct {p0, p3, p1}, Landroid/media/AudioService;->adjustDirection(II)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    return-void

    .end local v0           #streamType:I
    :cond_3
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_0
.end method

.method public adjustVolume(II)V
    .locals 3
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 750
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustVolume(), direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 752
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 2833
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2835
    const/4 v1, 0x1

    .line 2841
    :goto_0
    return v1

    .line 2837
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2840
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkBeatsHeadset()I
    .locals 6

    .prologue
    .line 1977
    :try_start_0
    const-string/jumbo v3, "htchardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 1978
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v1, :cond_2

    .line 1979
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v2

    .line 1980
    .local v2, type:Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headset type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const-string v3, "headset_beats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    const/16 v3, 0x2bd

    .line 1994
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :goto_0
    return v3

    .line 1984
    .restart local v1       #hwService:Landroid/os/IHtcHardwareService;
    .restart local v2       #type:Ljava/lang/String;
    :cond_0
    const-string v3, "headset_beats_solo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1985
    const/16 v3, 0x2be

    goto :goto_0

    .line 1988
    :cond_1
    const/16 v3, 0x2c6

    goto :goto_0

    .line 1991
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1992
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "get IHtcHardwareService failed in checkBeatsHeadset()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1994
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v3, -0x2bc

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 2458
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2459
    const/4 v2, 0x0

    .line 2460
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2461
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2462
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 2463
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 2464
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2461
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2466
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 2469
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2470
    if-eqz v2, :cond_2

    .line 2471
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    :cond_2
    monitor-exit v5

    .line 2474
    return-void

    .line 2473
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5424
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 5425
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 5427
    const-string v2, "AudioService stream volume:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5428
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 5429
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headset index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5433
    :cond_0
    return-void
.end method

.method public getBeatsHeadset()I
    .locals 6

    .prologue
    const/16 v2, -0x3e9

    .line 5845
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBeatsHeadset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5847
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio.beatsheadset.type"

    const/16 v5, -0x3e9

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5848
    .local v1, headset:I
    if-eq v1, v2, :cond_0

    .line 5849
    iput v1, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    .line 5850
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z

    .line 5856
    :goto_0
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headset type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    .end local v1           #headset:I
    :goto_1
    return v1

    .line 5853
    .restart local v1       #headset:I
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5854
    const/16 v1, 0x3f2

    goto :goto_0

    .line 5858
    .end local v1           #headset:I
    :catch_0
    move-exception v0

    .line 5859
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "getBeatsHeadset"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 5861
    goto :goto_1
.end method

.method public getBeatsState()Z
    .locals 4

    .prologue
    .line 2017
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 2018
    const/4 v0, 0x0

    .line 2020
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBeatsState:Z

    goto :goto_0
.end method

.method public getGlobalEffect()I
    .locals 3

    .prologue
    .line 5700
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGlobalEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1073
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1066
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1055
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 1058
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 1247
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isBeatsHeadset()Z
    .locals 7

    .prologue
    .line 1959
    const/4 v2, 0x0

    .line 1961
    .local v2, isBeats:Z
    :try_start_0
    const-string/jumbo v4, "htchardware"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 1962
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v1, :cond_1

    .line 1963
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v3

    .line 1964
    .local v3, type:Ljava/lang/String;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const-string v4, "headset_beats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "headset_beats_solo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1966
    :cond_0
    const/4 v2, 0x1

    .line 1972
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v3           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 1969
    :catch_0
    move-exception v0

    .line 1970
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AudioService"

    const-string v5, "get IHtcHardwareService failed in isBeatsHeadset()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBeatsHeadsetBT()Z
    .locals 6

    .prologue
    .line 5709
    const/4 v2, 0x0

    .line 5710
    .local v2, isBtBeats:Z
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 5711
    const/4 v4, 0x0

    .line 5719
    :goto_0
    return v4

    .line 5713
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 5714
    .local v3, name:Ljava/lang/String;
    const-string v4, "beats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 5715
    .local v0, index:I
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    const-string v5, "Beatbox Portable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 5716
    .local v1, index_box:I
    if-gez v0, :cond_1

    if-ltz v1, :cond_2

    .line 5717
    :cond_1
    const/4 v2, 0x1

    :cond_2
    move v4, v2

    .line 5719
    goto :goto_0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 1883
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDongleConnected()Z
    .locals 1

    .prologue
    .line 5837
    iget-boolean v0, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    return v0
.end method

.method public isFMActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5833
    iget-boolean v1, p0, Landroid/media/AudioService;->mFMActive:Z

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1865
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2708
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2699
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    .line 1505
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1506
    :try_start_0
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_0

    .line 1507
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const/4 v8, 0x0

    monitor-exit v9

    .line 1614
    :goto_0
    return v8

    .line 1511
    :cond_0
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1

    .line 1512
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1514
    :cond_1
    :try_start_1
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1515
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v8, :cond_2

    .line 1516
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() could not allocate sound pool"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1521
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1522
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1523
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1525
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1530
    :goto_1
    :try_start_3
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_4

    .line 1531
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_3

    .line 1533
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1534
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1536
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1537
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1538
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1539
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1547
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1548
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_2
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_5

    .line 1549
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1548
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1557
    :cond_5
    const/4 v4, 0x0

    .line 1558
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_3
    const/16 v8, 0x9

    if-ge v1, v8, :cond_9

    .line 1560
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_6

    .line 1558
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1563
    :cond_6
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_8

    .line 1564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1567
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1568
    .local v6, sampleId:I
    if-gtz v6, :cond_7

    .line 1569
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1571
    :cond_7
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1572
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1573
    move v4, v6

    goto :goto_4

    .line 1576
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_8
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_4

    .line 1580
    :cond_9
    if-eqz v4, :cond_c

    .line 1581
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1584
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1585
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    .line 1594
    .local v7, status:I
    :goto_5
    :try_start_5
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_a

    .line 1595
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1596
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1598
    :cond_a
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1599
    if-eqz v7, :cond_f

    .line 1600
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_d

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_6
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v1, 0x0

    :goto_7
    const/16 v8, 0x9

    if-ge v1, v8, :cond_e

    .line 1605
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_b

    .line 1606
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1604
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1586
    .end local v7           #status:I
    :catch_1
    move-exception v0

    .line 1587
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/4 v7, -0x1

    .line 1589
    .restart local v7       #status:I
    goto :goto_5

    .line 1591
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_c
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_5

    .line 1600
    :cond_d
    const/4 v8, -0x1

    goto :goto_6

    .line 1610
    :cond_e
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1611
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1613
    :cond_f
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1614
    if-nez v7, :cond_10

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 8
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 1487
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1489
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1493
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1494
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1496
    return-void
.end method

.method public queryGlobalEffectList()[I
    .locals 1

    .prologue
    .line 5705
    iget-object v0, p0, Landroid/media/AudioService;->mEqList:[I

    return-object v0
.end method

.method public registerBeatsMediaClient(Landroid/os/IBinder;)V
    .locals 8
    .parameter "cb"

    .prologue
    .line 2238
    const-string v5, "AudioService"

    const-string/jumbo v6, "registerBeatsMediaClient"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const/4 v3, 0x0

    .line 2240
    .local v3, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2242
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2243
    iget-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$BeatsDeathHandler;

    .line 2244
    .local v1, handler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v5, v1, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-ne v5, p1, :cond_0

    .line 2245
    move-object v3, v1

    .line 2242
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2249
    .end local v1           #handler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_1
    if-nez v3, :cond_2

    .line 2250
    new-instance v3, Landroid/media/AudioService$BeatsDeathHandler;

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    invoke-direct {v3, p0, p1}, Landroid/media/AudioService$BeatsDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2252
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2253
    iget-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2254
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerBeatsMediaClient success, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2259
    :cond_2
    :goto_1
    return-void

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    const-string/jumbo v6, "registerBeatsMediaClient"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5154
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5157
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5158
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5160
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5161
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5162
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5163
    return-void

    .line 5161
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5162
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V
    .locals 10
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 5194
    sget-object v6, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5195
    :try_start_0
    iget-object v7, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5197
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5198
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5200
    .local v3, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5202
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v5, :cond_1

    .line 5204
    invoke-virtual {v3}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5207
    :cond_1
    iput-object p2, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5208
    iput-object p3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 5209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 5210
    if-nez p2, :cond_4

    .line 5242
    .end local v3           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5243
    const/16 v5, 0xf

    invoke-direct {p0, v5}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5245
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5246
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5247
    return-void

    .line 5217
    .restart local v3       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_4
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_5

    .line 5219
    :try_start_4
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v8, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v5, v8}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5226
    :cond_5
    :goto_1
    :try_start_5
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v5}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5227
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v5}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5230
    .local v2, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v5, 0x0

    :try_start_6
    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5236
    :goto_2
    :try_start_7
    iput-object v2, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_0

    .line 5245
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v3           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5

    .line 5246
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    .line 5220
    .restart local v3       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v4       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_0
    move-exception v1

    .line 5221
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v5, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error connecting remote control display to client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5222
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5231
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_1
    move-exception v1

    .line 5233
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 8
    .parameter "rcd"

    .prologue
    .line 5346
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5347
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5348
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_0

    if-nez p1, :cond_1

    .line 5349
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5377
    :goto_0
    return-void

    .line 5352
    :cond_1
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5353
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5355
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 5360
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5361
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5362
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5363
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 5365
    :try_start_4
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 5366
    :catch_0
    move-exception v0

    .line 5367
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5368
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5375
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 5376
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 5374
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    const/16 v3, 0xf

    :try_start_7
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5375
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5376
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method public reloadAudioSettings()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1702
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1705
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    .line 1706
    .local v5, numStreamTypes:I
    const/4 v10, 0x0

    .local v10, streamType:I
    :goto_0
    if-ge v10, v5, :cond_9

    .line 1707
    iget-object v11, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v11, v10

    .line 1709
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    sget-object v11, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    aget-object v6, v11, v12

    .line 1710
    .local v6, settingName:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_last_audible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1711
    .local v3, lastAudibleSettingName:Ljava/lang/String;
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v12, v10

    invoke-static {v11, v6, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1715
    .local v1, index:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_0

    .line 1717
    mul-int/lit8 v11, v1, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1721
    :goto_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1723
    add-int/lit8 v11, v1, 0x5

    div-int/lit8 v1, v11, 0xa

    .line 1724
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_1

    .end local v1           #index:I
    :goto_2
    invoke-static {v11, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1728
    .restart local v1       #index:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings mLastAudibleIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_2

    .line 1730
    mul-int/lit8 v11, v1, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1734
    :goto_3
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1737
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_headset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1738
    .local v7, settingName_Headset:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_last_audible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_headset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1739
    .local v4, lastAudibleSettingName_Headset:Ljava/lang/String;
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v12, v10

    invoke-static {v11, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1742
    .local v2, index_Headset:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings index_Headset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_3

    .line 1744
    mul-int/lit8 v11, v2, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 1748
    :goto_4
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1750
    add-int/lit8 v11, v2, 0x5

    div-int/lit8 v2, v11, 0xa

    .line 1751
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v2, :cond_4

    .end local v2           #index_Headset:I
    :goto_5
    invoke-static {v11, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1754
    .restart local v2       #index_Headset:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings lastAudibleIndex_Headset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_5

    .line 1756
    mul-int/lit8 v11, v2, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 1760
    :goto_6
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$1002(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1766
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0, v10}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1767
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1768
    .local v8, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v8, :cond_6

    .line 1769
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v12, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v11, v12}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1770
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v11, v14, v14}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 1768
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1719
    .end local v0           #i:I
    .end local v2           #index_Headset:I
    .end local v4           #lastAudibleSettingName_Headset:Ljava/lang/String;
    .end local v7           #settingName_Headset:Ljava/lang/String;
    .end local v8           #size:I
    :cond_0
    mul-int/lit8 v1, v1, 0xa

    goto/16 :goto_1

    .line 1724
    :cond_1
    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v12, v10

    goto/16 :goto_2

    .line 1732
    :cond_2
    mul-int/lit8 v1, v1, 0xa

    goto/16 :goto_3

    .line 1746
    .restart local v2       #index_Headset:I
    .restart local v4       #lastAudibleSettingName_Headset:Ljava/lang/String;
    .restart local v7       #settingName_Headset:Ljava/lang/String;
    :cond_3
    mul-int/lit8 v2, v2, 0xa

    goto/16 :goto_4

    .line 1751
    :cond_4
    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v12, v10

    goto :goto_5

    .line 1758
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    goto :goto_6

    .line 1774
    :cond_6
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1777
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1779
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1706
    :cond_7
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1781
    :cond_8
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_8

    .line 1789
    .end local v1           #index:I
    .end local v2           #index_Headset:I
    .end local v3           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #lastAudibleSettingName_Headset:Ljava/lang/String;
    .end local v6           #settingName:Ljava/lang/String;
    .end local v7           #settingName_Headset:Ljava/lang/String;
    .end local v9           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_9
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v11

    invoke-direct {p0, v11, v14}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1790
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 2
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5414
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5416
    :try_start_0
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5417
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5418
    monitor-exit v1

    .line 5419
    return-void

    .line 5418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 4574
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4580
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    const/4 v1, 0x0

    .line 4641
    :goto_0
    return v1

    .line 4584
    :cond_0
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4585
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4586
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4639
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4592
    :cond_1
    :try_start_1
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4594
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4601
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4604
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    .line 4607
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4608
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_0

    .line 4595
    :catch_0
    move-exception v10

    .line 4597
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4612
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 4613
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4617
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4619
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4629
    :cond_4
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4632
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4636
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4637
    const/16 v1, 0xf

    :try_start_6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4638
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4639
    :try_start_7
    monitor-exit v12

    .line 4641
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4622
    :catch_1
    move-exception v10

    .line 4623
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 4638
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setBeatsHeadset(I)V
    .locals 4
    .parameter "headsetType"

    .prologue
    .line 5865
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set headset type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBeatsHeadset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.beatsheadset.type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5868
    iput p1, p0, Landroid/media/AudioService;->mBeatsHeadset:I

    .line 5869
    iget v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5873
    :goto_0
    return-void

    .line 5870
    :catch_0
    move-exception v0

    .line 5871
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string/jumbo v2, "setBeatsHeadset"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBeatsState(ZLjava/lang/String;)V
    .locals 5
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 1998
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 1999
    const-string v1, "AudioService"

    const-string v2, "does not support beats or sense"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-ne v1, p1, :cond_2

    .line 2003
    const-string v1, "AudioService"

    const-string/jumbo v2, "sound effect setting is the same as pervious"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2006
    :cond_2
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBeatsState on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iput-boolean p1, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 2009
    invoke-direct {p0}, Landroid/media/AudioService;->applySoundEffectByHeadset()Z

    move-result v0

    .line 2010
    .local v0, isChanged:Z
    iget-boolean v1, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 2011
    if-eqz v0, :cond_0

    .line 2012
    invoke-direct {p0, p2}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 8
    .parameter "on"

    .prologue
    .line 1870
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    :goto_0
    return-void

    .line 1873
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1875
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1877
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1873
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCSCallVolumeOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 1916
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCSCallVolumeOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    if-eqz p1, :cond_0

    .line 1918
    const-string v0, "AudioService"

    const-string v1, "AudioSystem.setStreamVolumeIndex(AudioSystem.STREAM_VOICE_CALL, -2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v0, -0x2

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 1924
    :goto_0
    return-void

    .line 1921
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "AudioSystem.setStreamVolumeIndex(AudioSystem.STREAM_VOICE_CALL, -1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v0, -0x1

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    goto :goto_0
.end method

.method public setGlobalEffect(ILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "appName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5477
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 5478
    const-string v1, "AudioService"

    const-string v2, "does not support beats or sense"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    :goto_0
    return-void

    .line 5481
    :cond_0
    iget v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-ne p1, v1, :cond_1

    .line 5482
    const-string v1, "AudioService"

    const-string/jumbo v2, "sound effect setting is the same as pervious"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5485
    :cond_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mGlobalSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5486
    iput-boolean v6, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z

    .line 5487
    iput-boolean v6, p0, Landroid/media/AudioService;->setGlobalEffect_Flag:Z

    .line 5488
    invoke-direct {p0, p1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    move-result v0

    .line 5489
    .local v0, isChanged:Z
    iget-boolean v1, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 5490
    if-eqz v0, :cond_2

    .line 5491
    invoke-direct {p0, p2}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    .line 5493
    :cond_2
    iput-boolean v5, p0, Landroid/media/AudioService;->setGlobalEffect_NONE_Flag:Z

    .line 5494
    iput-boolean v5, p0, Landroid/media/AudioService;->setGlobalEffect_Flag:Z

    goto :goto_0
.end method

.method public setIgnoreNotificationMuteSetting(Z)V
    .locals 4
    .parameter "ignore"

    .prologue
    const/4 v3, 0x5

    .line 1930
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    if-eqz p1, :cond_0

    .line 1932
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting stream value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v3

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v3, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1938
    :goto_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    .line 1939
    return-void

    .line 1935
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting stream value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v3, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 5
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v4, -0x1

    .line 1327
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    if-lt p1, v4, :cond_0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1338
    if-ne p1, v4, :cond_2

    .line 1339
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1341
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1342
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    if-eqz v0, :cond_0

    .line 1346
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 1342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .locals 12
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1354
    const/4 v5, 0x0

    .line 1355
    .local v5, newModeOwnerPid:I
    if-nez p2, :cond_0

    .line 1356
    const-string v9, "AudioService"

    const-string/jumbo v10, "setModeInt() called with null binder"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1438
    .end local v5           #newModeOwnerPid:I
    .local v6, newModeOwnerPid:I
    :goto_0
    return v6

    .line 1360
    .end local v6           #newModeOwnerPid:I
    .restart local v5       #newModeOwnerPid:I
    :cond_0
    const/4 v2, 0x0

    .line 1361
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1362
    .local v4, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1363
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1364
    .local v1, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v9

    if-ne v9, p3, :cond_1

    .line 1365
    move-object v2, v1

    .line 1367
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1368
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v2, v10}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1372
    .end local v1           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v7, 0x0

    .line 1374
    .local v7, status:I
    :cond_3
    if-nez p1, :cond_8

    .line 1376
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1377
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v2, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1378
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1379
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1399
    :cond_4
    :goto_1
    iget v9, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v9, :cond_c

    .line 1400
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v7

    .line 1401
    if-nez v7, :cond_a

    .line 1403
    iget v9, p0, Landroid/media/AudioService;->mMode:I

    invoke-direct {p0, v9, p1, p2}, Landroid/media/AudioService;->handleFocusForCalls(IILandroid/os/IBinder;)V

    .line 1404
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1416
    :goto_2
    if-eqz v7, :cond_5

    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1418
    :cond_5
    if-nez v7, :cond_7

    .line 1419
    if-eqz p1, :cond_6

    .line 1420
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1421
    const-string v9, "AudioService"

    const-string/jumbo v10, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_6
    :goto_3
    const/high16 v9, -0x8000

    invoke-direct {p0, v9}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v8

    .line 1430
    .local v8, streamType:I
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1431
    iget-object v9, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v10, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v10, v10, v8

    aget-object v9, v9, v10

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 1436
    .local v3, index:I
    :goto_4
    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v3, v10, v11}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .end local v3           #index:I
    .end local v8           #streamType:I
    :cond_7
    move v6, v5

    .line 1438
    .end local v5           #newModeOwnerPid:I
    .restart local v6       #newModeOwnerPid:I
    goto/16 :goto_0

    .line 1382
    .end local v6           #newModeOwnerPid:I
    .restart local v5       #newModeOwnerPid:I
    :cond_8
    if-nez v2, :cond_9

    .line 1383
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-direct {v2, p0, p2, p3}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1387
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_9
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_5
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1396
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_1

    .line 1388
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Landroid/os/RemoteException;
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setMode() could not link to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " binder death"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1406
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_a
    if-eqz v2, :cond_b

    .line 1407
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1408
    const/4 v9, 0x0

    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1411
    :cond_b
    const/4 p1, 0x0

    goto/16 :goto_2

    .line 1414
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1423
    :cond_d
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v9}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v5

    goto :goto_3

    .line 1433
    .restart local v8       #streamType:I
    :cond_e
    iget-object v9, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v10, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v10, v10, v8

    aget-object v9, v9, v10

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .restart local v3       #index:I
    goto :goto_4
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 1084
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v0, :cond_1

    .line 1090
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1092
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 1094
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 1854
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1857
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1859
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1857
    goto :goto_1
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1038
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1043
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 3
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1027
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1028
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 1027
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    goto :goto_1

    .line 1034
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 7
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 925
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 926
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, p1

    aget-object v2, v3, v4

    .line 928
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 931
    .local v1, oldIndex:I
    :goto_0
    iget-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 933
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 934
    .local v0, newRingerMode:I
    if-nez p2, :cond_3

    .line 940
    const/4 v0, 0x0

    .line 941
    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    invoke-direct {p0, v3, p2, v5, v6}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 945
    :goto_1
    iget v3, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v3, :cond_1

    .line 946
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 950
    .end local v0           #newRingerMode:I
    :cond_1
    mul-int/lit8 v3, p2, 0xa

    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, p1

    invoke-direct {p0, v3, p1, v4}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 951
    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    invoke-direct {p0, v3, p2, v5, v6}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 953
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_4

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result p2

    .line 955
    :goto_2
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 956
    return-void

    .line 928
    .end local v1           #oldIndex:I
    :cond_2
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    goto :goto_0

    .line 943
    .restart local v0       #newRingerMode:I
    .restart local v1       #oldIndex:I
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 953
    .end local v0           #newRingerMode:I
    :cond_4
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result p2

    goto :goto_2
.end method

.method public setVibrateSetting(II)V
    .locals 8
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 1253
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1256
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1260
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1262
    return-void
.end method

.method public setVolumePanelOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1910
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolumePanelOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 5
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1227
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldVibrate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mRingerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1241
    :cond_0
    :goto_0
    return v0

    .line 1231
    :pswitch_0
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1234
    :pswitch_1
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1238
    goto :goto_0

    .line 1228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1888
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1893
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1898
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1902
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1903
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_0

    .line 1904
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public triggerBeatsLogo(Z)V
    .locals 13
    .parameter "on"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x65

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2164
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isSupport=true , sense version="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->SenseVersion:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mAppPlay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , isHeadsetPlugged="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v9, v0

    const-wide/high16 v11, 0x4010

    cmpg-double v0, v9, v11

    if-gez v0, :cond_0

    .line 2191
    :goto_0
    return-void

    .line 2169
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wireless_display"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/WirelessDisplayManager;

    .line 2170
    .local v8, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v8, :cond_1

    .line 2171
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMirrorDisplayStatus="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , getMirrorDisplayStatus="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-boolean v0, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2173
    const-string v0, "AudioService"

    const-string v1, "WirelessDisplay mirror mode!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2178
    :cond_1
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2179
    invoke-direct {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v0, :cond_6

    .line 2180
    :cond_2
    if-eqz p1, :cond_4

    .line 2181
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_3

    move v5, v4

    :goto_1
    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_1

    .line 2184
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_5

    move v5, v4

    :goto_2
    const/16 v7, 0x3e8

    move v4, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    move v5, v3

    goto :goto_2

    .line 2188
    :cond_6
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_7

    move v5, v4

    :goto_3
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_7
    move v5, v3

    goto :goto_3
.end method

.method public unloadSoundEffects()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    .line 1623
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1624
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 1625
    monitor-exit v4

    .line 1649
    :goto_0
    return-void

    .line 1628
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1629
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1631
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1632
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1633
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1632
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1636
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 1637
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 1636
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1640
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 1641
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1642
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1643
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 1648
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1646
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1647
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1648
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .parameter "clientId"

    .prologue
    .line 4665
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4666
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4667
    monitor-exit v1

    .line 4668
    return-void

    .line 4667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 2262
    const-string v3, "AudioService"

    const-string/jumbo v4, "unregisterBeatsMediaClient"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v3, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2264
    .local v2, size:I
    const/4 v1, 0x0

    .line 2266
    .local v1, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2267
    iget-object v3, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    check-cast v1, Landroid/media/AudioService$BeatsDeathHandler;

    .line 2268
    .restart local v1       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v3, v1, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-ne v3, p1, :cond_0

    .line 2269
    iget-object v3, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2270
    invoke-virtual {v1}, Landroid/media/AudioService$BeatsDeathHandler;->releaseBinder()V

    .line 2271
    const/4 v1, 0x0

    .line 2272
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterBeatsMediaClient success, size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2275
    :cond_1
    return-void
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5171
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5174
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5175
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 5176
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 5177
    if-eqz v0, :cond_0

    .line 5179
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5181
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5182
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5183
    return-void

    .line 5181
    .end local v0           #topOfStackWillChange:Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 5182
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 5
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 5255
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5256
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5257
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5258
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5260
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5264
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5266
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5267
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_0

    .line 5270
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 5271
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 5270
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5271
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5272
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .parameter "rcd"

    .prologue
    .line 5387
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5389
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_1

    .line 5391
    :cond_0
    monitor-exit v4

    .line 5411
    :goto_0
    return-void

    .line 5394
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5395
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5398
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5399
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5400
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5401
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 5403
    :try_start_1
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5404
    :catch_0
    move-exception v0

    .line 5405
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5410
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private adjustDirection(II)I
    .locals 1
    .parameter "flags"
    .parameter "direction"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;

    invoke-virtual {v0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method