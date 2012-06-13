.class public Lcom/htc/server/WirelessDisplayService;
.super Lcom/htc/service/IWirelessDisplayService$Stub;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;,
        Lcom/htc/server/WirelessDisplayService$InfoListener;,
        Lcom/htc/server/WirelessDisplayService$WivuThread;,
        Lcom/htc/server/WirelessDisplayService$HdmiReceiver;,
        Lcom/htc/server/WirelessDisplayService$CallReceiver;,
        Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;,
        Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;,
        Lcom/htc/server/WirelessDisplayService$WifiReceiver;,
        Lcom/htc/server/WirelessDisplayService$ScreenReceiver;,
        Lcom/htc/server/WirelessDisplayService$H;
    }
.end annotation


# static fields
.field private static final APP_LOCK:I = 0x47

.field private static final APP_PAUSE:I = 0x2c

.field private static final CALL_ONLY:I = 0x4b

.field private static final CALL_PAUSE:I = 0x2e

.field private static final DBG:Z = true

.field private static final DONGLE_INFO_CACHE_SIZE:I = 0x1e

.field private static final ENVIRONMENT_DONGLE_STATE_MANY_UNDONGLE_FOUND:I = 0x3

.field private static final ENVIRONMENT_DONGLE_STATE_NO_DONGLE:I = 0x0

.field private static final ENVIRONMENT_DONGLE_STATE_ONE_UNCONFIG_DONGLE_FOUND:I = 0x2

.field private static final ENVIRONMENT_DONGLE_STATE_READY_TO_USE_DONGLE_FOUND:I = 0x1

.field private static final ERROR_RESTART:I = 0x36

.field private static final HANDLE_BIND_CONFIG_SERVICE:I = 0xb

.field private static final HANDLE_CHANGE_STATE:I = 0x1

.field private static final HANDLE_CONFIUGRE_STATE_CHANGED:I = 0xd

.field private static final HANDLE_FINGER_GESTURE:I = 0x6f

.field private static final HANDLE_FINGER_GESTURE_DIRECTION:I = 0x71

.field private static final HANDLE_GET_DEVICE_IP:I = 0x2

.field private static final HANDLE_PROCESS_WFDSERVICE:I = 0x70

.field private static final HANDLE_RESET_WDS_USABLE_FLAG:I = 0x13

.field private static final HANDLE_STOP_DIS:I = 0x3

.field private static final HANDLE_STOP_TRANSMIT:I = 0x6

.field private static final HANDLE_TIMEOUT_STOP:I = 0x4

.field private static final HANDLE_TURN_OFF_CONCURRENT_HOTSPOT:I = 0x10

.field private static final HANDLE_UNBIND_CONFIG_SERVICE:I = 0xc

.field private static final HANDLE_WIFI_DIS:I = 0x5

.field private static final HANDLE_WIFI_FULL_SCAN:I = 0x11

.field private static final HANDLE_WIFI_SCAN_RESULT_AVAILABLE:I = 0x9

.field private static final HANDLE_WRITE_CONCURRENT_MAC_ADDRESS:I = 0xf

.field private static final INTENT_CONFIG_DONGLE:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

.field private static final INTENT_CONFIG_DONGLES_LIST:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

.field private static final INTENT_CONFIG_DONGLES_LIST_NORMAL:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

.field private static final INTENT_EXTRA_OUTPUTTV_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.extra.OUTPUTTV_RESULT"

.field private static final INTENT_NOTIFICATION_CONFIGURE_TOOL:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

.field private static final INTENT_NOTIFY_DLNA_MIRROR_OFF:Ljava/lang/String; = "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

.field private static final INTENT_NOTIFY_RECONNECT_DFS_WIFI:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

.field private static final INTENT_NOTIFY_UNCONFIG_DONGLE_FOUND:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_NOTIFY_UNCONFIG_DONGLE_FOUND"

.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LOCK_ONLY:I = 0x48

.field private static final LOCK_PAUSE:I = 0x2d

.field private static final MAX_DONGLE:I = 0x4

.field private static final MAX_DONGLE_WAIT:I = 0x15f90

.field private static final MEDIA_PAUSE_RESUME:I = 0x29

.field private static final MEDIA_START_STOP:I = 0x33

.field private static final MIRROR_OFF_TIMEOUT:I = 0x927c0

.field private static final NORMAL:I = 0x49

.field private static final OUTPUTTV_ACTIVITY_RESULT_NO:I = 0x0

.field private static final OUTPUTTV_ACTIVITY_RESULT_YES:I = 0x1

.field private static final PAUSE:I = 0x2b

.field private static final PEER_LIST:I = 0x18

.field private static final REQ_DISCOVERY:I = 0x20

.field private static final REQ_DIS_STATUS:I = 0x22

.field private static final REQ_HRT_BEAT_SELECT:I = 0x26

.field private static final REQ_JOIN_GROUP:I = 0x28

.field private static final REQ_PEER_SELECT:I = 0x25

.field private static final REQ_PLUGGED:I = 0x21

.field private static final REQ_PLU_STATUS:I = 0x23

.field private static final REQ_SET_INTERFACE:I = 0x27

.field private static final REQ_STOP_DIS:I = 0x24

.field private static final RESUME:I = 0x2a

.field private static final RES_DISCOVERY:I = 0x3f

.field private static final RES_HRTBEAT:I = 0x41

.field private static final RES_PEER_INFO:I = 0x42

.field private static final RES_PLUGGED:I = 0x3e

.field private static final RES_ROTATION:I = 0x40

.field private static final SCREEN_CALL:I = 0x4a

.field private static final SCREEN_OFF_TIMEOUT:I = 0x1d4c0

.field private static final SEND_WIVU_COMMAND:I = 0x1f

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field private static final START:I = 0x34

.field private static final STOP:I = 0x35

.field private static final SWUPGRADE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayService"

.field private static final TIMEOUT_OUT_OF_RANGE:I = 0x4e20

.field private static final WFDSERVICE_START_CONFIG_DONGLE:I = 0x1

.field private static final WFDSERVICE_START_MIRROR:I = 0x0

.field private static final WIVUSTART:I = 0x16

.field private static final WIVUSTOP:I = 0x17

.field private static final WIVU_REQUEST:I = 0x15

.field private static final WIVU_RESPONSE:I = 0x3d

.field private static cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mAudioPattern:Ljava/util/regex/Pattern;

.field private static final mBssidPattern:Ljava/util/regex/Pattern;

.field private static mHandler:Lcom/htc/server/WirelessDisplayService$H;

.field private static final mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIPv4Pattern:Ljava/util/regex/Pattern;

.field private static final mVideoPattern:Ljava/util/regex/Pattern;

.field private static mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

.field private static needToSwitch:Ljava/lang/Boolean;

.field private static pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final DELAY_RESTART_MR:I

.field private final DELAY_START_MR:I

.field private final FAILED:I

.field private final SUCCESS:I

.field private final VIDEOHEIGHT:I

.field private final VIDEOWIDTH:I

.field private volatile app_req_status:Ljava/lang/Boolean;

.field private callOnGoing:Z

.field private curDongle:Ljava/lang/String;

.field private dialogResult:I

.field private isResume:Z

.field private lastDongle:Ljava/lang/String;

.field private mAP_M_MacAddress:Ljava/lang/String;

.field private final mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAudioPort:Ljava/lang/String;

.field private mAutoConfigConnection:Landroid/content/ServiceConnection;

.field private mAutoConfigService:Landroid/os/IBinder;

.field private mBeatFailCount:I

.field private mBitrate:I

.field private final mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContext:Landroid/content/Context;

.field private mCurNetworkInterface:Ljava/lang/String;

.field private final mDongleInfoCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDongleIp:Ljava/lang/String;

.field private final mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFrameRate:I

.field private mGroupNumber:Ljava/lang/String;

.field private final mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

.field private volatile mInitComplete:Z

.field private mInterval:F

.field private mIpAndPort:Ljava/lang/String;

.field private mIsBoundToAutoConfigService:Z

.field private final mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNotifyUpgrade:Ljava/lang/Boolean;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private final mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

.field private mRecording:Z

.field private mSoftapInterface:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private mVideoPort:Ljava/lang/String;

.field private mWfdServiceRetryCount:I

.field private mWiFiInterface:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanCount:I

.field private mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

.field private screenOn:Z

.field private tempDongle:Ljava/lang/String;

.field private tempFingerIndicator:I

.field private wivuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    const-string v0, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    .line 274
    const-string v0, "AUDIO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    .line 275
    const-string v0, "VIDEO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    .line 276
    const-string v0, "((?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    .line 278
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 339
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 354
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 364
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 369
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 374
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 387
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 393
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 434
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 473
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 3839
    const-string v0, "wivu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3840
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 1695
    invoke-direct/range {p0 .. p0}, Lcom/htc/service/IWirelessDisplayService$Stub;-><init>()V

    .line 110
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 261
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->DELAY_START_MR:I

    .line 262
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->DELAY_RESTART_MR:I

    .line 263
    new-instance v14, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v14}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    .line 289
    const-string v14, "wlan0"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 307
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v15, 0x49

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 316
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v15, 0x49

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 331
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 332
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 350
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 379
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;

    .line 398
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mBeatFailCount:I

    .line 403
    const/16 v14, 0xa

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    .line 408
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    .line 423
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 425
    const-string v14, ""

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 467
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    .line 482
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->screenOn:Z

    .line 486
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    .line 491
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 1933
    new-instance v14, Lcom/htc/server/WirelessDisplayService$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/server/WirelessDisplayService$11;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    .line 2698
    const-string v14, "192.168.1.1:5634/5638"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 3646
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 3647
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 3648
    const v14, 0x2dc6c0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    .line 3649
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    .line 3650
    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    .line 3651
    new-instance v14, Lcom/htc/server/WirelessDisplayService$InfoListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/server/WirelessDisplayService$InfoListener;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    .line 3652
    new-instance v14, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    .line 3655
    const/16 v14, 0x3c0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->VIDEOWIDTH:I

    .line 3656
    const/16 v14, 0x220

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->VIDEOHEIGHT:I

    .line 3657
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->SUCCESS:I

    .line 3658
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->FAILED:I

    .line 1698
    new-instance v14, Lcom/htc/server/WirelessDisplayNotification;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/htc/server/WirelessDisplayNotification;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    .line 1701
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    .line 1702
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->init()V

    .line 1704
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1705
    new-instance v14, Ljava/util/Hashtable;

    const/16 v15, 0x1e

    invoke-direct {v14, v15}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    .line 1707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$1;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$2;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$3;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFY_CONCURRENT_MODE_ENABLED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$4;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFY_DONGLE_FIRMWARE_UPGRADE"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1776
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$5;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$6;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    const-string v17, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1805
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$7;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$8;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1841
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$9;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1860
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$10;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1883
    new-instance v5, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-direct {v5, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1884
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1885
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1887
    new-instance v11, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1888
    .local v11, mReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1894
    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v13, wifiFilter:Landroid/content/IntentFilter;
    const-string v14, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v13, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1897
    new-instance v12, Lcom/htc/server/WirelessDisplayService$WifiReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/htc/server/WirelessDisplayService$WifiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1898
    .local v12, mWifiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1902
    new-instance v2, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v2, callFilter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v2, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1905
    new-instance v7, Lcom/htc/server/WirelessDisplayService$CallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/server/WirelessDisplayService$CallReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 1906
    .local v7, mCallReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1910
    new-instance v6, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v6, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1912
    .local v6, hdmiFilter:Landroid/content/IntentFilter;
    new-instance v10, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 1913
    .local v10, mHdmiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1916
    new-instance v4, Landroid/content/IntentFilter;

    const-string v14, "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

    invoke-direct {v4, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v4, dialogFilter:Landroid/content/IntentFilter;
    new-instance v9, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1919
    .local v9, mDialogResultReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1921
    new-instance v3, Landroid/content/IntentFilter;

    const-string v14, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v3, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1923
    .local v3, connectivityFilter:Landroid/content/IntentFilter;
    new-instance v8, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1924
    .local v8, mConnectivityReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1927
    const-string v14, "wifi.softapconcurrent.interface"

    const-string v15, "wlan1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    .line 1928
    const-string v14, "wifi.interface"

    const-string v15, "wlan0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    .line 1929
    const-string v14, "/data/misc/wifidisplay.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 1930
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->clearDongleCache()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V

    return-void
.end method

.method static synthetic access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->binder_finishService()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/server/WirelessDisplayService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/htc/server/WirelessDisplayService$H;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return p1
.end method

.method static synthetic access$310(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$3100()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3802(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return p1
.end method

.method static synthetic access$4810(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/server/WirelessDisplayService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    return p1
.end method

.method static synthetic access$5400(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->screenOn:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->screenOn:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->setDialogResult(I)V

    return-void
.end method

.method static synthetic access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object v0
.end method

.method static synthetic access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object p0
.end method

.method static synthetic access$6100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->initInThread()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    return-object p1
.end method

.method private binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1965
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1967
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wifidisplay.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1968
    if-eqz p1, :cond_0

    .line 1969
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1975
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1983
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    return-void

    .line 1973
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1977
    :catch_0
    move-exception v2

    .line 1982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    throw v2

    .line 1979
    :catch_1
    move-exception v2

    .line 1982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method private binder_finishService()V
    .locals 5

    .prologue
    .line 1988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1989
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1991
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wifidisplay.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1992
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2000
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2002
    return-void

    .line 1999
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1999
    throw v2

    .line 1994
    :catch_0
    move-exception v2

    .line 1999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1996
    :catch_1
    move-exception v2

    .line 1999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private binder_setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 1946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1947
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1949
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wifidisplay.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1952
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1959
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    return-void

    .line 1958
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    throw v2

    .line 1953
    :catch_0
    move-exception v2

    .line 1958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1955
    :catch_1
    move-exception v2

    .line 1958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private clearDongleCache()V
    .locals 5

    .prologue
    .line 2333
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2334
    const-string v2, "WirelessDisplayService"

    const-string v3, "clearDongleCache: Wivulist is already empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_0
    return-void

    .line 2337
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2338
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2340
    .local v0, element:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2342
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDongleCache removing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    goto :goto_0
.end method

.method private constructDongleInfoFromWifi(Z)V
    .locals 33
    .parameter "isDongleScan"

    .prologue
    .line 2122
    const-string v28, "WirelessDisplayService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "constructDongleInfoFromWifi() dongleScan = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->getDongleScanList()Ljava/util/List;

    move-result-object v21

    .line 2127
    .local v21, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2129
    .local v8, dongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v21, :cond_e

    .line 2131
    const/4 v13, 0x0

    .local v13, ii:I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_0

    .line 2132
    const-string v29, "WirelessDisplayService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Wifi Scan Result:"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2137
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 2138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v18

    .line 2139
    .local v18, macs:Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2140
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2141
    .local v17, mac:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 2142
    const-string v28, "WirelessDisplayService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "constructDongleInfoFromWifi: remove:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2146
    .end local v17           #mac:Ljava/lang/String;
    .end local v18           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .restart local v18       #macs:Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2148
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/ScanResult;

    .line 2149
    .local v20, result:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "[DONGLE-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 2153
    const/4 v6, 0x0

    .line 2155
    .local v6, dongle:Lcom/htc/service/DongleInfo;
    const/16 v16, 0x0

    .line 2156
    .local v16, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2157
    .local v2, aph:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2158
    .local v3, apm:Ljava/lang/String;
    const/16 v23, 0x0

    .line 2159
    .local v23, staBssid:Ljava/lang/String;
    const/16 v27, 0x0

    .line 2162
    .local v27, version:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2163
    .local v22, ssid:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2164
    .local v4, bssid:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2165
    .local v12, ieInfo:Ljava/lang/String;
    const-string v24, ""

    .line 2170
    .local v24, state:Ljava/lang/String;
    :try_start_2
    const-string v28, "[DONGLE-"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 2171
    .local v26, subStr:Ljava/lang/String;
    const-string v28, "[DONGLE-"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 2173
    const-string v28, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2174
    .local v15, items:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v28, v0

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 2176
    const/16 v28, 0x1

    aget-object v27, v15, v28

    .line 2177
    const/16 v28, 0x2

    aget-object v24, v15, v28

    .line 2178
    const/16 v28, 0x3

    aget-object v2, v15, v28

    .line 2179
    const/16 v28, 0x4

    aget-object v3, v15, v28

    .line 2181
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/16 v29, 0x5

    aget-object v29, v15, v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 2182
    .local v19, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 2183
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 2184
    :cond_4
    const-string v28, "WirelessDisplayService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "staBssid:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    .end local v15           #items:[Ljava/lang/String;
    .end local v19           #matcher:Ljava/util/regex/Matcher;
    :cond_5
    :goto_3
    move-object/from16 v16, v23

    .line 2196
    const-string v28, "WPS"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 2197
    const/16 v25, 0x1

    .line 2213
    .local v25, status:I
    :goto_4
    if-eqz v16, :cond_11

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v6

    .line 2216
    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .local v7, dongle:Lcom/htc/service/DongleInfo;
    :goto_5
    if-nez v7, :cond_10

    .line 2217
    :try_start_3
    new-instance v6, Lcom/htc/service/DongleInfo;

    invoke-direct {v6}, Lcom/htc/service/DongleInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2218
    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v6       #dongle:Lcom/htc/service/DongleInfo;
    const/16 v28, 0x0

    :try_start_4
    move/from16 v0, v28

    iput-boolean v0, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 2219
    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v6, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 2220
    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 2221
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 2224
    :goto_6
    iput-object v4, v6, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 2225
    move-object/from16 v0, v22

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 2226
    move-object/from16 v0, v22

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 2227
    move/from16 v0, v25

    iput v0, v6, Lcom/htc/service/DongleInfo;->status:I

    .line 2228
    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    .line 2229
    iput-object v2, v6, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .line 2230
    iput-object v3, v6, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 2233
    const-string v28, "[DLNA-"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2234
    .local v5, dlnaIndex:I
    if-lez v5, :cond_6

    .line 2236
    add-int/lit8 v28, v5, 0x6

    add-int/lit8 v29, v5, 0xe

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2237
    .local v10, hexStr:Ljava/lang/String;
    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-static {v10, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/htc/service/DongleInfo;->capabilities:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2242
    .end local v5           #dlnaIndex:I
    .end local v10           #hexStr:Ljava/lang/String;
    .end local v25           #status:I
    .end local v26           #subStr:Ljava/lang/String;
    :cond_6
    :goto_7
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    const-string v28, "WirelessDisplayService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Adding dongle info: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v6}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_7
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2186
    .restart local v15       #items:[Ljava/lang/String;
    .restart local v26       #subStr:Ljava/lang/String;
    :cond_8
    :try_start_5
    array-length v0, v15

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 2187
    const/16 v28, 0x1

    aget-object v27, v15, v28

    .line 2188
    move-object/from16 v24, v26

    goto/16 :goto_3

    .line 2191
    .end local v15           #items:[Ljava/lang/String;
    :cond_9
    move-object/from16 v24, v22

    goto/16 :goto_3

    .line 2198
    :cond_a
    const-string v28, "UNCFG"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 2200
    const/16 v25, 0x4

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2201
    .end local v25           #status:I
    :cond_b
    const-string v28, "CFG"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v28

    if-eqz v28, :cond_c

    .line 2203
    const/16 v25, 0x3

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2205
    .end local v25           #status:I
    :cond_c
    const/16 v25, 0x2

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2210
    .end local v25           #status:I
    :cond_d
    const/16 v25, 0x0

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2239
    .end local v25           #status:I
    .end local v26           #subStr:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2240
    .local v9, e:Ljava/lang/Exception;
    :goto_8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 2250
    .end local v2           #aph:Ljava/lang/String;
    .end local v3           #apm:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ieInfo:Ljava/lang/String;
    .end local v13           #ii:I
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #macs:Ljava/util/Enumeration;
    .end local v20           #result:Landroid/net/wifi/ScanResult;
    .end local v22           #ssid:Ljava/lang/String;
    .end local v23           #staBssid:Ljava/lang/String;
    .end local v24           #state:Ljava/lang/String;
    .end local v27           #version:Ljava/lang/String;
    :cond_e
    new-instance v14, Landroid/content/Intent;

    const-string v28, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v14, intent:Landroid/content/Intent;
    const/high16 v28, 0x1000

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2252
    const-string v28, "WirelessDisplayService"

    const-string v29, "Sending intent: MIRROR_DISPLAY_DONGLE_AVAILABLE_ACTION"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2255
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 2256
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v29, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v30, 0x6f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v29 .. v32}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2259
    :cond_f
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2261
    return-void

    .line 2239
    .end local v14           #intent:Landroid/content/Intent;
    .restart local v2       #aph:Ljava/lang/String;
    .restart local v3       #apm:Ljava/lang/String;
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #ieInfo:Ljava/lang/String;
    .restart local v13       #ii:I
    .restart local v16       #key:Ljava/lang/String;
    .restart local v18       #macs:Ljava/util/Enumeration;
    .restart local v20       #result:Landroid/net/wifi/ScanResult;
    .restart local v22       #ssid:Ljava/lang/String;
    .restart local v23       #staBssid:Ljava/lang/String;
    .restart local v24       #state:Ljava/lang/String;
    .restart local v25       #status:I
    .restart local v26       #subStr:Ljava/lang/String;
    .restart local v27       #version:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v6       #dongle:Lcom/htc/service/DongleInfo;
    goto :goto_8

    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    :cond_10
    move-object v6, v7

    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v6       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_6

    :cond_11
    move-object v7, v6

    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_5
.end method

.method private fallBackFromAppPause()V
    .locals 6

    .prologue
    const/16 v5, 0x29

    .line 2829
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2830
    .local v0, curState:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fallBackFromAppPause: curState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wivu pre_request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 2836
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v3, 0x2a

    const/16 v4, 0x2c

    invoke-virtual {v2, v5, v3, v4}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2837
    .local v1, msgResumeMirror:Landroid/os/Message;
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v2, v5}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2838
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2841
    .end local v1           #msgResumeMirror:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getDialogResult()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3374
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDialogResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-ne v1, v0, :cond_0

    .line 3378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEnvironmentDongleState()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2013
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 2014
    .local v0, size:I
    if-nez v0, :cond_1

    .line 2015
    const/4 v1, 0x0

    .line 2023
    :cond_0
    :goto_0
    return v1

    .line 2016
    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2018
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 2019
    const/4 v1, 0x2

    goto :goto_0

    .line 2020
    :cond_2
    if-le v0, v1, :cond_3

    .line 2021
    const/4 v1, 0x3

    goto :goto_0

    .line 2023
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private gotoPauseState()V
    .locals 3

    .prologue
    .line 3793
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 3794
    const-string v1, "WirelessDisplayService"

    const-string v2, "gotoPauseState() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->setRTPPause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3802
    :cond_0
    :goto_0
    const-string v1, "WirelessDisplayService"

    const-string v2, "gotoPauseState() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    return-void

    .line 3797
    :catch_0
    move-exception v0

    .line 3798
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.pause(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 2092
    new-instance v0, Lcom/htc/server/WirelessDisplayService$12;

    const-string v1, "WirelessDisplayService"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/WirelessDisplayService$12;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    .line 2099
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2101
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 2102
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2104
    :try_start_1
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2109
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 2110
    return-void

    .line 2109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initInThread()V
    .locals 2

    .prologue
    .line 2113
    new-instance v0, Lcom/htc/server/WirelessDisplayService$H;

    invoke-direct {v0, p0}, Lcom/htc/server/WirelessDisplayService$H;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    .line 2115
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 2116
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 2117
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2118
    monitor-exit v1

    .line 2119
    return-void

    .line 2118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private mirrorOnOffDirection(II)I
    .locals 4
    .parameter "absoluteDirection"
    .parameter "relativeDirection"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2032
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move p2, p1

    .line 2042
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 2034
    .restart local p2
    :cond_2
    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    .line 2036
    if-ne p1, v2, :cond_3

    if-ne p2, v2, :cond_3

    move p2, v0

    .line 2037
    goto :goto_0

    .line 2038
    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_4

    move p2, v1

    .line 2039
    goto :goto_0

    .line 2041
    :cond_4
    const-string v0, "WirelessDisplayService"

    const-string v2, "should not be here,intent value Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 2042
    goto :goto_0
.end method

.method private notifyWHDMI()V
    .locals 3

    .prologue
    .line 2487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2488
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2489
    const-string v1, "WirelessDisplayService"

    const-string v2, "Sending intent: MIRROR_DONGLE_LIST_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2491
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 2492
    return-void
.end method

.method private static onCallbackEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2692
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallbackEvent()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v0, :cond_0

    .line 2694
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v0, p0}, Lcom/htc/server/WirelessDisplayService$WivuThread;->transactEvent(Ljava/lang/String;)V

    .line 2696
    :cond_0
    return-void
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 2529
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readConfigFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2531
    .local v6, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 2532
    .local v1, in:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 2533
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2536
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2537
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 2538
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2539
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2540
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2541
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading config is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    goto :goto_0

    .line 2543
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 2544
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2548
    if-eqz v1, :cond_0

    .line 2550
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2555
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 2557
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2563
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2548
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v2, :cond_3

    .line 2550
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2555
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 2557
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_4
    :goto_5
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 2562
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2545
    :catch_1
    move-exception v0

    .line 2546
    .local v0, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2548
    if-eqz v1, :cond_5

    .line 2550
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2555
    :cond_5
    :goto_7
    if-eqz v4, :cond_1

    .line 2557
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 2558
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 2548
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v1, :cond_6

    .line 2550
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 2555
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 2557
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 2548
    :cond_7
    :goto_a
    throw v7

    .line 2551
    :catch_3
    move-exception v8

    goto :goto_9

    .line 2558
    :catch_4
    move-exception v8

    goto :goto_a

    .line 2551
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_2

    .local v0, e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    goto :goto_7

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    goto :goto_4

    .line 2558
    :catch_8
    move-exception v7

    goto :goto_5

    .line 2548
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .line 2545
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .line 2543
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3771
    const-string v1, "WirelessDisplayService"

    const-string v2, "releaseMediaRecorder() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 3773
    const-string v1, "WirelessDisplayService"

    const-string v2, "releaseMediaRecorder! Recorder != null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3775
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3777
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3786
    :goto_1
    iput-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 3788
    :cond_0
    return-void

    .line 3778
    :catch_0
    move-exception v0

    .line 3779
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3783
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 3784
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setDialogResult(I)V
    .locals 3
    .parameter "userChoose"

    .prologue
    .line 3382
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogResult, userChoose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 3384
    return-void
.end method

.method private setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ip"
    .parameter "audio"
    .parameter "video"

    .prologue
    .line 2702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 2703
    return-void
.end method

.method private setMirrorModeState(II)V
    .locals 12
    .parameter "mirrorState"
    .parameter "err"

    .prologue
    const/16 v11, 0x26

    const/4 v10, 0x3

    const/16 v7, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2264
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2265
    .local v2, previousState:I
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMirrorModeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isWifiDFS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    if-ne v2, p1, :cond_0

    .line 2327
    :goto_0
    return-void

    .line 2268
    :cond_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2271
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2273
    const-string v4, "mirror_display_state"

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2274
    const-string v4, "mirror_display_status"

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2275
    const-string v4, "mirror_error_message"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    if-eq p1, v9, :cond_1

    if-ne p1, v10, :cond_3

    .line 2279
    :cond_1
    if-ne p1, v9, :cond_6

    .line 2280
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2281
    iput-boolean v8, p0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 2283
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v11, :cond_2

    .line 2284
    const-string v4, "WirelessDisplayService"

    const-string v5, "NV workaround: Resume NV Eack when leaving Wireless Display"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 2288
    :cond_2
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2289
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v4, v7, v8, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2290
    .local v1, msg:Landroid/os/Message;
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v4, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2312
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 2318
    :cond_3
    if-eq p1, v10, :cond_4

    const/4 v4, 0x7

    if-eq p1, v4, :cond_4

    const/16 v4, 0x8

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 2319
    :cond_4
    const-string v4, "WirelessDisplayService"

    const-string v5, "Disable wifi background/roming scanning during Mirror Mode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    .line 2326
    :goto_2
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2293
    :cond_5
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v5, v7, v8, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2296
    :cond_6
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2297
    iput-boolean v9, p0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 2298
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v4, v7}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2300
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v11, :cond_7

    .line 2301
    const-string v4, "WirelessDisplayService"

    const-string v5, "NV workaround: Disable NV Eack during Wireless Display"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 2305
    :cond_7
    const-string v4, "WirelessDisplayService"

    const-string v5, "Pre Load DLNA Services for Mirror Mode Enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2308
    :catch_0
    move-exception v3

    .line 2309
    .local v3, se:Ljava/lang/SecurityException;
    const-string v4, "WirelessDisplayService"

    const-string v5, "Pre Load DLNA Services occur SecurityException "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2322
    .end local v3           #se:Ljava/lang/SecurityException;
    :cond_8
    const-string v4, "WirelessDisplayService"

    const-string v5, "Resume wifi background/roming scanning during Mirror Mode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    goto :goto_2
.end method

.method private startDisplayRecorder(Ljava/lang/String;)I
    .locals 18
    .parameter "ipAndPort"

    .prologue
    .line 3660
    const-string v14, "WirelessDisplayService"

    const-string v15, "startDisplayRecorder - start"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v14, :cond_1

    .line 3663
    new-instance v14, Landroid/media/MediaRecorder;

    invoke-direct {v14}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 3664
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 3672
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 3674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3675
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IP/Port is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3677
    .local v11, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v11}, Landroid/media/MediaRecorder;->setRTPParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3697
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const v15, 0xfa00

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0x1f40

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3699
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3702
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoIFrameInterval(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3708
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3710
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 3711
    .local v4, display:Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 3712
    .local v9, outSize:Landroid/graphics/Point;
    invoke-virtual {v4, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3713
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RealScreenSize: width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    const/16 v13, 0x3c0

    .line 3716
    .local v13, vdoWidth:I
    const/16 v12, 0x220

    .line 3717
    .local v12, vdoHeight:I
    const v14, 0x7f800

    int-to-long v1, v14

    .line 3718
    .local v1, defaultRes:J
    iget v14, v9, Landroid/graphics/Point;->x:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v14, v15

    int-to-long v5, v14

    .line 3721
    .local v5, displayRes:J
    const-string v14, "ro.board.platform"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3722
    .local v3, device:Ljava/lang/String;
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Platform is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    const-wide/16 v14, 0x3

    mul-long/2addr v14, v1

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    cmp-long v14, v14, v5

    if-gez v14, :cond_0

    .line 3724
    const/16 v13, 0x500

    .line 3725
    const-string v14, "tegra"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3726
    const/16 v12, 0x2d0

    .line 3731
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v13, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3735
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->prepare(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3747
    :try_start_3
    sget-object v14, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    if-nez v14, :cond_3

    .line 3748
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Need Delay Mirror Media, DLNA: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , isResume"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3758
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14}, Landroid/media/MediaRecorder;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3766
    const-string v14, "WirelessDisplayService"

    const-string v15, "startDisplayRecorder - end"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    const/4 v14, 0x0

    .end local v1           #defaultRes:J
    .end local v3           #device:Ljava/lang/String;
    .end local v4           #display:Landroid/view/Display;
    .end local v5           #displayRes:J
    .end local v9           #outSize:Landroid/graphics/Point;
    .end local v11           #tmp:Ljava/lang/String;
    .end local v12           #vdoHeight:I
    .end local v13           #vdoWidth:I
    :goto_3
    return v14

    .line 3666
    :cond_1
    const-string v14, "WirelessDisplayService"

    const-string v15, "Media Recorder already running"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    const/4 v14, 0x0

    goto :goto_3

    .line 3679
    :catch_0
    move-exception v8

    .line 3680
    .local v8, exception:Ljava/lang/Exception;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.setParameters() failed"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3681
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3682
    const/4 v14, -0x1

    goto :goto_3

    .line 3704
    .end local v8           #exception:Ljava/lang/Exception;
    .restart local v11       #tmp:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3705
    .restart local v8       #exception:Ljava/lang/Exception;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 3706
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.setParameters() failed"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3727
    .end local v8           #exception:Ljava/lang/Exception;
    .restart local v1       #defaultRes:J
    .restart local v3       #device:Ljava/lang/String;
    .restart local v4       #display:Landroid/view/Display;
    .restart local v5       #displayRes:J
    .restart local v9       #outSize:Landroid/graphics/Point;
    .restart local v12       #vdoHeight:I
    .restart local v13       #vdoWidth:I
    :cond_2
    const-string v14, "msm8960"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3728
    const/16 v12, 0x2e0

    goto/16 :goto_1

    .line 3736
    :catch_2
    move-exception v7

    .line 3737
    .local v7, ex:Ljava/lang/Exception;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.prepare() failed"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3738
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3739
    const/4 v14, -0x1

    goto :goto_3

    .line 3751
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 3753
    :catch_3
    move-exception v10

    .line 3754
    .local v10, rex:Ljava/lang/RuntimeException;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3761
    .end local v10           #rex:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v7

    .line 3762
    .restart local v7       #ex:Ljava/lang/Exception;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.prepare() setOnInfoListener/start"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3763
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3764
    const/4 v14, -0x1

    goto :goto_3
.end method

.method private stopDisplayRecorder()I
    .locals 2

    .prologue
    .line 3833
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3834
    const-string v0, "WirelessDisplayService"

    const-string v1, "stopDisplayRecorder end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    const/4 v0, 0x0

    return v0
.end method

.method private updateFWUpgradeNotification()V
    .locals 4

    .prologue
    .line 2647
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 2648
    .local v0, dongleInfo:Lcom/htc/service/DongleInfo;
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2649
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2650
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dongle FW Upgrade, IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/WirelessDisplayNotification;->notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :cond_0
    return-void
.end method

.method private updateNotification()V
    .locals 5

    .prologue
    .line 2658
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 2669
    .local v2, mirrorOn:Z
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 2670
    .local v0, dongleCount:I
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 2672
    .local v3, wifiOn:Z
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .line 2683
    .local v1, mDongleInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/htc/server/WirelessDisplayNotification;->updateNotification(ZIZLjava/util/List;)V

    .line 2686
    return-void
.end method

.method private updateWivuList([Ljava/lang/String;)V
    .locals 13
    .parameter "macs"

    .prologue
    .line 2356
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2357
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:ther is no dongle in list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2360
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2361
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2362
    .local v1, element:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2364
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    .line 2368
    :cond_1
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2369
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    .line 2371
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 2373
    .local v7, m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2378
    .end local v7           #m2:Landroid/os/Message;
    :cond_2
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 2379
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto :goto_0

    .line 2383
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2384
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 2442
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    return-void

    .line 2386
    :cond_5
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2387
    .local v0, addrs:[Ljava/lang/String;
    array-length v6, v0

    .line 2388
    .local v6, length:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList:Total Dongles in Network:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v6, v9, :cond_9

    .line 2392
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Add New Dongle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v6, :cond_6

    .line 2394
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2395
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get dongle info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDongleInfo(Ljava/lang/String;)I

    .line 2431
    .end local v5           #j:I
    :cond_6
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2432
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v9, v0

    if-ge v3, v9, :cond_4

    .line 2433
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAC Addr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2436
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2437
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList: Add dongle to WIvu list:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v3

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2393
    .end local v3           #i:I
    .end local v8           #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #j:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2401
    .end local v5           #j:I
    :cond_9
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    .line 2402
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Remove dongle from List"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_3
    if-ge v5, v6, :cond_a

    .line 2405
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2404
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2407
    :cond_a
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2408
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2409
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2410
    .local v2, element2:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2412
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList:removing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    .line 2418
    :cond_c
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2419
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    .line 2421
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 2422
    .restart local v7       #m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2423
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList2: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    .end local v7           #m2:Landroid/os/Message;
    :cond_d
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 2426
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto :goto_4
.end method

.method private updteDongleInfo(Ljava/lang/String;)V
    .locals 9
    .parameter "stat"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2450
    if-nez p1, :cond_1

    .line 2484
    :cond_0
    :goto_0
    return-void

    .line 2452
    :cond_1
    const-string v4, "WirelessDisplayService"

    const-string v5, "updteDongleInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const-string v4, "VALUE="

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2456
    .local v3, sep:[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v7, :cond_0

    .line 2457
    aget-object v4, v3, v7

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2458
    .local v2, infos:[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 2459
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2460
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updteDongleInfo: Modifying WIFI scan list ip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 2462
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    iput-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 2463
    aget-object v4, v2, v7

    iput-object v4, v0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 2481
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :goto_1
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    goto :goto_0

    .line 2466
    :cond_2
    const-string v4, "WirelessDisplayService"

    const-string v5, "updteDongleInfo: New dongle is added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    new-instance v1, Lcom/htc/service/DongleInfo;

    invoke-direct {v1}, Lcom/htc/service/DongleInfo;-><init>()V

    .line 2468
    .local v1, dongle2:Lcom/htc/service/DongleInfo;
    aget-object v4, v2, v7

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 2469
    const-string v4, "UNKNOWN"

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 2470
    const-string v4, "UNKNOWN"

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 2471
    array-length v4, v2

    if-le v4, v6, :cond_3

    .line 2472
    aget-object v4, v2, v6

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 2473
    aget-object v4, v2, v6

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 2475
    :cond_3
    iput v6, v1, Lcom/htc/service/DongleInfo;->status:I

    .line 2476
    aget-object v4, v2, v8

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 2477
    iput-boolean v7, v1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 2478
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static native wivuIpcExit()I
.end method

.method static native wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native wivuNVEackState(I)I
.end method

.method static native wivuSQoSStart()Z
.end method

.method static native wivuSQoSStop()Z
.end method

.method private writeConcurrentAPMacAddress()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 2495
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2496
    .local v2, mConcurrent_AP_MAC_FilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2497
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b6

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2498
    const/4 v5, 0x0

    .line 2499
    .local v5, writer:Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 2501
    .local v4, ret:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2502
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2503
    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2504
    .end local v5           #writer:Ljava/io/FileWriter;
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 2505
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration file doesn\'t exist, create a new one, mAP_M_MACAdderss: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 2507
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2509
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 2516
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :goto_0
    const/4 v4, 0x1

    .line 2517
    :try_start_2
    const-string v7, "WirelessDisplayService"

    const-string v8, "writeConcurrentAPMacAddress() done."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :goto_1
    return v4

    .line 2513
    :cond_1
    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {p0, v7}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2514
    .local v3, previousResult:Ljava/lang/String;
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeConcurrentAPMacAddress already existed, MAC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2518
    .end local v3           #previousResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2519
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v4, 0x0

    .line 2524
    goto :goto_1

    .line 2521
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2522
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v4, 0x0

    goto :goto_1

    .line 2521
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 2518
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public getConnectedDongleIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2918
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2921
    :goto_0
    return-object v0

    .line 2920
    :cond_0
    sget-object v1, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v1

    .line 2921
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 2922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedDongleIPLong()J
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2930
    const-string v9, "WirelessDisplayService"

    const-string v10, "getConnectedDongleIPLong"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-wide/16 v2, 0x0

    .line 2933
    .local v2, num:J
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v9, :cond_0

    move-wide v4, v2

    .line 2961
    .end local v2           #num:J
    .local v4, num:J
    :goto_0
    return-wide v4

    .line 2935
    .end local v4           #num:J
    .restart local v2       #num:J
    :cond_0
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v10

    .line 2937
    :try_start_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 2938
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2939
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v6, 0x20

    .line 2941
    .local v6, offset:I
    array-length v9, v0

    add-int/lit8 v1, v9, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 2945
    add-int/lit8 v6, v6, -0x8

    .line 2947
    aget-object v9, v0, v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2951
    .local v7, token:J
    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-ltz v9, :cond_1

    const-wide/16 v11, 0x100

    cmp-long v9, v7, v11

    if-ltz v9, :cond_4

    .line 2952
    :cond_1
    const-wide/16 v2, -0x1

    .line 2957
    .end local v7           #token:J
    :cond_2
    const-string v9, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "long value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    :cond_3
    monitor-exit v10

    move-wide v4, v2

    .line 2961
    .end local v2           #num:J
    .restart local v4       #num:J
    goto :goto_0

    .line 2955
    .end local v4           #num:J
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #num:J
    .restart local v6       #offset:I
    .restart local v7       #token:J
    :cond_4
    shl-long v11, v7, v6

    add-long/2addr v2, v11

    .line 2941
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2959
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    .end local v7           #token:J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getDLNAPreloadEnable()Z
    .locals 3

    .prologue
    .line 3400
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDLNAPreloadEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDefaultDongle()Lcom/htc/service/DongleInfo;
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 3202
    const/4 v1, 0x0

    .line 3204
    .local v1, dong:Lcom/htc/service/DongleInfo;
    :try_start_0
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3205
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle , curDongle Bssid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    move-object v6, v1

    .line 3251
    :goto_0
    return-object v6

    .line 3209
    :cond_0
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3210
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/DongleInfo;

    .line 3211
    .local v6, tempLastDongle:Lcom/htc/service/DongleInfo;
    if-eqz v6, :cond_2

    .line 3212
    iget v7, v6, Lcom/htc/service/DongleInfo;->status:I

    if-eq v7, v9, :cond_1

    iget-boolean v7, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 3213
    :cond_1
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle , lastDongle Bssid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3247
    .end local v6           #tempLastDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v4

    .line 3248
    .local v4, npe:Ljava/lang/NullPointerException;
    const-string v7, "WirelessDisplayService"

    const-string v8, "NullPointerException, getDefaultDongle : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    const/4 v6, 0x0

    goto :goto_0

    .line 3219
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3220
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 3221
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3222
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3223
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 3224
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle form wivu , Bssid :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/service/DongleInfo;->getBssid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 3245
    const-string v7, "WirelessDisplayService"

    const-string v8, "getDefaultDongle : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v6, v1

    .line 3251
    goto/16 :goto_0

    .line 3220
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3231
    .end local v3           #i:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 3232
    .local v2, dongleList:Ljava/util/List;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 3233
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3234
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DongleInfo;

    .line 3235
    .local v5, pair_dongle:Lcom/htc/service/DongleInfo;
    iget v7, v5, Lcom/htc/service/DongleInfo;->status:I

    if-ne v7, v9, :cond_7

    .line 3236
    move-object v1, v5

    .line 3237
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle form paired , Bssid :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/service/DongleInfo;->getBssid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3232
    .end local v5           #pair_dongle:Lcom/htc/service/DongleInfo;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public getDiscoveryDongleList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3021
    const-string v4, "WirelessDisplayService"

    const-string v5, "getDiscoveryDongleList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3023
    .local v3, sendToAPP:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 3024
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 3025
    .local v2, macs:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3026
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3027
    .local v1, mac:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 3028
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 3029
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3033
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v1           #mac:Ljava/lang/String;
    .end local v2           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #macs:Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3034
    return-object v3
.end method

.method public getFingerGestureEnable()Z
    .locals 3

    .prologue
    .line 3388
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerGestureEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorDisplayStatus()Z
    .locals 5

    .prologue
    .line 2903
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2904
    .local v0, curstate:I
    const/4 v1, 0x0

    .line 2905
    .local v1, ret:Z
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMirrorDisplayStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "curState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2907
    :cond_0
    const/4 v1, 0x0

    .line 2914
    :goto_0
    return v1

    .line 2909
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2910
    const/4 v1, 0x1

    goto :goto_0

    .line 2912
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorModeState()I
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getunConfigDongleList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3041
    const-string v3, "WirelessDisplayService"

    const-string v4, "getunConfigDongleList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3043
    .local v2, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    .line 3044
    .local v1, info:Lcom/htc/service/DongleInfo;
    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3045
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3048
    .end local v1           #info:Lcom/htc/service/DongleInfo;
    :cond_2
    return-object v2
.end method

.method public mirrorModeStartStop(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 2976
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 2977
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 2978
    .local v3, pid:I
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2979
    const-string v6, "WirelessDisplayService"

    const-string v7, "MHL/HDMI is Plugged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    .line 2981
    const/4 v6, 0x0

    .line 3012
    :cond_0
    :goto_0
    return v6

    .line 2983
    :cond_1
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mirrorModeStartStop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,Uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 2986
    :cond_3
    const-string v7, "WirelessDisplayService"

    const-string v8, "Already in the target state"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2990
    :cond_4
    const/4 v4, -0x1

    .line 2991
    .local v4, ret:I
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v7, :cond_6

    .line 2993
    const/4 v0, -0x1

    .line 2995
    .local v0, arg:I
    if-eqz p1, :cond_5

    .line 2996
    const/4 v0, 0x1

    .line 2997
    :cond_5
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0x1f

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2998
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2999
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3001
    .end local v0           #arg:I
    .end local v1           #m:Landroid/os/Message;
    :cond_6
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3002
    if-nez p1, :cond_7

    .line 3003
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3006
    :cond_7
    if-nez p1, :cond_0

    .line 3007
    const-string v7, "WirelessDisplayService"

    const-string v8, "Notify DLNA Service mirror mode off"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3009
    .local v2, notifyDLNA:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public mirrorNow()V
    .locals 7

    .prologue
    .line 3413
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3414
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3415
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mirrorNow uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x6f

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3417
    return-void
.end method

.method public msgHDMIToast()V
    .locals 2

    .prologue
    .line 3185
    const-string v0, "WirelessDisplayService"

    const-string v1, "msgHDMIToast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    return-void
.end method

.method public notifyUserUnConfigDoneleResult(Z)V
    .locals 14
    .parameter "result"

    .prologue
    .line 2051
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v7

    .line 2052
    .local v7, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v6

    .line 2053
    .local v6, pid:I
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v9

    .line 2055
    .local v9, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const-string v10, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyUserUnConfigDoneleResult, result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Pid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", unConfigDongleCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    if-eqz p1, :cond_2

    .line 2057
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2058
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_0

    .line 2059
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2060
    .local v4, notifyConfigToolToConfig:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/DongleInfo;

    .line 2061
    .local v8, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2062
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "DONGLE_MAC"

    iget-object v11, v8, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2064
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2066
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_0
    :goto_0
    return-void

    .line 2067
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #notifyConfigToolToConfig:Landroid/content/Intent;
    .restart local v8       #unConfigDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v0

    .line 2068
    .local v0, ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2072
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v5, notifyConfigerTool:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2075
    :try_start_1
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2076
    :catch_1
    move-exception v0

    .line 2077
    .restart local v0       #ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigerTool"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2082
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v5           #notifyConfigerTool:Landroid/content/Intent;
    :cond_2
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0xb

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2083
    .local v2, msgBindWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2084
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0x70

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2085
    .local v3, msgUseWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v3, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public playOnTV(Z)I
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2844
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 2845
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 2846
    .local v2, pid:I
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playOnTV(), value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,Uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const/4 v4, -0x1

    .line 2849
    .local v4, ret:I
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2852
    .local v3, previousState:I
    if-ne v3, v9, :cond_1

    .line 2853
    const/4 v4, -0x1

    .line 2893
    :cond_0
    :goto_0
    return v4

    .line 2854
    :cond_1
    if-eqz p1, :cond_5

    .line 2855
    if-ne v3, v11, :cond_4

    .line 2857
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_3

    .line 2858
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2860
    .local v1, msg2:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2868
    .end local v1           #msg2:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2865
    :cond_3
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    .line 2866
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 2869
    :cond_4
    if-ne v3, v10, :cond_0

    .line 2870
    const/4 v4, 0x0

    goto :goto_0

    .line 2873
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 2882
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v11, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2883
    .local v0, msg:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v0}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2885
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    if-ne v3, v10, :cond_7

    .line 2887
    const/4 v4, 0x0

    goto :goto_0

    .line 2888
    :cond_7
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 2890
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public popDialog()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 3334
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 3335
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 3336
    .local v2, pid:I
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "popDialog , getDefaultOption"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPopDialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,Uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 3369
    :goto_0
    return v5

    .line 3346
    :cond_0
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3347
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 3350
    :cond_1
    iput v9, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 3352
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3353
    .local v3, popDialogIntent:Landroid/content/Intent;
    const-string v6, "WirelessDisplayService"

    const-string v7, "Sending intent: INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3356
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x33

    if-ge v1, v6, :cond_2

    .line 3357
    iget v6, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-eq v6, v9, :cond_3

    .line 3358
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user click, dialogResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_2
    :goto_2
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3369
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 3362
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3356
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3363
    :catch_0
    move-exception v0

    .line 3364
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WirelessDisplayService"

    const-string v7, "sleep() error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "nwif"
    .parameter "group"
    .parameter "auto"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3054
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 3055
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 3056
    .local v3, pid:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestWivuDiscovery() interface = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", group = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,Uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const/4 v0, -0x1

    .line 3058
    .local v0, arg2:I
    if-eqz p3, :cond_0

    .line 3059
    const-string v5, "WirelessDisplayService"

    const-string v6, "auto is TRUE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const/4 v0, 0x1

    .line 3061
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3065
    :cond_0
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v5, :cond_2

    .line 3066
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3067
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 3068
    const-string v5, "WirelessDisplayService"

    const-string v6, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3072
    :cond_1
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3073
    .local v1, msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v1, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3097
    .end local v1           #msg1:Landroid/os/Message;
    :goto_0
    return-void

    .line 3076
    :cond_2
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getWivuInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3077
    const-string v5, "WirelessDisplayService"

    const-string v6, "Re-create wivu thread due to different network interface detected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3080
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 3081
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3082
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3083
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 3084
    const-string v5, "WirelessDisplayService"

    const-string v6, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3088
    :cond_3
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3089
    .local v2, msg2:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3093
    .end local v2           #msg2:Landroid/os/Message;
    :cond_4
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3094
    .restart local v1       #msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v5, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public selectDongle(Ljava/lang/String;)V
    .locals 17
    .parameter "Bssid"

    .prologue
    .line 3102
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v12

    .line 3103
    .local v12, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v9

    .line 3104
    .local v9, pid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 3106
    .local v4, curState:I
    const-string v13, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "selectDongle:Bssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Pid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,Uid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    if-nez p1, :cond_0

    .line 3179
    :goto_0
    return-void

    .line 3109
    :cond_0
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3110
    const-string v13, "WirelessDisplayService"

    const-string v14, "MHL/HDMI is Plugged"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    goto :goto_0

    .line 3115
    :cond_1
    move-object/from16 v2, p1

    .line 3116
    .local v2, bssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 3118
    .local v3, curDong:Lcom/htc/service/DongleInfo;
    if-nez v3, :cond_4

    .line 3119
    const-string v13, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curDong is nULL why? :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v13, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DongleInfo;

    .line 3121
    .local v5, don2:Lcom/htc/service/DongleInfo;
    if-nez v5, :cond_2

    .line 3122
    const-string v13, "WirelessDisplayService"

    const-string v14, "don2 is nULL why?"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    .end local v5           #don2:Lcom/htc/service/DongleInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x3

    if-eq v4, v13, :cond_3

    const/4 v13, 0x2

    if-eq v4, v13, :cond_3

    const/4 v13, 0x6

    if-ne v4, v13, :cond_6

    .line 3143
    :cond_3
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Switching Dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    invoke-virtual {v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3145
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x21

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 3146
    .local v10, plug:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 3147
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    sput-object v13, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 3148
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    goto/16 :goto_0

    .line 3124
    .end local v10           #plug:Landroid/os/Message;
    .restart local v3       #curDong:Lcom/htc/service/DongleInfo;
    :cond_4
    iget-boolean v13, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3126
    const/4 v13, 0x1

    if-ne v4, v13, :cond_5

    .line 3127
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:Using MirrorStartStop"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 3130
    :cond_5
    const-string v13, "WirelessDisplayService"

    const-string v14, "Dongle is Already Selected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3150
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3152
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:wivulist contains the dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3154
    .local v1, b:Landroid/os/Bundle;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x25

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 3155
    .local v6, m:Landroid/os/Message;
    const-string v13, "dongle_bssid"

    invoke-virtual {v1, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3157
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3158
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3159
    .local v8, m2:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3162
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    .line 3163
    .local v11, timeOut2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v11, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3170
    .end local v1           #b:Landroid/os/Bundle;
    .end local v6           #m:Landroid/os/Message;
    .end local v8           #m2:Landroid/os/Message;
    .end local v11           #timeOut2:Landroid/os/Message;
    :cond_7
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Dongle is not in Wivu List"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    .line 3172
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 3173
    .local v7, m1:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3175
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3176
    .restart local v8       #m2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v8, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public setDLNAPreloadEnable(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3405
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3406
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3407
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDLNAPreloadEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3409
    return-void
.end method

.method public setFingerGestureEnable(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3393
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3394
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3395
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFingerGestureEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3397
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 12
    .parameter "nwif"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 3268
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v6

    .line 3269
    .local v6, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v4

    .line 3270
    .local v4, pid:I
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3271
    .local v1, curState:I
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInterface:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,Uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    if-eqz p1, :cond_1

    .line 3273
    move-object v2, p1

    .line 3274
    .local v2, local:Ljava/lang/String;
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v7, :cond_2

    .line 3275
    new-instance v7, Lcom/htc/server/WirelessDisplayService$WivuThread;

    const-string v8, "3655"

    invoke-direct {v7, p0, v2, v8}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3276
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v7}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 3277
    const-string v7, "WirelessDisplayService"

    const-string v8, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    const/4 v7, 0x0

    sput-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3281
    :cond_0
    iput-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 3313
    .end local v2           #local:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3283
    .restart local v2       #local:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 3284
    const-string v7, "WirelessDisplayService"

    const-string v8, "setInterface:Interface change"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3286
    const-string v7, "WirelessDisplayService"

    const-string v8, "setInterface:clearing dongle lists: Change in interface"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    const/16 v7, 0x8

    if-ne v1, v7, :cond_3

    .line 3288
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3289
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3294
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v10, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 3295
    .local v3, msg:Landroid/os/Message;
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3298
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3299
    .local v0, b:Landroid/os/Bundle;
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0x1f

    const/16 v9, 0x27

    invoke-virtual {v7, v8, v9, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 3300
    .local v5, setif:Landroid/os/Message;
    const-string v7, "interface"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3302
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 3304
    iput-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 3305
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3306
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public setL2peApInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "ssid"

    .prologue
    .line 3260
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3261
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3262
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setL2peApInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const-string v2, "sys.wfd.ap"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    return-void
.end method

.method public setMirrorDisplayOnOff(Z)I
    .locals 13
    .parameter "enable"

    .prologue
    .line 2706
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v8

    .line 2707
    .local v8, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v5

    .line 2710
    .local v5, pid:I
    const/4 v7, -0x1

    .line 2711
    .local v7, ret:I
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 2712
    .local v6, previousState:I
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2714
    .local v0, condState:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setMirrorDisplayOnOff(), value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,Uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", State="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " condState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 2717
    const-string v9, "WirelessDisplayService"

    const-string v10, "Mirror is DISABLED already"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    const/4 v7, -0x1

    .line 2825
    :cond_0
    :goto_0
    return v7

    .line 2719
    :cond_1
    if-eqz p1, :cond_d

    .line 2720
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 2721
    const/4 v9, 0x7

    if-ne v6, v9, :cond_6

    .line 2723
    const/4 v9, 0x4

    if-ne v0, v9, :cond_3

    .line 2724
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x1f

    const/16 v11, 0x21

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2725
    .local v2, msg2:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v9, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2726
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2727
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V

    .line 2741
    .end local v2           #msg2:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2729
    :cond_3
    const/4 v9, 0x6

    if-ne v0, v9, :cond_4

    .line 2730
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2731
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2732
    :cond_4
    const/4 v9, 0x7

    if-ne v0, v9, :cond_5

    .line 2733
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2734
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2735
    :cond_5
    const/4 v9, 0x5

    if-ne v0, v9, :cond_2

    .line 2736
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2737
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2739
    .local v4, msgTimeOut:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v9, v4, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2742
    .end local v4           #msgTimeOut:Landroid/os/Message;
    :cond_6
    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    .line 2743
    const/4 v7, 0x0

    goto :goto_0

    .line 2744
    :cond_7
    const/4 v9, 0x4

    if-ne v6, v9, :cond_a

    .line 2746
    const/4 v9, 0x5

    if-ne v0, v9, :cond_8

    .line 2747
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2748
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2749
    :cond_8
    const/4 v9, 0x7

    if-ne v0, v9, :cond_9

    .line 2750
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2751
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2752
    :cond_9
    const/4 v9, 0x4

    if-ne v0, v9, :cond_0

    .line 2753
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2d

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2754
    .local v1, msg:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v1, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2755
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2756
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2758
    .end local v1           #msg:Landroid/os/Message;
    :cond_a
    const/16 v9, 0x9

    if-ne v6, v9, :cond_0

    .line 2759
    const/4 v9, 0x6

    if-ne v0, v9, :cond_b

    .line 2760
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2761
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2762
    :cond_b
    const/4 v9, 0x7

    if-ne v0, v9, :cond_c

    .line 2763
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2764
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2765
    :cond_c
    const/4 v9, 0x4

    if-ne v0, v9, :cond_0

    .line 2766
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2e

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2767
    .restart local v1       #msg:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v1, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2768
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2769
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2773
    .end local v1           #msg:Landroid/os/Message;
    :cond_d
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 2774
    const/4 v9, 0x3

    if-ne v6, v9, :cond_f

    .line 2775
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2776
    .restart local v1       #msg:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v9, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2780
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2781
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    const/16 v11, 0x2b

    const/16 v12, 0x2c

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2782
    .local v3, msgPause:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2783
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v9, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2786
    .end local v3           #msgPause:Landroid/os/Message;
    :cond_e
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2787
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2797
    .end local v1           #msg:Landroid/os/Message;
    :cond_f
    const/4 v9, 0x2

    if-ne v6, v9, :cond_10

    .line 2799
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2800
    :cond_10
    const/4 v9, 0x4

    if-ne v6, v9, :cond_13

    .line 2802
    const/4 v9, 0x1

    if-ne v0, v9, :cond_12

    .line 2803
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2804
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_11
    :goto_2
    const-string v9, "WirelessDisplayService"

    const-string v10, "When screen is locked DLNA should not call any function"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 2805
    :cond_12
    const/4 v9, 0x3

    if-ne v0, v9, :cond_11

    .line 2806
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2807
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2811
    :cond_13
    const/16 v9, 0x9

    if-ne v6, v9, :cond_16

    .line 2812
    const/4 v9, 0x2

    if-ne v0, v9, :cond_15

    .line 2813
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2814
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_14
    :goto_3
    const-string v9, "WirelessDisplayService"

    const-string v10, "When in Call DLNA should not call any function"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 2815
    :cond_15
    const/4 v9, 0x3

    if-ne v0, v9, :cond_14

    .line 2816
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2817
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2821
    :cond_16
    const/4 v9, 0x7

    if-ne v6, v9, :cond_0

    sget-object v9, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/16 v10, 0x17

    if-ne v9, v10, :cond_0

    .line 2822
    const-string v9, "WirelessDisplayService"

    const-string v10, "Already in APP_PAUSE: Need to ignore WIVUSTART"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stopWivuDiscovery()V
    .locals 8

    .prologue
    .line 3316
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v3

    .line 3317
    .local v3, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 3318
    .local v1, pid:I
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopWivuDiscovery(), Pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v5, 0x1f

    const/16 v6, 0x21

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3324
    .local v2, plug:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3326
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3327
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3329
    return-void
.end method
