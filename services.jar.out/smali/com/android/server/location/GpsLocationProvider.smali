.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final CUSTOMIZE_MULTIRAB:Ljava/lang/String; = "ro.ril.multirab.throttling"

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final ENABLE_TRACKING_START:I = 0xf

.field private static final ENABLE_TRACKING_STOP:I = 0x10

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_ALMANAC_CORR_GLO:I = 0x40000

.field private static final GPS_DELETE_ALMANAC_GLO:I = 0x8000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_EPHEMERIS_GLO:I = 0x4000

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVDIR_GLO:I = 0x10000

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_SVSTEER_GLO:I = 0x20000

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GLO:I = 0x100000

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final HTC_GPS_STATUS_INJECT_LOCATION:I = 0x2

.field private static final HTC_GPS_STATUS_INJECT_SUPL_CERT:I = 0x4

.field private static final HTC_GPS_STATUS_INJECT_TIME:I = 0x1

.field private static final HTC_GPS_STATUS_INJECT_XTRA_DATA:I = 0x3

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_FLOOR_NUMBER:I = 0x80

.field private static final LOCATION_HAS_IS_INDOOR:I = 0x40

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_MAP_INDEX:I = 0x200

.field private static final LOCATION_HAS_MAP_URL:I = 0x100

.field private static final LOCATION_HAS_SOURCE_INFO:I = 0x20

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOC_API_ADAPTER_ERR_ENGINE_BUSY:I = 0x6

.field private static final LOC_API_ADAPTER_ERR_ENGINE_DOWN:I = 0x64

.field private static final LOC_API_ADAPTER_ERR_GENERAL_FAILURE:I = 0x1

.field private static final LOC_API_ADAPTER_ERR_INVALID_HANDLE:I = 0x4

.field private static final LOC_API_ADAPTER_ERR_INVALID_PARAMETER:I = 0x5

.field private static final LOC_API_ADAPTER_ERR_PHONE_OFFLINE:I = 0x7

.field private static final LOC_API_ADAPTER_ERR_SERVICE_NOT_PRESENT:I = 0x9

.field private static final LOC_API_ADAPTER_ERR_SUCCESS:I = 0x0

.field private static final LOC_API_ADAPTER_ERR_TIMEOUT:I = 0x8

.field private static final LOC_API_ADAPTER_ERR_UNSUPPORTED:I = 0x2

.field private static final LPSDEBUG:Z = false

.field private static final MAX_NTP_SYSTEM_TIME_OFFSET:J = 0x493e0L

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final PROPERTIES_FILE_def:Ljava/lang/String; = "/etc/gps.conf_default"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_NETWORK_LOCATION:I = 0xd

.field private static final REQUEST_PHONE_CONTEXT_SETTINGS:I = 0xb

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SUPL_CERT_INJECTED_PATH:Ljava/lang/String; = "/data/misc/"

.field private static final SUPL_CERT_INJECTED_SUFFIX:Ljava/lang/String; = "_injected"

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final ULP_LOCATION_IS_FROM_GNSS:I = 0x2

.field private static final ULP_LOCATION_IS_FROM_HYBRID:I = 0x1

.field private static final ULP_NETWORK_POSITION_SRC_CELL:I = 0x2

.field private static final ULP_NETWORK_POSITION_SRC_UNKNOWN:I = 0xff

.field private static final ULP_NETWORK_POSITION_SRC_WIFI:I = 0x1

.field private static final ULP_NETWORK_POS_GET_LAST_KNOWN_LOCATION_REQUEST:I = 0x3

.field private static final ULP_NETWORK_POS_START_PERIODIC_REQUEST:I = 0x2

.field private static final ULP_NETWORK_POS_STATUS_REQUEST:I = 0x1

.field private static final ULP_NETWORK_POS_STOP_REQUEST:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_OFF:I = 0x8

.field private static final ULP_PHONE_CONTEXT_AGPS_ON:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_SETTING:I = 0x10

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_OFF:I = 0x200

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_ON:I = 0x100

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_STATE:I = 0x8

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_OFF:I = 0x20

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_ON:I = 0x10

.field private static final ULP_PHONE_CONTEXT_GPS_OFF:I = 0x2

.field private static final ULP_PHONE_CONTEXT_GPS_ON:I = 0x1

.field private static final ULP_PHONE_CONTEXT_GPS_SETTING:I = 0x1

.field private static final ULP_PHONE_CONTEXT_NETWORK_POSITION_SETTING:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_WIFI_OFF:I = 0x80

.field private static final ULP_PHONE_CONTEXT_WIFI_ON:I = 0x40

.field private static final ULP_PHONE_CONTEXT_WIFI_SETTING:I = 0x4

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NATIVE_PHONE_CONTEXT_SETTINGS:I = 0xc

.field private static final UPDATE_NETWORK_LOCATION:I = 0xe

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static final XTRA_ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.XTRA_ALARM_TIMEOUT"

.field private static mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo; = null

.field private static mAllowBackDoorListener:Z = false

.field private static mHTCPrivacySetting:Z = false

.field private static mHtcAllowAPCount:I = 0x0

.field private static final strFQDN:Ljava/lang/String; = "FQDN"

.field private static final strNULL:Ljava/lang/String; = ""


# instance fields
.field private IsQuickBootPowerOff:Z

.field private Is_MULTI_RAB_TRAFFIC_support:Z

.field private XTRA_INTERVAL:J

.field private volatile mAgpsSetting:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowHTCListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBatteryCharging:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultGpsPositionMode:I

.field private mDisableAgps:Z

.field private mDisableAgpsWhenRoaming:Z

.field private mDisableXtraDownload:Z

.field private mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mECMState:Z

.field private mECMStateUpdate:Z

.field private volatile mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private volatile mGpsSetting:Z

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mInitialized:Z

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkLocationListener:Landroid/location/LocationListener;

.field private volatile mNetworkProvSetting:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:Ljava/lang/String;

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private mQosAccuracy:I

.field private mQosTimeoutAgps:I

.field private mQosTimeoutStandalone:I

.field private volatile mRequestContextType:I

.field private volatile mRequestType:I

.field private mRoaming:Z

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSuplTlsHost:Ljava/lang/String;

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private volatile mWifiSetting:Z

.field private mxtraAlarmTimeout:Landroid/app/PendingIntent;

.field private suplCertName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 480
    sput v0, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 481
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    .line 482
    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    .line 3460
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 3519
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 30
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 825
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 262
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    .line 263
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    .line 264
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    .line 265
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    .line 266
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    .line 302
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 303
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 306
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 321
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 332
    sget-object v26, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 333
    sget-object v26, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 348
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    .line 349
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    .line 353
    const/16 v26, 0x3e8

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 368
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 370
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 375
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    .line 393
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    .line 394
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    .line 395
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    .line 396
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    .line 397
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    .line 409
    new-instance v26, Landroid/location/Location;

    const-string v27, "gps"

    invoke-direct/range {v26 .. v27}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 410
    new-instance v26, Landroid/os/Bundle;

    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 411
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 412
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    .line 419
    new-instance v26, Ljava/util/concurrent/CountDownLatch;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 442
    new-instance v26, Landroid/util/SparseIntArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 458
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    .line 461
    const-wide/32 v26, 0x5265c00

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    .line 469
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    .line 477
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    .line 485
    new-instance v26, Lcom/android/server/location/GpsLocationProvider$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 527
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    .line 530
    new-instance v26, Lcom/android/server/location/GpsLocationProvider$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 630
    new-instance v26, Lcom/android/server/location/GpsLocationProvider$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 2912
    new-instance v26, Lcom/android/server/location/GpsLocationProvider$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 3075
    new-instance v26, Lcom/android/server/location/GpsLocationProvider$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 3451
    const/16 v26, 0x20

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 3452
    const/16 v26, 0x20

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 3453
    const/16 v26, 0x20

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 3454
    const/16 v26, 0x20

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 3455
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 3458
    const/16 v26, 0x78

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 826
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 828
    invoke-static/range {p1 .. p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 830
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 831
    new-instance v26, Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "power"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 837
    .local v18, powerManager:Landroid/os/PowerManager;
    const/16 v26, 0x1

    const-string v27, "GpsLocationProvider"

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "alarm"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/AlarmManager;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Landroid/content/Intent;

    const-string v29, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Landroid/content/Intent;

    const-string v29, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 845
    new-instance v25, Landroid/content/Intent;

    const-string v26, "com.android.internal.location.XTRA_ALARM_TIMEOUT"

    const/16 v27, 0x0

    invoke-direct/range {v25 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 846
    .local v25, xtraAlarmTimeout:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    .line 849
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    .local v15, intentFilter:Landroid/content/IntentFilter;
    const-string v26, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string v26, "sms"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 852
    const-string v26, "localhost"

    const-string v27, "7275"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 855
    new-instance v15, Landroid/content/IntentFilter;

    .end local v15           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 856
    .restart local v15       #intentFilter:Landroid/content/IntentFilter;
    const-string v26, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    :try_start_0
    const-string v26, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 864
    const-string v26, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 867
    const-string v26, "ro.ril.multirab.throttling"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    .line 868
    .local v5, bSetPropertyMultiRAB:Z
    :goto_1
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "bSetPropertyMultiRAB:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_0

    .line 871
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    .line 876
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    .line 880
    const-string v26, "batteryinfo"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 882
    new-instance v26, Ljava/util/Properties;

    invoke-direct/range {v26 .. v26}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 885
    const-string v26, "ro.cid"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 886
    .local v7, cid:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "/etc/gps.conf_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 893
    .local v16, pathName:Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 896
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " not exist. Fall back to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/etc/gps.conf_default"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v16, "/etc/gps.conf_default"

    .line 898
    new-instance v11, Ljava/io/File;

    .end local v11           #file:Ljava/io/File;
    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .restart local v11       #file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 902
    const-string v26, "GpsLocationProvider"

    const-string v27, "/etc/gps.conf_default not exist. Fall back to /etc/gps.conf."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v16, "/etc/gps.conf"

    .line 904
    new-instance v11, Ljava/io/File;

    .end local v11           #file:Ljava/io/File;
    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 909
    .restart local v11       #file:Ljava/io/File;
    :cond_1
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 910
    .local v19, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 911
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->PrintAGPSConfig(Ljava/util/Properties;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "SUPL_HOST"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "SUPL_PORT"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 922
    .local v17, portString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v26, :cond_2

    if-eqz v17, :cond_2

    .line 924
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 931
    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "C2K_HOST"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "C2K_PORT"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v26, :cond_3

    if-eqz v17, :cond_3

    .line 935
    :try_start_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 942
    :cond_3
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "SUPL_TLS_HOST"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 945
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mSuplTlsHost: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_4
    const-string v26, "GpsLocationProvider"

    const-string v27, "[CERT] SuplRootCert Injection ++++"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v21, "SuplRootCert"

    .line 953
    .local v21, suplCert0:Ljava/lang/String;
    const/4 v6, 0x0

    .line 954
    .local v6, cert_idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "SUPL_TLS_CERT"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 955
    .local v20, suplCert:Ljava/lang/String;
    if-nez v20, :cond_5

    .line 956
    const-string v26, "GpsLocationProvider"

    const-string v27, "[CERT] suplCert == null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    add-int/lit8 v6, v6, 0x1

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SUPL_TLS_CERT_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 960
    :cond_5
    :goto_4
    if-eqz v20, :cond_a

    .line 961
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    .local v12, file_cert:Ljava/io/File;
    const/16 v26, 0x800

    move/from16 v0, v26

    new-array v9, v0, [B

    .line 963
    .local v9, data:[B
    const/4 v8, 0x0

    .line 964
    .local v8, count:I
    new-instance v13, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "/data/misc/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_injected"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v13, file_injected:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->suplCertName:Ljava/lang/String;

    .line 966
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[CERT] suplCertName "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->suplCertName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_9

    .line 968
    const-string v26, "GpsLocationProvider"

    const-string v27, "[CERT] file_injected not exist "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 970
    :try_start_6
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 971
    .local v14, in:Ljava/io/FileInputStream;
    invoke-virtual {v14, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 972
    if-lez v6, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v9, v8, v1}, Lcom/android/server/location/GpsLocationProvider;->native_inject_supl_cert([BILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 988
    .end local v14           #in:Ljava/io/FileInputStream;
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 989
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SUPL_TLS_CERT_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v20

    .line 990
    goto/16 :goto_4

    .line 859
    .end local v5           #bSetPropertyMultiRAB:Z
    .end local v6           #cert_idx:I
    .end local v7           #cid:Ljava/lang/String;
    .end local v8           #count:I
    .end local v9           #data:[B
    .end local v11           #file:Ljava/io/File;
    .end local v12           #file_cert:Ljava/io/File;
    .end local v13           #file_injected:Ljava/io/File;
    .end local v16           #pathName:Ljava/lang/String;
    .end local v17           #portString:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .end local v20           #suplCert:Ljava/lang/String;
    .end local v21           #suplCert0:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 860
    .local v10, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v26, "GpsLocationProvider"

    const-string v27, "Malformed SUPL init mime type"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 867
    .end local v10           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 925
    .restart local v5       #bSetPropertyMultiRAB:Z
    .restart local v7       #cid:Ljava/lang/String;
    .restart local v11       #file:Ljava/io/File;
    .restart local v16       #pathName:Ljava/lang/String;
    .restart local v17       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    .line 926
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "unable to parse SUPL_PORT: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 1079
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v11           #file:Ljava/io/File;
    .end local v17           #portString:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 1080
    .local v10, e:Ljava/io/IOException;
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Could not open GPS configuration file "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    .end local v10           #e:Ljava/io/IOException;
    :cond_7
    :goto_7
    new-instance v26, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    .line 1088
    :goto_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1098
    const-string v26, "GpsLocationProvider"

    const-string v27, "DOWNLOAD_XTRA_DATA after 2 minutes"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/32 v28, 0x1d4c0

    add-long v22, v26, v28

    .line 1102
    .local v22, triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-wide/from16 v2, v22

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1104
    const-string v26, "GpsLocationProvider"

    const-string v27, "end of constructor"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 936
    .end local v22           #triggerTime:J
    .restart local v11       #file:Ljava/io/File;
    .restart local v17       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    .line 937
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "unable to parse C2K_PORT: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v10           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #cert_idx:I
    .restart local v8       #count:I
    .restart local v9       #data:[B
    .restart local v12       #file_cert:Ljava/io/File;
    .restart local v13       #file_injected:Ljava/io/File;
    .restart local v14       #in:Ljava/io/FileInputStream;
    .restart local v20       #suplCert:Ljava/lang/String;
    .restart local v21       #suplCert0:Ljava/lang/String;
    :cond_8
    move-object/from16 v26, v21

    .line 972
    goto/16 :goto_5

    .line 980
    .end local v14           #in:Ljava/io/FileInputStream;
    :catch_4
    move-exception v10

    .line 981
    .local v10, e:Ljava/io/IOException;
    const-string v26, "GpsLocationProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[CERT] Could not open certificate file "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 986
    .end local v10           #e:Ljava/io/IOException;
    :cond_9
    const-string v26, "GpsLocationProvider"

    const-string v27, "[CERT] file_injected exist "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 991
    .end local v8           #count:I
    .end local v9           #data:[B
    .end local v12           #file_cert:Ljava/io/File;
    .end local v13           #file_injected:Ljava/io/File;
    :cond_a
    const-string v26, "GpsLocationProvider"

    const-string v27, "[CERT] SuplRootCert Injection -----"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "DISABLE_AGPS_WHEN_ROAMING"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 999
    .local v24, value:Ljava/lang/String;
    const-string v26, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 1000
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    .line 1007
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "DEFAULT_AGPS_MODE"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1008
    if-eqz v24, :cond_15

    .line 1010
    const-string v26, "MS_ASSISTED"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1011
    const-string v26, "GpsLocationProvider"

    const-string v27, "DEFAULT_AGPS_MODE: MS_ASSISTED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    .line 1028
    :cond_c
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_d

    .line 1030
    const-string v26, "GpsLocationProvider"

    const-string v27, "unable to parse AGPS server, Use Standalone Mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    .line 1034
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "QOS_ACCURACY"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v24

    .line 1035
    if-eqz v24, :cond_e

    .line 1037
    :try_start_b
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 1042
    :cond_e
    :goto_b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "QOS_TIMEOUT_STANDALONE"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v24

    .line 1043
    if-eqz v24, :cond_f

    .line 1045
    :try_start_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 1050
    :cond_f
    :goto_c
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "QOS_TIMEOUT_AGPS"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    move-result-object v24

    .line 1051
    if-eqz v24, :cond_10

    .line 1053
    :try_start_f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 1058
    :cond_10
    :goto_d
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "XTRA_INTERVAL"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    move-result-object v24

    .line 1059
    if-eqz v24, :cond_11

    .line 1061
    :try_start_11
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    mul-int/lit8 v26, v26, 0x3c

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    .line 1066
    :cond_11
    :goto_e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v26, v0

    const-string v27, "PHONE_TYPE"

    const-string v28, "UNDEFINE"

    invoke-virtual/range {v26 .. v28}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    .line 1071
    const-string v26, "CDMA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 1073
    const-string v26, "GpsLocationProvider"

    const-string v27, "Detect DEFAULT_PHONE_TYPE: UMTS/UNDEFINE to set_privacy_lock(0) when boot"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    goto/16 :goto_7

    .line 1001
    :cond_12
    const-string v26, "false"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1002
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    goto/16 :goto_9

    .line 1013
    :cond_13
    const-string v26, "MS_BASED"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1014
    const-string v26, "GpsLocationProvider"

    const-string v27, "DEFAULT_AGPS_MODE: MS_BASED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    goto/16 :goto_a

    .line 1016
    :cond_14
    const-string v26, "STANDALONE_GPS"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 1017
    const-string v26, "GpsLocationProvider"

    const-string v27, "DEFAULT_AGPS_MODE: STANDALONE_GPS"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    goto/16 :goto_a

    .line 1024
    :cond_15
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    goto/16 :goto_a

    .line 1038
    :catch_5
    move-exception v10

    .line 1039
    .local v10, e:Ljava/lang/NumberFormatException;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    goto/16 :goto_b

    .line 1046
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v10

    .line 1047
    .restart local v10       #e:Ljava/lang/NumberFormatException;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    goto/16 :goto_c

    .line 1054
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v10

    .line 1055
    .restart local v10       #e:Ljava/lang/NumberFormatException;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_d

    .line 1090
    .end local v6           #cert_idx:I
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v11           #file:Ljava/io/File;
    .end local v17           #portString:Ljava/lang/String;
    .end local v19           #stream:Ljava/io/FileInputStream;
    .end local v20           #suplCert:Ljava/lang/String;
    .end local v21           #suplCert0:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :catch_8
    move-exception v10

    .line 1091
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_8

    .line 1062
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v6       #cert_idx:I
    .restart local v11       #file:Ljava/io/File;
    .restart local v17       #portString:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    .restart local v20       #suplCert:Ljava/lang/String;
    .restart local v21       #suplCert0:Ljava/lang/String;
    .restart local v24       #value:Ljava/lang/String;
    :catch_9
    move-exception v26

    goto/16 :goto_e
.end method

.method private PrintAGPSConfig(Ljava/util/Properties;)V
    .locals 4
    .parameter "mProperties"

    .prologue
    .line 724
    const-string v0, "Cust_AGPS_Setting"

    .line 727
    .local v0, TAG2:Ljava/lang/String;
    const-string v2, "NTP_SERVER"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, mString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTP_SERVER > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    const-string v2, "XTRA_SERVER_1"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    if-eqz v1, :cond_1

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_SERVER1 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1
    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_2

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_SERVER2 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_2
    const-string v2, "XTRA_SERVER_3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    if-eqz v1, :cond_3

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_SERVER3 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_3
    const-string v2, "SUPL_HOST"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_4

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_HOST > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_4
    const-string v2, "SUPL_PORT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_5

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_PORT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_5
    const-string v2, "SUPL_TLS_HOST"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_6

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_HOST > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_6
    const-string v2, "SUPL_TLS_CERT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    if-eqz v1, :cond_7

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_7
    const-string v2, "SUPL_TLS_CERT1"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_8

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT1 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_8
    const-string v2, "SUPL_TLS_CERT2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_9

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT2 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_9
    const-string v2, "SUPL_TLS_CERT3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_a

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT3 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_a
    const-string v2, "SUPL_TLS_CERT4"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_b

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT4 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_b
    const-string v2, "C2K_HOST"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_c

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C2K_HOST > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_c
    const-string v2, "C2K_PORT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    if-eqz v1, :cond_d

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C2K_PORT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_d
    const-string v2, "DEFAULT_AGPS_MODE"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    if-eqz v1, :cond_e

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_AGPS_MODE > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_e
    const-string v2, "DISABLE_AGPS_WHEN_ROAMING"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    if-eqz v1, :cond_f

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISABLE_AGPS_WHEN_ROAMING > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_f
    const-string v2, "DISABLE_AGPS_WHEN_WIMAX"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    if-eqz v1, :cond_10

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISABLE_AGPS_WHEN_WIMAX > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_10
    const-string v2, "QOS_ACCURACY"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    if-eqz v1, :cond_11

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS_ACCURACY > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_11
    const-string v2, "QOS_TIMEOUT_STANDALONE"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_12

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS_TIMEOUT_STANDALONE > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_12
    const-string v2, "QOS_TIMEOUT_AGPS"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    if-eqz v1, :cond_13

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS_TIMEOUT_AGPS > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_13
    const-string v2, "ENABLE_EXTRA_COMMAND_SET_PDE_IP_PORT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_14

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_EXTRA_COMMAND_SET_PDE_IP_PORT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_14
    const-string v2, "PHONE_TYPE"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 812
    if-eqz v1, :cond_15

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_TYPE > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_15
    const-string v2, "SUPL_VER"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    if-eqz v1, :cond_16

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_VER > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_16
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-boolean p0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$DownloadStates;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextRequest(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativeNetworkLocationRequest(II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$4372(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$4410(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    return p1
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 709
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 710
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 711
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 712
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v2           #supl_init:[B
    :cond_0
    sget-object v3, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 715
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 718
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 719
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 720
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    .line 2194
    if-nez p1, :cond_1

    .line 2195
    const/4 v0, -0x1

    .line 2222
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_17

    .line 2223
    const-string v1, "GpsLocationProvider"

    const-string v2, "<<---- deleteAidingData ---->>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 2226
    const/4 v1, 0x1

    .line 2229
    :goto_1
    return v1

    .line 2197
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 2198
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 2199
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 2200
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 2201
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 2202
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 2203
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 2204
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 2205
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 2206
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 2207
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 2208
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 2209
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x800

    .line 2210
    :cond_d
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x1000

    .line 2211
    :cond_e
    const-string v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x2000

    .line 2212
    :cond_f
    const-string v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x4000

    .line 2213
    :cond_10
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 2214
    :cond_11
    const-string v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 2215
    :cond_12
    const-string v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    .line 2216
    :cond_13
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 2217
    :cond_14
    const-string v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 2218
    :cond_15
    const-string v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 2219
    :cond_16
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 2229
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .locals 6
    .parameter "connType"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3521
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAGpsConnectionInfo connType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    packed-switch p1, :pswitch_data_0

    .line 3534
    :goto_0
    return-object v0

    .line 3526
    :pswitch_0
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v4

    if-nez v1, :cond_0

    .line 3527
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    invoke-direct {v2, p0, v4, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v4

    .line 3528
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v4

    goto :goto_0

    .line 3530
    :pswitch_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v5

    if-nez v1, :cond_1

    .line 3531
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v5

    .line 3532
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v5

    goto :goto_0

    .line 3522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3426
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3427
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3429
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3432
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3434
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3435
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3438
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3441
    :cond_1
    return-object v6

    .line 3438
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleAddListener(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 1997
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1999
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2000
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2002
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 2005
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate add listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    monitor-exit v4

    .line 2020
    :goto_0
    return-void

    .line 2009
    :cond_0
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addListener("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2012
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2014
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2019
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2015
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 2016
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "GpsLocationProvider"

    const-string v5, "RemoteException in addListener"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1558
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1574
    :goto_0
    return-void

    .line 1561
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1562
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1564
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1565
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1568
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1570
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    goto :goto_0

    .line 1573
    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable: ULP is supported, skip disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 9

    .prologue
    .line 1281
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleDownloadXtraData] mNetworkAvailable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDisableXtraDownload:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mNavigating:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mEngineOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v6, :cond_1

    .line 1284
    :cond_0
    sget-object v6, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1285
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] pending until Network available or GPS Engine stop"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_0
    return-void

    .line 1289
    :cond_1
    sget-object v6, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1291
    new-instance v5, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v5, v6, v7}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 1294
    .local v5, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v5}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 1295
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1297
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] native_inject_xtra_data +"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    array-length v6, v0

    invoke-direct {p0, v0, v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 1301
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] native_inject_xtra_data -"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    .line 1309
    .local v1, delay:J
    :goto_1
    sget-object v6, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1317
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleDownloadXtraData] DOWNLOAD_XTRA_DATA, delay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v3, v6, v1

    .line 1319
    .local v3, triggerTime:J
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v3, v4, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1306
    .end local v1           #delay:J
    .end local v3           #triggerTime:J
    :cond_2
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] xtraDownload got failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-wide/32 v1, 0x493e0

    .restart local v1       #delay:J
    goto :goto_1
.end method

.method private handleEnable()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1466
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable: mEnabled:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 1544
    :goto_0
    return-void

    .line 1470
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1472
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 1474
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-eqz v0, :cond_a

    .line 1475
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_9

    .line 1481
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1482
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    const-string v1, "FQDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1484
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: mSuplServerHost have value, call set_agps_server()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1495
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1496
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    const-string v1, "FQDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1498
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: mC2KServerHost have value, call set_agps_server()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1510
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1511
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    const-string v1, "FQDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1513
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: mSuplTlsHost have value, call set_agps_server()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1529
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1530
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable: mSupportsXtra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mDownloadXtraDataPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v0, v1, :cond_5

    .line 1533
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1539
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    goto/16 :goto_0

    .line 1489
    :cond_6
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: mSuplServerHost is FQDN, call set_agps_server()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const-string v0, ""

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 1503
    :cond_7
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: mC2KServerHost is FQDN, call set_agps_server()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const-string v0, ""

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_2

    .line 1518
    :cond_8
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: mSuplTlsHost is FQDN, call set_agps_server()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const-string v0, ""

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_3

    .line 1526
    :cond_9
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: skip setup SLP server, due to GPS session running\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1537
    :cond_a
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1541
    :cond_b
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable: ULP is support or Have init, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    goto/16 :goto_0
.end method

.method private handleEnableLocationTracking(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 1622
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In handleEnableLocationTracking. enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    if-eqz p1, :cond_0

    .line 1624
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1625
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1626
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1638
    :goto_0
    return-void

    .line 1628
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1629
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1630
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1632
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1636
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleInjectNtpTime()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    .line 1231
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_0

    .line 1233
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1277
    :goto_0
    return-void

    .line 1236
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1243
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 1245
    .local v1, time:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 1246
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 1248
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1250
    .local v10, now:J
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTP server returned: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ") reference: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " certainty: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " system time offset: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v12, v1, v10

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 1257
    const-wide/32 v8, 0x5265c00

    .line 1264
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    .local v8, delay:J
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_1

    .line 1269
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestTime next time: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1275
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto/16 :goto_0

    .line 1259
    .end local v8           #delay:J
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v5, "requestTime failed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const-wide/32 v8, 0x493e0

    .restart local v8       #delay:J
    goto :goto_1
.end method

.method private handleNativeNetworkLocationRequest(II)V
    .locals 8
    .parameter "type"
    .parameter "interval"

    .prologue
    .line 1710
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1711
    .local v0, lm:Landroid/location/LocationManager;
    packed-switch p1, :pswitch_data_0

    .line 1731
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNativeNetworkLocationRequest. Inccorect request sent in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :goto_0
    return-void

    .line 1713
    :pswitch_0
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleNativeNetworkLocationRequest NLP start from GP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const-string v1, "network"

    int-to-long v2, p2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 1717
    :pswitch_1
    const-string v1, "LocationManager.NETWORK_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1718
    .local v6, location:Landroid/location/Location;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1719
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1720
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 1721
    .local v7, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v7, Landroid/os/Message;->arg1:I

    .line 1722
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1723
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1724
    monitor-exit v2

    goto :goto_0

    .end local v7           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1727
    .end local v6           #location:Landroid/location/Location;
    :pswitch_2
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleNativeNetworkLocationRequest NLP stop from GP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleNativePhoneContextRequest(II)V
    .locals 3
    .parameter "contextType"
    .parameter "requestType"

    .prologue
    .line 1701
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1702
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 1703
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNativePhoneContextRequest invoked from native layer with mRequestContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRequestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    .line 1706
    return-void
.end method

.method private handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V
    .locals 21
    .parameter "updateType"
    .parameter "settingsValues"

    .prologue
    .line 1738
    const/4 v3, 0x0

    .line 1740
    .local v3, currentContextType:I
    const/4 v5, 0x0

    .local v5, currentAgpsSetting:Z
    const/4 v7, 0x0

    .line 1741
    .local v7, currentWifiSetting:Z
    const/4 v4, 0x0

    .local v4, currentGpsSetting:Z
    const/4 v6, 0x0

    .line 1742
    .local v6, currentNetworkProvSetting:Z
    const/4 v8, 0x0

    .line 1743
    .local v8, currentBatteryCharging:Z
    const/4 v14, 0x0

    .local v14, wasAgpsSettingAvailable:Z
    const/16 v18, 0x0

    .line 1744
    .local v18, wasWifiSettingAvailable:Z
    const/16 v16, 0x0

    .local v16, wasGpsSettingAvailable:Z
    const/16 v17, 0x0

    .line 1745
    .local v17, wasNetworkProviderSettingAvailable:Z
    const/4 v15, 0x0

    .line 1747
    .local v15, wasBatteryChargingAvailable:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1748
    .local v13, resolver:Landroid/content/ContentResolver;
    const-string v2, "GpsLocationProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleNativePhoneContextUpdate called. updateType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mRequestContextType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mRequestType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    if-nez v2, :cond_0

    .line 1752
    const-string v2, "GpsLocationProvider"

    const-string v19, "handleNativePhoneContextUpdate. Update obtained before request. Ignoring"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :goto_0
    return-void

    .line 1757
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_1

    .line 1759
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1760
    const-string v2, "gps"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 1762
    const/16 v16, 0x1

    .line 1773
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x10

    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 1775
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 1776
    const-string v2, "assisted_gps_enabled"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_8

    const/4 v5, 0x1

    .line 1778
    :goto_2
    const/4 v14, 0x1

    .line 1789
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x2

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 1792
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 1793
    const-string v2, "network"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 1795
    const/16 v17, 0x1

    .line 1807
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x4

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 1810
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 1811
    const-string v2, "wifi_on"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_b

    const/4 v7, 0x1

    .line 1813
    :goto_5
    const/16 v18, 0x1

    .line 1825
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x8

    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v2, v0, :cond_6

    .line 1828
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 1832
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1833
    .local v11, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    .line 1836
    .local v9, batteryIntent:Landroid/content/Intent;
    const/4 v12, -0x1

    .line 1837
    .local v12, plugged:I
    const-string v2, "plugged"

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1838
    const/4 v2, 0x1

    if-eq v12, v2, :cond_5

    const/4 v2, 0x2

    if-ne v12, v2, :cond_d

    :cond_5
    const/4 v8, 0x1

    .line 1840
    :goto_7
    const/4 v15, 0x1

    .line 1855
    .end local v9           #batteryIntent:Landroid/content/Intent;
    .end local v11           #intentFilter:Landroid/content/IntentFilter;
    .end local v12           #plugged:I
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1859
    if-nez v16, :cond_f

    .line 1860
    and-int/lit8 v3, v3, -0x2

    .line 1869
    :goto_9
    if-nez v14, :cond_11

    .line 1870
    and-int/lit8 v3, v3, -0x11

    .line 1879
    :goto_a
    if-nez v17, :cond_13

    .line 1880
    and-int/lit8 v3, v3, -0x3

    .line 1889
    :goto_b
    if-nez v18, :cond_15

    .line 1890
    and-int/lit8 v3, v3, -0x5

    .line 1899
    :goto_c
    if-nez v15, :cond_17

    .line 1900
    and-int/lit8 v3, v3, -0x9

    :goto_d
    move-object/from16 v2, p0

    .line 1910
    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GpsLocationProvider;->native_update_settings(IZZZZZ)Z

    .line 1912
    const-string v2, "GpsLocationProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "After calling native_update_settings. currentContextType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sGpsSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "currentAgpsSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " currentNetworkProvSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " currentWifiSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " currentBatteryCharging: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1765
    :cond_7
    :try_start_1
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1767
    const/16 v16, 0x1

    .line 1768
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    .line 1776
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1781
    :cond_9
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1783
    const/4 v14, 0x1

    .line 1784
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_3

    .line 1798
    :cond_a
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1800
    const/16 v17, 0x1

    .line 1801
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_4

    .line 1811
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1816
    :cond_c
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1818
    const/16 v18, 0x1

    .line 1819
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_6

    .line 1838
    .restart local v9       #batteryIntent:Landroid/content/Intent;
    .restart local v11       #intentFilter:Landroid/content/IntentFilter;
    .restart local v12       #plugged:I
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1843
    .end local v9           #batteryIntent:Landroid/content/Intent;
    .end local v11           #intentFilter:Landroid/content/IntentFilter;
    .end local v12           #plugged:I
    :cond_e
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1845
    const/4 v15, 0x1

    .line 1846
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto/16 :goto_8

    .line 1850
    :catch_0
    move-exception v10

    .line 1851
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider"

    const-string v19, "Exception in handleNativePhoneContextUpdate:"

    move-object/from16 v0, v19

    invoke-static {v2, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1863
    .end local v10           #e:Ljava/lang/Exception;
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    if-ne v4, v2, :cond_10

    .line 1865
    and-int/lit8 v3, v3, -0x2

    .line 1867
    :cond_10
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    goto/16 :goto_9

    .line 1873
    :cond_11
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    if-ne v5, v2, :cond_12

    .line 1875
    and-int/lit8 v3, v3, -0x11

    .line 1877
    :cond_12
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    goto/16 :goto_a

    .line 1883
    :cond_13
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    if-ne v6, v2, :cond_14

    .line 1885
    and-int/lit8 v3, v3, -0x3

    .line 1887
    :cond_14
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    goto/16 :goto_b

    .line 1893
    :cond_15
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    if-ne v7, v2, :cond_16

    .line 1895
    and-int/lit8 v3, v3, -0x5

    .line 1897
    :cond_16
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    goto/16 :goto_c

    .line 1903
    :cond_17
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    if-ne v8, v2, :cond_18

    .line 1905
    and-int/lit8 v3, v3, -0x9

    .line 1907
    :cond_18
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    goto/16 :goto_d
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 2900
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkLocationUpdate. lat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accurancy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2903
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_send_network_location(DDF)V

    .line 2906
    :cond_0
    return-void
.end method

.method private handleRemoveListener(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 2033
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2035
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2036
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2038
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 2041
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unneeded remove listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    monitor-exit v4

    .line 2056
    :goto_0
    return-void

    .line 2045
    :cond_0
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeListener("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2048
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2050
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2055
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2051
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 2052
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "GpsLocationProvider"

    const-string v5, "RemoteException in removeListener"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShot()V
    .locals 2

    .prologue
    .line 1654
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1655
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1656
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1657
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 1358
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 1367
    :goto_0
    return-void

    .line 1365
    :cond_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateLocation: location.hasAccuracy() is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 13
    .parameter "state"
    .parameter "info"

    .prologue
    .line 1146
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 1149
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_7

    const-string v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    if-eqz p2, :cond_4

    .line 1154
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    .line 1156
    .local v10, dataEnabled:Z
    :goto_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v10, :cond_9

    const/4 v4, 0x1

    .line 1157
    .local v4, networkAvailable:Z
    :goto_3
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 1158
    .local v6, defaultApn:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1159
    const-string v6, "dummy-apn"

    .line 1162
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 1168
    .local v9, connType:I
    :goto_4
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v7

    .line 1169
    .local v7, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-eqz v7, :cond_4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1171
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 1172
    .local v8, apnName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1173
    .local v12, tm:Landroid/telephony/TelephonyManager;
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_b

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1177
    :cond_1
    if-nez v8, :cond_2

    .line 1180
    move-object v8, v6

    .line 1182
    :cond_2
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1702(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 1193
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1195
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v11

    .line 1198
    .local v11, route_result:Z
    if-nez v11, :cond_3

    .line 1199
    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHostAddress failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .end local v11           #route_result:Z
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    invoke-direct {p0, v0, v8, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 1203
    const/4 v0, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 1213
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v7           #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .end local v8           #apnName:Ljava/lang/String;
    .end local v9           #connType:I
    .end local v10           #dataEnabled:Z
    .end local v12           #tm:Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_5

    .line 1214
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v0, v1, :cond_c

    .line 1215
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateNetworkState] send message: INJECT_NTP_TIME "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1221
    :goto_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v0, v1, :cond_d

    .line 1222
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateNetworkState] send message: DOWNLOAD_XTRA_DATA "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1228
    :cond_5
    :goto_7
    return-void

    .line 1146
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1149
    :cond_7
    const-string v0, "unavailable"

    goto/16 :goto_1

    .line 1154
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1156
    .restart local v10       #dataEnabled:Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1166
    .restart local v4       #networkAvailable:Z
    .restart local v6       #defaultApn:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x3

    goto/16 :goto_4

    .line 1205
    .restart local v7       #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .restart local v8       #apnName:Ljava/lang/String;
    .restart local v9       #connType:I
    .restart local v12       #tm:Landroid/telephony/TelephonyManager;
    :cond_b
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 1208
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto :goto_5

    .line 1219
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v7           #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .end local v8           #apnName:Ljava/lang/String;
    .end local v9           #connType:I
    .end local v10           #dataEnabled:Z
    .end local v12           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateNetworkState] no INJECT_NTP_TIME pending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1226
    :cond_d
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateNetworkState] no DOWNLOAD_XTRA_DATA pending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 2384
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 8

    .prologue
    .line 2375
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 2376
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2377
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2379
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2381
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 1109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1110
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    const-string v1, "com.android.internal.location.XTRA_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1113
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1114
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1115
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1120
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1124
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed(I)V
.end method

.method private native native_agps_data_conn_failed(I)V
.end method

.method private native native_agps_data_conn_open(ILjava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_raw_command([BI)Z
.end method

.method private native native_inject_supl_cert([BILjava/lang/String;)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_network_location(DDF)V
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_set_privacy_lock(I)V
.end method

.method private native native_set_qos_time_out(II)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_criteria(IJFZII)Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_update_settings(IZZZZZ)Z
.end method

.method private reportAGpsStatus(III[B)V
    .locals 9
    .parameter "type"
    .parameter "status"
    .parameter "ipv4_addr"
    .parameter "ipv6_addr"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2776
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    .line 2777
    .local v0, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-nez v0, :cond_1

    .line 2778
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reportAGpsStatus agpsConnInfo is null for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_0
    :goto_0
    return-void

    .line 2783
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2785
    :pswitch_0
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v5, :cond_2

    .line 2790
    const-string v5, "GpsLocationProvider"

    const-string v6, "reportAGpsStatus: Calling disable MRTT by requestSetMultiRABTrafficThrottling(3 , 1) "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const-string v5, "htctelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    .line 2792
    .local v2, ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v2, :cond_2

    .line 2794
    const/4 v5, 0x3

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    .end local v2           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_2
    :goto_1
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2806
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 2808
    .local v3, result:I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_4

    .line 2809
    invoke-static {p3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 2815
    :goto_2
    if-nez v3, :cond_6

    .line 2816
    const-string v5, "GpsLocationProvider"

    const-string v6, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2818
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2821
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v4

    .line 2825
    .local v4, route_result:Z
    if-nez v4, :cond_3

    const-string v5, "GpsLocationProvider"

    const-string v6, "call requestRouteToHostAddress failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    .end local v4           #route_result:Z
    :cond_3
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 2828
    const/4 v5, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 2795
    .end local v3           #result:I
    .restart local v2       #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :catch_0
    move-exception v1

    .line 2797
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2812
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    .restart local v3       #result:I
    :cond_4
    const/4 v5, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    goto :goto_2

    .line 2830
    :cond_5
    const-string v5, "GpsLocationProvider"

    const-string v6, "agpsConnInfo.mAPN not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2832
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 2834
    :cond_6
    if-ne v3, v7, :cond_7

    .line 2835
    const-string v5, "GpsLocationProvider"

    const-string v6, "Phone.APN_REQUEST_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2838
    :cond_7
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startUsingNetworkFeature failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2840
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 2844
    .end local v3           #result:I
    :pswitch_1
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    if-eqz v5, :cond_8

    .line 2846
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2848
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V

    .line 2849
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2853
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v5, :cond_0

    .line 2855
    const-string v5, "GpsLocationProvider"

    const-string v6, "reportAGpsStatus: Calling enable MRTT by requestSetMultiRABTrafficThrottling(3 , 0) "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    const-string v5, "htctelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    .line 2857
    .restart local v2       #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v2, :cond_0

    .line 2859
    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2860
    :catch_1
    move-exception v1

    .line 2862
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2870
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :pswitch_2
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2873
    :pswitch_3
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2876
    :pswitch_4
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportHTCStatus(II)V
    .locals 5
    .parameter "eventMask"
    .parameter "status"

    .prologue
    .line 2994
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportHTCStatus eventMask= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    packed-switch p1, :pswitch_data_0

    .line 3032
    :cond_0
    :goto_0
    return-void

    .line 2998
    :pswitch_0
    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus]HTC_GPS_STATUS_INJECT_TIME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3002
    :pswitch_1
    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus]HTC_GPS_STATUS_INJECT_LOCATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3006
    :pswitch_2
    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus]HTC_GPS_STATUS_INJECT_XTRA_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3010
    :pswitch_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus]HTC_GPS_STATUS_INJECT_SUPL_CERT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    if-nez p2, :cond_0

    .line 3013
    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus] Supl cert inject success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->suplCertName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_injected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3015
    .local v1, file_injected:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3017
    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus] file_injected not exist "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3021
    :catch_0
    move-exception v0

    .line 3023
    .local v0, e:Ljava/io/IOException;
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[reportHTCStatus]] Could not create injected file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2995
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJI[BZFLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "positionSource"
    .parameter "rawData"
    .parameter "isIndoor"
    .parameter "floorNumber"
    .parameter "mapUrl"
    .parameter "mapIndex"

    .prologue
    .line 2398
    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v12

    .line 2399
    :try_start_0
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2400
    and-int/lit8 v11, p1, 0x1

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    .line 2401
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 2402
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 2403
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 2405
    :cond_0
    and-int/lit8 v11, p1, 0x2

    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    .line 2406
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 2410
    :goto_0
    and-int/lit8 v11, p1, 0x4

    const/4 v13, 0x4

    if-ne v11, v13, :cond_2

    .line 2411
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v11, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 2415
    :goto_1
    and-int/lit8 v11, p1, 0x8

    const/16 v13, 0x8

    if-ne v11, v13, :cond_3

    .line 2416
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Landroid/location/Location;->setBearing(F)V

    .line 2420
    :goto_2
    and-int/lit8 v11, p1, 0x10

    const/16 v13, 0x10

    if-ne v11, v13, :cond_4

    .line 2421
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v11, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2425
    :goto_3
    const-string v11, "GpsLocationProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reportLocation.flag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    and-int/lit8 v11, p1, 0x20

    const/16 v13, 0x20

    if-ne v11, v13, :cond_7

    .line 2428
    const/4 v11, 0x1

    move/from16 v0, p13

    if-ne v0, v11, :cond_5

    .line 2429
    const-string v11, "GpsLocationProvider"

    const-string v13, "reportLocation. Location has source information. src -hybrid"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "ProviderSourceIsUlp"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2434
    :goto_4
    const/4 v11, 0x2

    move/from16 v0, p13

    if-ne v0, v11, :cond_6

    .line 2435
    const-string v11, "GpsLocationProvider"

    const-string v13, "reportLocation. Location has source information. src -gnss"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "ProviderSourceIsGnss"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2445
    :goto_5
    move-object/from16 v0, p14

    array-length v11, v0

    if-lez v11, :cond_8

    .line 2446
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "RawData"

    move-object/from16 v0, p14

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2451
    :goto_6
    and-int/lit8 v11, p1, 0x40

    const/16 v13, 0x40

    if-ne v11, v13, :cond_9

    .line 2452
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "isIndoor"

    move/from16 v0, p15

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2457
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x80

    const/16 v13, 0x80

    if-ne v11, v13, :cond_a

    .line 2458
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "floorNumber"

    move/from16 v0, p16

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2463
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x100

    const/16 v13, 0x100

    if-ne v11, v13, :cond_b

    .line 2464
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "mapUrl"

    move-object/from16 v0, p17

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2469
    :goto_9
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x200

    const/16 v13, 0x200

    if-ne v11, v13, :cond_c

    .line 2470
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "mapIndex"

    move-object/from16 v0, p18

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2475
    :goto_a
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v13, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v13}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 2478
    new-instance v8, Landroid/location/Location;

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-direct {v8, v11}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2480
    .local v8, locationCopy:Landroid/location/Location;
    :try_start_1
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v13, 0x0

    invoke-interface {v11, v8, v13}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2484
    :goto_b
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2488
    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v11, :cond_f

    and-int/lit8 v11, p1, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 2489
    iget-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v13, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2490
    const-string v11, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TTFF: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v12

    .line 2494
    :try_start_3
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2497
    .local v9, size:I
    sget v11, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v11, :cond_14

    sget-boolean v11, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v11, :cond_14

    .line 2500
    iget-object v13, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2501
    :try_start_4
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2503
    .local v10, sizeAllow:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_c
    if-ge v6, v10, :cond_d

    .line 2504
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2507
    .local v3, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_5
    iget-object v11, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v14, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v11, v14}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2503
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 2408
    .end local v3           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v6           #j:I
    .end local v8           #locationCopy:Landroid/location/Location;
    .end local v9           #size:I
    .end local v10           #sizeAllow:I
    :cond_1
    :try_start_6
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    .line 2484
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .line 2413
    :cond_2
    :try_start_7
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 2418
    :cond_3
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 2423
    :cond_4
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 2432
    :cond_5
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "ProviderSourceIsUlp"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2438
    :cond_6
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "ProviderSourceIsGnss"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2441
    :cond_7
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "ProviderSourceIsUlp"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2442
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "ProviderSourceIsGnss"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2448
    :cond_8
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "RawData"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2454
    :cond_9
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "isIndoor"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2460
    :cond_a
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "floorNumber"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2466
    :cond_b
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "mapUrl"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2472
    :cond_c
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v13, "mapIndex"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2481
    .restart local v8       #locationCopy:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 2482
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "GpsLocationProvider"

    const-string v13, "RemoteException calling reportLocation"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_b

    .line 2508
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v6       #j:I
    .restart local v9       #size:I
    .restart local v10       #sizeAllow:I
    :catch_1
    move-exception v2

    .line 2509
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v11, "GpsLocationProvider"

    const-string v14, "RemoteException in stopNavigating"

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2512
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_d

    .line 2515
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_d
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2533
    .end local v6           #j:I
    .end local v10           #sizeAllow:I
    :cond_e
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2536
    .end local v9           #size:I
    :cond_f
    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v11, :cond_10

    .line 2537
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 2539
    :cond_10
    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v11, :cond_12

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_12

    .line 2542
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v11

    if-nez v11, :cond_11

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v12, 0xea60

    if-ge v11, v12, :cond_11

    .line 2543
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2548
    :cond_11
    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v11, :cond_15

    .line 2551
    const-string v11, "GpsLocationProvider"

    const-string v12, "[GICON] +++++ GPS_FIX_CHANGE_ACTION +++++  (true)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2553
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "enabled"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2554
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2561
    .end local v5           #intent:Landroid/content/Intent;
    :goto_e
    const/4 v11, 0x2

    iget v12, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v12}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2564
    :cond_12
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v11

    if-nez v11, :cond_13

    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v11, :cond_13

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_13

    .line 2565
    const-string v11, "GpsLocationProvider"

    const-string v12, "got fix, hibernating"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 2568
    :cond_13
    return-void

    .line 2515
    .restart local v9       #size:I
    :catchall_1
    move-exception v11

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v11

    .line 2533
    .end local v9           #size:I
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v11

    .line 2520
    .restart local v9       #size:I
    :cond_14
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    if-ge v4, v9, :cond_e

    .line 2521
    :try_start_c
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2523
    .local v7, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_d
    iget-object v11, v7, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v13, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v11, v13}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    .line 2520
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2524
    :catch_2
    move-exception v2

    .line 2525
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_e
    const-string v11, "GpsLocationProvider"

    const-string v13, "RemoteException in stopNavigating"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2528
    add-int/lit8 v9, v9, -0x1

    goto :goto_10

    .line 2558
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #i:I
    .end local v7           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v9           #size:I
    :cond_15
    const-string v11, "GpsLocationProvider"

    const-string v12, "Fix event comes in no navigating state!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private reportNmea(J)V
    .locals 13
    .parameter "timestamp"

    .prologue
    .line 2938
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 2939
    :try_start_0
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2940
    .local v7, size:I
    if-lez v7, :cond_1

    .line 2942
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v11, v11

    invoke-direct {p0, v9, v11}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v4

    .line 2943
    .local v4, length:I
    new-instance v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v11, 0x0

    invoke-direct {v6, v9, v11, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2946
    .local v6, nmea:Ljava/lang/String;
    sget v9, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v9, :cond_2

    sget-boolean v9, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v9, :cond_2

    .line 2950
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2951
    :try_start_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2953
    .local v8, sizeAllow:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 2954
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2958
    .local v1, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_2
    iget-object v9, v1, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v9, p1, p2, v6}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2953
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2959
    :catch_0
    move-exception v0

    .line 2960
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v9, "GpsLocationProvider"

    const-string v12, "RemoteException in reportNmea"

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2963
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2966
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2988
    .end local v3           #j:I
    .end local v4           #length:I
    .end local v6           #nmea:Ljava/lang/String;
    .end local v8           #sizeAllow:I
    :cond_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2989
    return-void

    .line 2966
    .restart local v4       #length:I
    .restart local v6       #nmea:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9

    .line 2988
    .end local v4           #length:I
    .end local v6           #nmea:Ljava/lang/String;
    .end local v7           #size:I
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 2972
    .restart local v4       #length:I
    .restart local v6       #nmea:Ljava/lang/String;
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v7, :cond_1

    .line 2973
    :try_start_7
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2977
    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_8
    iget-object v9, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v9, p1, p2, v6}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 2972
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2978
    :catch_1
    move-exception v0

    .line 2979
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_9
    const-string v9, "GpsLocationProvider"

    const-string v11, "RemoteException in reportNmea"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2982
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private reportStatus(I)V
    .locals 14
    .parameter "status"

    .prologue
    .line 2574
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportStatus status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 2577
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2579
    .local v9, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    .line 2596
    :goto_0
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v9, v10, :cond_8

    .line 2597
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2600
    .local v6, size:I
    sget v10, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v10, :cond_3

    sget-boolean v10, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v10, :cond_3

    .line 2603
    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    :try_start_1
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2606
    .local v7, sizeAllow:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 2607
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2611
    .local v1, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_2
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_0

    .line 2612
    iget-object v10, v1, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2606
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2581
    .end local v1           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #j:I
    .end local v6           #size:I
    .end local v7           #sizeAllow:I
    :pswitch_0
    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2582
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 2687
    .end local v9           #wasNavigating:Z
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 2585
    .restart local v9       #wasNavigating:Z
    :pswitch_1
    const/4 v10, 0x0

    :try_start_4
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 2588
    :pswitch_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 2591
    :pswitch_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2592
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2614
    .restart local v1       #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #j:I
    .restart local v6       #size:I
    .restart local v7       #sizeAllow:I
    :cond_0
    :try_start_5
    iget-object v10, v1, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 2616
    :catch_0
    move-exception v0

    .line 2617
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v10, "GpsLocationProvider"

    const-string v13, "RemoteException in reportStatus"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2620
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2623
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2649
    .end local v4           #j:I
    .end local v7           #sizeAllow:I
    :cond_2
    :try_start_7
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, i:I
    :goto_3
    if-ltz v2, :cond_6

    .line 2650
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2651
    .local v8, uid:I
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_5

    .line 2652
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v10, v8}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2649
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2623
    .end local v2           #i:I
    .end local v8           #uid:I
    :catchall_1
    move-exception v10

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v10

    .line 2629
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v6, :cond_2

    .line 2630
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2632
    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_a
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_4

    .line 2633
    iget-object v10, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 2629
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2635
    :cond_4
    iget-object v10, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    .line 2637
    :catch_1
    move-exception v0

    .line 2638
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_b
    const-string v10, "GpsLocationProvider"

    const-string v12, "RemoteException in reportStatus"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2641
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 2654
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v8       #uid:I
    :cond_5
    :try_start_c
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v10, v8}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 2657
    .end local v2           #i:I
    .end local v8           #uid:I
    :catch_2
    move-exception v0

    .line 2658
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_d
    const-string v10, "GpsLocationProvider"

    const-string v12, "RemoteException in reportStatus"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v10, :cond_7

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v10, :cond_a

    .line 2663
    :cond_7
    const-string v10, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "enabled"

    iget-boolean v12, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v3, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2667
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2668
    const-string v10, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GPS_ENABLED_CHANGE_ACTION: android.location.GPS_ENABLED_CHANGE EXTRA_GPS_ENABLED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #size:I
    :cond_8
    :goto_7
    const-string v10, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[reportStatus] mNavigating:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mEngineOn:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mDownloadXtraDataPending:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v10, :cond_9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v12, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v10, v12, :cond_9

    .line 2680
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 2681
    const-string v10, "GpsLocationProvider"

    const-string v12, "[reportStatus] trigger DOWNLOAD_XTRA_DATA"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x6

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2687
    :cond_9
    monitor-exit v11

    .line 2688
    return-void

    .line 2674
    .restart local v6       #size:I
    :cond_a
    const-string v10, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no GPS notify, mStarted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mNavigating: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_7

    .line 2579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 21

    .prologue
    .line 2695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 2697
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2698
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2701
    .local v16, size:I
    sget v1, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v1, :cond_3

    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v1, :cond_3

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2705
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2707
    .local v17, sizeAllow:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 2708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2712
    .local v11, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_2
    iget-object v1, v11, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v20, 0x2

    aget v9, v9, v20

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2707
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2715
    :catch_0
    move-exception v10

    .line 2716
    .local v10, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2719
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 2722
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v11           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2741
    .end local v14           #j:I
    .end local v17           #sizeAllow:I
    :cond_1
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2759
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2761
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 2764
    const-string v1, "GpsLocationProvider"

    const-string v3, "[GICON] ----- GPS_FIX_CHANGE_ACTION -----  (false)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2766
    .local v13, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2768
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2770
    .end local v13           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 2722
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 2741
    .end local v16           #size:I
    :catchall_1
    move-exception v1

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 2727
    .restart local v16       #size:I
    :cond_3
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 2728
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2730
    .local v15, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_8
    iget-object v1, v15, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v19, 0x2

    aget v9, v9, v19

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 2727
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2733
    :catch_1
    move-exception v10

    .line 2734
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_9
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2737
    add-int/lit8 v16, v16, -0x1

    goto :goto_3
.end method

.method private requestNetworkLocation(III)V
    .locals 4
    .parameter "type"
    .parameter "interval"
    .parameter "source"

    .prologue
    .line 3054
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNetworkLocation. type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3057
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3058
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3059
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3060
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3061
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3062
    monitor-exit v2

    .line 3063
    return-void

    .line 3062
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestPhoneContext(II)V
    .locals 4
    .parameter "context_type"
    .parameter "request_type"

    .prologue
    .line 2887
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPhoneContext from native layer.context_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2890
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2891
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2892
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2893
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2894
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2895
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2896
    monitor-exit v2

    .line 2897
    return-void

    .line 2896
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 3251
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 3253
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 3254
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 3255
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 3259
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3260
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3261
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 3262
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 3266
    :cond_0
    const/4 v1, 0x2

    .line 3270
    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 3279
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 3268
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 3273
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3277
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 3206
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3208
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 3209
    .local v3, type:I
    const-string v0, ""

    .line 3211
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3212
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 3213
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3231
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 3232
    return-void

    .line 3217
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 3218
    const/4 v3, 0x1

    goto :goto_0

    .line 3221
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3222
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3223
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3227
    move-object v0, v1

    .line 3228
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 4

    .prologue
    .line 3240
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 3242
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 3243
    monitor-exit v1

    .line 3244
    return-void

    .line 3243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 4
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 3283
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3284
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 3285
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3286
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3287
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3288
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3289
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3290
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3291
    monitor-exit v2

    .line 3292
    return-void

    .line 3291
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 3
    .parameter "capabilities"

    .prologue
    .line 3039
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEngineCapabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 3043
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 3044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 3045
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 3048
    :cond_0
    return-void
.end method

.method private startNavigating(Z)V
    .locals 13
    .parameter "singleShot"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 2234
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    if-eqz v0, :cond_1

    .line 2235
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 2236
    const-string v0, "GpsLocationProvider"

    const-string v1, "mECMState is TRUE ==> do nothing "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    if-eqz v0, :cond_2

    .line 2242
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: Skip request due to Quick boot power off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2247
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_e

    .line 2248
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 2250
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 2251
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 2263
    const/4 v6, 0x1

    .line 2270
    .local v6, enableAgps:Z
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    if-eqz v0, :cond_8

    .line 2271
    const/4 v6, 0x0

    .line 2272
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGPS status: ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "], dsable APGS due to Roaming"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_3
    :goto_1
    if-eqz v6, :cond_9

    .line 2279
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultGpsPositionMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 2285
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 2286
    .local v9, tm:Landroid/telephony/TelephonyManager;
    const/16 v4, 0x32

    .line 2290
    .local v4, accuracy:I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v12, :cond_a

    .line 2291
    const/16 v8, 0x3e80

    .line 2292
    .local v8, timeout_standalone:I
    const/16 v7, 0x3e80

    .line 2297
    .local v7, timeout_agps:I
    :goto_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    if-lez v0, :cond_4

    .line 2298
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    .line 2300
    :cond_4
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    if-lez v0, :cond_5

    .line 2301
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    mul-int/lit16 v8, v0, 0x3e8

    .line 2303
    :cond_5
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    if-lez v0, :cond_6

    .line 2304
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    mul-int/lit16 v7, v0, 0x3e8

    .line 2307
    :cond_6
    invoke-direct {p0, v8, v7}, Lcom/android/server/location/GpsLocationProvider;->native_set_qos_time_out(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2309
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_qos_time_out failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_7
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: set_agps_qos_time_out complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-direct {p0, v10}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 2317
    .local v3, interval:I
    :goto_4
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2318
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2320
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 2321
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2273
    .end local v3           #interval:I
    .end local v4           #accuracy:I
    .end local v7           #timeout_agps:I
    .end local v8           #timeout_standalone:I
    .end local v9           #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    if-eqz v0, :cond_3

    .line 2274
    const/4 v6, 0x0

    goto :goto_1

    .line 2282
    :cond_9
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_2

    .line 2294
    .restart local v4       #accuracy:I
    .restart local v9       #tm:Landroid/telephony/TelephonyManager;
    :cond_a
    const v8, 0xea60

    .line 2295
    .restart local v8       #timeout_standalone:I
    const v7, 0x15ba8

    .restart local v7       #timeout_agps:I
    goto :goto_3

    .line 2315
    :cond_b
    const/16 v3, 0x3e8

    goto :goto_4

    .line 2326
    .restart local v3       #interval:I
    :cond_c
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: set_position_mode (complete)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2328
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 2329
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2332
    :cond_d
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: native_start (complete)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-direct {p0, v10, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 2337
    invoke-direct {p0, v10}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2340
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v10, 0xea60

    add-long/2addr v1, v10

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2348
    .end local v3           #interval:I
    .end local v4           #accuracy:I
    .end local v6           #enableAgps:Z
    .end local v7           #timeout_agps:I
    .end local v8           #timeout_standalone:I
    .end local v9           #tm:Landroid/telephony/TelephonyManager;
    :cond_e
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(XXX) startNavigating : mStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mECMStateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2353
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    if-eqz v0, :cond_0

    .line 2356
    const-string v0, "GpsLocationProvider"

    const-string v1, "mECMStateUpdate is TRUE ==> stop GPS "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 2360
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 2361
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 2362
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 2363
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 2364
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2365
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2366
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2369
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2371
    :cond_1
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1591
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1592
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1593
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1594
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1597
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 3068
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 3070
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1981
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    if-eqz v1, :cond_0

    .line 1983
    const-string v1, "GpsLocationProvider"

    const-string v2, "addListener: Skip request due to Quick boot power off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :goto_0
    return-void

    .line 1987
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1988
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1989
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1990
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1991
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1992
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1993
    monitor-exit v2

    goto :goto_0

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1553
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1554
    monitor-exit v1

    .line 1555
    return-void

    .line 1554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1461
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1462
    monitor-exit v1

    .line 1463
    return-void

    .line 1462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1609
    if-eqz p1, :cond_0

    .line 1611
    const/16 v0, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1618
    :goto_0
    monitor-exit v1

    .line 1619
    return-void

    .line 1615
    :cond_0
    const/16 v0, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 1618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 1451
    const/4 v0, 0x1

    return v0
.end method

.method public getCapability()I
    .locals 1

    .prologue
    .line 1587
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1955
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1130
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1581
    if-eqz p1, :cond_0

    .line 1582
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1584
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1600
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1577
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 1441
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 2023
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2024
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 2025
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2026
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2027
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2028
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2029
    monitor-exit v2

    .line 2030
    return-void

    .line 2029
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 3129
    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: entered"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notificationId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", niType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", notifyFlags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", defaultResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestorId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", requestorIdEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", extras: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v8, :cond_0

    .line 3145
    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: Calling disable MRTT by requestSetMultiRABTrafficThrottling(3 , 1) "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    const-string v8, "htctelephony"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v6

    .line 3147
    .local v6, ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v6, :cond_0

    .line 3149
    const/4 v8, 0x3

    const/4 v9, 0x1

    :try_start_0
    invoke-interface {v6, v8, v9}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    .end local v6           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_0
    :goto_0
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 3160
    .local v7, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 3161
    iput p2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 3162
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 3163
    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 3164
    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 3165
    iput p4, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 3166
    move/from16 v0, p5

    iput v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 3167
    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 3168
    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 3169
    move/from16 v0, p8

    iput v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 3170
    move/from16 v0, p9

    iput v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 3174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3176
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_1

    const-string p10, ""

    .line 3177
    :cond_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 3181
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_1
    new-instance v8, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3189
    :goto_4
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3191
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3150
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .restart local v6       #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :catch_0
    move-exception v2

    .line 3152
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3162
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v6           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    .restart local v7       #notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 3163
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 3164
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 3184
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_1
    move-exception v2

    .line 3186
    .local v2, e:Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3194
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    iput-object v1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 3196
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 3197
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 4

    .prologue
    .line 1641
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_0

    .line 1643
    const/4 v1, 0x0

    .line 1650
    :goto_0
    return v1

    .line 1645
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1647
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1648
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1649
    monitor-exit v2

    .line 1650
    const/4 v1, 0x1

    goto :goto_0

    .line 1649
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 1384
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2060
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2061
    .local v0, identity:J
    const/4 v3, 0x0

    .line 2063
    .local v3, result:Z
    const-string v4, "GpsLocationProvider"

    const-string v5, "sendExtraCommand ++"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string v4, "delete_aiding_data"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2066
    const-string v4, "GpsLocationProvider"

    const-string v5, "sendExtraCommand: delete_aiding_data"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v3

    .line 2187
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    return v3

    .line 2068
    :cond_1
    const-string v4, "force_time_injection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2069
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {p0, v4, v7, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2070
    const/4 v3, 0x1

    goto :goto_0

    .line 2071
    :cond_2
    const-string v4, "force_xtra_injection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2072
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v4, :cond_0

    .line 2073
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 2074
    const/4 v3, 0x1

    goto :goto_0

    .line 2077
    :cond_3
    const-string v4, "set_privacy_lock"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2081
    const-string v4, "enable_lock"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2082
    .local v2, mPrivacySetting:I
    if-ne v2, v8, :cond_5

    .line 2083
    sput-boolean v7, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    .line 2084
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting = false "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :goto_1
    const-string v4, "CDMA"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2096
    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v4, :cond_8

    .line 2098
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v4, :cond_7

    .line 2102
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: (mHTCPrivacySetting = false) and (mHtcAllowAPCount > 0)  SKIP to Lock NV#452 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 2120
    goto :goto_0

    .line 2086
    :cond_5
    if-nez v2, :cond_6

    .line 2087
    sput-boolean v8, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    .line 2088
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting = true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2091
    :cond_6
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting => Incorrect value !!!   <FAIL>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2106
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    goto :goto_2

    .line 2111
    :cond_8
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    goto :goto_2

    .line 2120
    .end local v2           #mPrivacySetting:I
    :cond_9
    const-string v4, "disable_xtra_download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2121
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendExtraCommand: disable_xtra_download mDownloadXtraDataPending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    .line 2123
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2124
    :cond_a
    const-string v4, "enable_xtra_download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2125
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendExtraCommand: enable_xtra_download mDownloadXtraDataPending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    .line 2127
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v5, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v4, v5, :cond_b

    .line 2128
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2129
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2131
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2133
    :cond_c
    const-string v4, "disable_backdoor_gps_request"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2134
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 2135
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LPS] sendExtraCommand: disable_backdoor_gps_request.  --->(XXXXX)  , mHtcAllowAPCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-gez v4, :cond_d

    .line 2138
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: disable_backdoor_gps_request , mHtcAllowAPCount already < 0 ...... (CHECK) !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    sput v7, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 2143
    :cond_d
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    const-string v5, "CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v4, :cond_e

    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-nez v4, :cond_e

    .line 2145
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: disable_backdoor_gps_request , No mHtcAllowAP & mHTCPrivacySetting is disable ==>  Lock NV#452"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    .line 2149
    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2150
    :cond_f
    const-string v4, "enable_backdoor_gps_request"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2151
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 2152
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LPS] sendExtraCommand: enable_backdoor_gps_request.   --->(OOOOO)  , mHtcAllowAPCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    const-string v5, "CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v4, :cond_10

    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v4, :cond_10

    .line 2157
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: enable_backdoor_gps_request , Have mHtcAllowAP & mHTCPrivacySetting is disable ==> Un-Lock NV#452"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    .line 2161
    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2162
    :cond_11
    const-string v4, "disable_backdoor_gps_listener"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2164
    sput-boolean v7, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    .line 2165
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2166
    :cond_12
    const-string v4, "enable_backdoor_gps_listener"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2168
    sput-boolean v8, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    .line 2169
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2172
    :cond_13
    const-string v4, "enable_agps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2174
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    .line 2175
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2176
    :cond_14
    const-string v4, "disable_agps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2178
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    .line 2179
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2183
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2184
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 6
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1660
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1663
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1665
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    const-string v0, "GpsLocationProvider"

    const-string v1, "setMinTime: mStarted is TRUE && hasCapability is OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1669
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(*)setMinTime: mStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x1

    return v0
.end method

.method public updateBatteryStatus(Z)Z
    .locals 5
    .parameter "isBatteryCharging"

    .prologue
    .line 1939
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBatteryStatus invoked from LMS and setting values. isBatteryCharging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3

    .line 1942
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1943
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1944
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1945
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1946
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "batteryCharging"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1947
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1948
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1949
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1950
    monitor-exit v3

    .line 1951
    const/4 v2, 0x1

    return v2

    .line 1950
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateCriteria(IJFZLandroid/location/Criteria;)Z
    .locals 9
    .parameter "action"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "criteria"

    .prologue
    const/4 v6, 0x0

    .line 1681
    const/4 v8, 0x0

    .line 1682
    .local v8, return_value:Z
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCriteria with minTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minDistance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " singleShot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    if-eqz p6, :cond_0

    .line 1687
    invoke-virtual {p6}, Landroid/location/Criteria;->getHorizontalAccuracy()I

    move-result v6

    invoke-virtual {p6}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IJFZII)Z

    move-result v8

    .line 1695
    :goto_0
    return v8

    :cond_0
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v7, v6

    .line 1693
    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IJFZII)Z

    move-result v8

    goto :goto_0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 1354
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1355
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 1142
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1143
    return-void
.end method

.method public updateSettings(ZZZZ)Z
    .locals 5
    .parameter "gpsSetting"
    .parameter "networkProvSetting"
    .parameter "wifiSetting"
    .parameter "agpsSetting"

    .prologue
    .line 1919
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSettings invoked from LMS and setting values. Gps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GNP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WiFi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Agps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3

    .line 1923
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1924
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1925
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1926
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1927
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "gpsSetting"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1928
    const-string v2, "networkProvSetting"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1929
    const-string v2, "wifiSetting"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1930
    const-string v2, "agpsSetting"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1931
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1932
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1933
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1934
    monitor-exit v3

    .line 1935
    const/4 v2, 0x1

    return v2

    .line 1934
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
