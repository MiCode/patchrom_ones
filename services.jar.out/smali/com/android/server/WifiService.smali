.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$16;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final ACTION_DHCP_LEASE_RENEW:Ljava/lang/String; = "com.android.server.WifiManager.action.DHCP_LEASE_RENEW"

.field private static final ACTION_UPDATE_WIFI_STATE:Ljava/lang/String; = "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

.field private static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field private static final ACTION_WIRELESS_SLEEP_TIME_END:Ljava/lang/String; = "com.android.server.WifiManager.action.SLEEP_TIME_END"

.field private static final ACTION_WIRELESS_SLEEP_TIME_START:Ljava/lang/String; = "com.android.server.WifiManager.action.SLEEP_TIME_START"

.field private static final AP_MODE:I = 0x1

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final DBG:Z = true

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DRIVER_PHONE_CALL_COME:I = 0x1

.field private static final DRIVER_PHONE_CALL_END:I = 0x0

.field private static final DRIVER_POWER_MODE_BROWSER_ACTIVE:I = 0xb

.field private static final DRIVER_POWER_MODE_BROWSER_AUTO:I = 0xa

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_START:I = 0x1f

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_STOP:I = 0x1e

.field private static final DRIVER_POWER_MODE_WIFILOCK_ACQUIRE:I = 0x58

.field private static final DRIVER_POWER_MODE_WIFILOCK_RELEASE:I = 0x57

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x4020013

.field private static final IDLE_REQUEST:I = 0x0

.field private static final KINETO_GANLITE_INTENT_ACTION:Ljava/lang/String; = "com.android.kineto.GanState"

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final STA_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final UPDATE_STATE_REQUEST:I = 0x1

.field private static final WIFI_AP_IDLE:Ljava/lang/String; = "com.android.server.HotspotManager.action.DEVICE_IDLE"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static mWimaxConnected:Z


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private mAutoEnableWifiApInDockMode:Z

.field private mAutoEnableWifiInDockMode:Z

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mChannelSwitchWorkAround:Z

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mEmergencyCallbackMode:Z

.field private mEmergencyModeChanged:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMHS:Z

.field private mEnableMdnPassword:Z

.field private mEnableMhsFeature:Z

.field private mEnableTrafficStatsPoll:Z

.field private mEnablingWifiInterrupted:Z

.field private mForbiddenByExchangePolicy:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mHTCWirelessInSleepTime:Z

.field private mHTCWirelessSleepEndTimeMillis:J

.field private mHTCWirelessSleepEndToStartMillis:J

.field private mHTCWirelessSleepModeEnabled:Z

.field private mHTCWirelessSleepStartTimeMillis:J

.field private mHTCWirelessSleepStartToEndMillis:J

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIfWiFiHotspotRegBastReceiver:Z

.field private mIfWiFiRegBastReceiver:Z

.field private mInDockMode:Z

.field private mInterfaceName:Ljava/lang/String;

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mPersistMHS:Z

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPluggedType:I

.field private mPreEmergencyModeChanged:Z

.field private mPreviousWFDState:Z

.field private mProcessingMHS:Z

.field private mQuickBootPowerOffIntentReceived:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxPkts:J

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScreenOff:Z

.field private mScreenOffSaved:Z

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J

.field private mUidMHS:I

.field private mUpdateStateIntent:Landroid/app/PendingIntent;

.field private mVzwWifiStatusFeature:Z

.field private mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiApMhsPermission:Z

.field private mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnabled:Z

.field private mWifiEnabledByDock:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private msenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiService;->mWimaxConnected:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0xa8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 604
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 135
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    .line 138
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mPreviousWFDState:Z

    .line 141
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    .line 142
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    .line 143
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    .line 150
    new-instance v5, Lcom/android/server/WifiService$LockList;

    invoke-direct {v5, p0, v10}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 169
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    .line 170
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mHTCWirelessInSleepTime:Z

    .line 173
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    .line 177
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    .line 185
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 186
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 187
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    .line 188
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    .line 192
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 195
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 228
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mChannelSwitchWorkAround:Z

    .line 247
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 249
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WifiService;->msenseVersion:F

    .line 251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 258
    iput-object v10, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 259
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    .line 260
    iput v8, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    .line 298
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 300
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 305
    new-instance v5, Landroid/net/NetworkInfo;

    const-string v6, "WIFI"

    const-string v7, ""

    invoke-direct {v5, v9, v8, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 360
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    .line 361
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    .line 362
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mPersistMHS:Z

    .line 363
    iput v12, p0, Lcom/android/server/WifiService;->mUidMHS:I

    .line 364
    iput-object v10, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 365
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 366
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 367
    iput v12, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    .line 378
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    .line 381
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    .line 382
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    .line 383
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    .line 387
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    .line 601
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 2052
    new-instance v5, Lcom/android/server/WifiService$14;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$14;-><init>(Lcom/android/server/WifiService;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 2077
    new-instance v5, Lcom/android/server/WifiService$15;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$15;-><init>(Lcom/android/server/WifiService;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 605
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 607
    const-string v5, "wifi.interface"

    const-string v6, "wlan0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 609
    new-instance v5, Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 610
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 611
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 613
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 614
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 615
    .local v1, idleIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 617
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-direct {v3, v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 618
    .local v3, updateStateIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mUpdateStateIntent:Landroid/app/PendingIntent;

    .line 627
    :try_start_0
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/WifiService;->msenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v5, v11, :cond_1

    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 632
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    .line 633
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9b

    if-eq v5, v6, :cond_3

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x40

    if-ne v5, v6, :cond_9

    .line 638
    :cond_3
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    .line 639
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    .line 644
    :cond_4
    :goto_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v11, :cond_5

    .line 645
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    .line 648
    :cond_5
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$1;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 690
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 691
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$2;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 737
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$3;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.QUICKBOOT_POWERON"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 767
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$4;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 803
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$5;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.kineto.GanState"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 848
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$6;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$7;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$8;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$8;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 896
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    if-eqz v5, :cond_a

    .line 897
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$9;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$9;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 935
    :cond_7
    :goto_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v11, :cond_c

    iget v5, p0, Lcom/android/server/WifiService;->msenseVersion:F

    const/high16 v6, 0x4040

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    .line 936
    const-string v5, "WifiService"

    const-string v6, "DockWifi - Add ACTION_DOCK_EVENT (wifi) receiver"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$11;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$11;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 979
    :goto_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v5, :cond_8

    .line 980
    const-string v5, "WifiService"

    const-string v6, "AKA: HTC_EAP_AKA_flag is true"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$13;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$13;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1000
    :cond_8
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "WifiService"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v4, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1002
    new-instance v5, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    .line 1003
    new-instance v5, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    .line 1006
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_networks_available_repeat_delay"

    const/16 v7, 0x384

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 1008
    new-instance v5, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    .line 1009
    iget-object v5, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v5}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    .line 1011
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    .line 1013
    return-void

    .line 640
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v4           #wifiThread:Landroid/os/HandlerThread;
    :cond_9
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v11, :cond_4

    .line 641
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    goto/16 :goto_1

    .line 911
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_a
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    if-eqz v5, :cond_7

    .line 913
    :cond_b
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$10;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$10;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SERVICE_STATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 957
    :cond_c
    iget v5, p0, Lcom/android/server/WifiService;->msenseVersion:F

    const/high16 v6, 0x4000

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d

    .line 958
    const-string v5, "WifiService"

    const-string v6, "DockWifi - Add ACTION_DOCK_EVENT (hotspot) receiver"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$12;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$12;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 976
    :cond_d
    const-string v5, "WifiService"

    const-string v6, "DockWifi - NOT add ACTION_DOCK_EVENT receiver"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 628
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->checkHtcCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mPreviousWFDState:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mPreviousWFDState:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiApEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$408(Lcom/android/server/WifiService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOn()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOff()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/WifiService;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$6702(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 2714
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$6200(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 2718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2720
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2721
    iget v3, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 2736
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2738
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2739
    const/4 v3, 0x1

    .line 2743
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2741
    return v3

    .line 2723
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 2726
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2743
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2730
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private actionScreenOff()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1238
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_idle_ms"

    const-wide/32 v5, 0xdbba0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1241
    .local v0, idleMillis:J
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1246
    .local v2, stayAwakeConditions:I
    const-string v3, "WifiService"

    const-string v4, "ACTION_SCREEN_OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    .line 1249
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    .line 1250
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1251
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    if-eqz v3, :cond_0

    .line 1252
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1255
    :cond_0
    const-string v3, "WifiService"

    const-string v4, "set screen off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiStateMachine;->setScreenOn(Z)V

    .line 1264
    iget v3, p0, Lcom/android/server/WifiService;->mPluggedType:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1266
    iget-object v3, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 1267
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v3, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1279
    :cond_1
    :goto_0
    return-void

    .line 1273
    :cond_2
    const-string v3, "WifiService"

    const-string v4, "setting ACTION_DEVICE_IDLE: 120000 ms"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v3, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private actionScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1220
    const-string v0, "WifiService"

    const-string v1, "ACTION_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1223
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    .line 1224
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    .line 1225
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1226
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1230
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "set screen on to supplicant"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->setScreenOn(Z)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 1234
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    .line 1235
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 3695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3696
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3697
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3699
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3701
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 3700
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private checkAndSetNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3037
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    if-eqz v5, :cond_1

    .line 3079
    :cond_0
    :goto_0
    return-void

    .line 3041
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v5, :cond_0

    .line 3043
    iget-object v5, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 3044
    .local v4, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_5

    .line 3047
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v3

    .line 3048
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_5

    .line 3049
    const/4 v1, 0x0

    .line 3050
    .local v1, numOpenNetworks:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 3051
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 3055
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[ESS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3057
    add-int/lit8 v1, v1, 0x1

    .line 3050
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3061
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-lez v1, :cond_5

    .line 3062
    iget v5, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 3070
    const/4 v5, 0x1

    invoke-direct {p0, v5, v1, v7, v7}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 3078
    .end local v0           #i:I
    .end local v1           #numOpenNetworks:I
    .end local v3           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    invoke-direct {p0, v7, v7, v7, v7}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method private declared-synchronized checkAndUnregisterReceiver(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 1282
    monitor-enter p0

    if-ne p1, v0, :cond_2

    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-eqz v0, :cond_1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1287
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiService;->mWimaxConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1289
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1296
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1297
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1299
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-eqz v0, :cond_3

    .line 1300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1301
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiService;->mWimaxConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1306
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1307
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1309
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v0, :cond_5

    .line 1310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1313
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1314
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiService;->mWimaxConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkHtcCustomization(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 3635
    const-string v1, "content://customization_settings/SettingTable/application_Wifihotspot"

    .line 3637
    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/WifiService;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3638
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    if-eqz v0, :cond_0

    .line 3640
    invoke-direct {p0, v0, p1}, Lcom/android/server/WifiService;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 3642
    :cond_0
    return-void
.end method

.method private checkScreenOffSavedAndDoCommand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1209
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-ne v0, v1, :cond_1

    .line 1210
    const-string v0, "WifiService"

    const-string v1, "checkScreenOffSavedAndDoCommand screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOn()V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v0, :cond_0

    .line 1213
    const-string v0, "WifiService"

    const-string v1, "checkScreenOffSavedAndDoCommand screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOff()V

    goto :goto_0
.end method

.method private checkWifiApRemindDialog()Z
    .locals 9

    .prologue
    const/16 v8, 0xa8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3782
    const/4 v2, -0x1

    .line 3783
    .local v2, showDialog:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_0

    .line 3785
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_power_mode_remind"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 3786
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWifiApRemindDialog flag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3793
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_1

    .line 3795
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.hotspot.SetupPowerMode"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3796
    .local v1, newIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3797
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3820
    .end local v1           #newIntent:Landroid/content/Intent;
    :goto_1
    return v3

    .line 3787
    :catch_0
    move-exception v0

    .line 3788
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .line 3789
    const-string v5, "WifiService"

    const-string v6, "checkWifiApRemindDialog exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3798
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 3799
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWifiApRemindDialog startActivity exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3803
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v5, :cond_2

    .line 3804
    const-string v4, "WifiService"

    const-string v5, "MHS permission is not allowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3807
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 3808
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    if-eqz v3, :cond_4

    .line 3809
    const-string v3, "WifiService"

    const-string v5, "[setWifiApEnabledMhsRequest] enable AP  "

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v3, :cond_3

    .line 3811
    invoke-direct {p0, v4}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 3812
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 3813
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 3818
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    move v3, v4

    .line 3820
    goto :goto_1

    .line 3816
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    goto :goto_2
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x0

    .line 2989
    iget-object v1, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v1, :cond_0

    .line 2990
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2996
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2997
    return-void

    .line 2993
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 3645
    const/4 v1, 0x0

    .line 3646
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3691
    :cond_0
    :goto_0
    return-object v2

    .line 3649
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3651
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3652
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 3653
    const-string v0, "WifiService"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3656
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 3657
    const-string v0, "WifiService"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3659
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3661
    :cond_3
    const/4 v7, 0x0

    .line 3662
    goto :goto_0

    .line 3664
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3665
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 3666
    const-string v0, "WifiService"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3668
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3670
    :cond_5
    const/4 v7, 0x0

    .line 3671
    goto :goto_0

    .line 3673
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3674
    const/4 v8, 0x0

    .line 3675
    .local v8, data:[B
    const/4 v6, 0x0

    .line 3678
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 3679
    invoke-direct {p0, v8}, Lcom/android/server/WifiService;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3684
    if-eqz v7, :cond_8

    .line 3685
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3688
    :cond_7
    :goto_1
    const/4 v7, 0x0

    :cond_8
    move-object v2, v6

    .line 3691
    goto :goto_0

    .line 3680
    :catch_0
    move-exception v9

    .line 3681
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3682
    const/4 v6, 0x0

    .line 3684
    if-eqz v7, :cond_8

    .line 3685
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3684
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 3685
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3688
    :cond_9
    const/4 v7, 0x0

    .line 3684
    :cond_a
    throw v0
.end method

.method private getPersistedDockWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1129
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1131
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "dock_hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1135
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1131
    goto :goto_0

    .line 1132
    :catch_0
    move-exception v1

    .line 1133
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "dock_hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1134
    const-string v2, "WifiService"

    const-string v4, "DockWifi- set DOCK_HOTSPOT_ON to 0 in getPersistedDockWifiApEnabled"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1135
    goto :goto_0
.end method

.method private getPersistedDockWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1148
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1150
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "dock_wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1154
    :goto_0
    return v2

    .line 1150
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v1

    .line 1152
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "dock_wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1153
    const-string v3, "WifiService"

    const-string v4, "DockWifi- set DOCK_WIFI_ON to 1 in getPersistedDockWifiEnabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPersistedWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1087
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1089
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1092
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1089
    goto :goto_0

    .line 1090
    :catch_0
    move-exception v1

    .line 1091
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 1092
    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1062
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1064
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1067
    :goto_0
    return v2

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x0

    .line 3597
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3599
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "htc_wireless_sleep_mode_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3605
    :goto_0
    :try_start_1
    const-string v2, "htc_wireless_sleep_start_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3611
    :goto_1
    :try_start_2
    const-string v2, "htc_wireless_sleep_end_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3617
    :goto_2
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessSleep- get variables from db: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3622
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    .line 3624
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    .line 3631
    :goto_3
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessSleep- start->end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end->start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    return-void

    .line 3600
    :catch_0
    move-exception v1

    .line 3601
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    .line 3602
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepModeEnabled default value: true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3606
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 3607
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    .line 3608
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepStartTimeMillis default value: 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3612
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v1

    .line 3613
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    .line 3614
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepEndTimeMillis default value: 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3627
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    .line 3629
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    goto :goto_3
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2530
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 2511
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 2518
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2520
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExchangePolicyEnabled()Z
    .locals 2

    .prologue
    .line 1386
    const/4 v0, 0x0

    .line 1388
    .local v0, senseVersion:F
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1391
    :goto_0
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1389
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2690
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2699
    :goto_0
    return-void

    .line 2693
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2696
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2702
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2711
    :goto_0
    return-void

    .line 2705
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2708
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDataActivity()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 3009
    iget-wide v5, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .local v5, preTxPkts:J
    iget-wide v3, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 3010
    .local v3, preRxPkts:J
    const/4 v1, 0x0

    .line 3012
    .local v1, dataActivity:I
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .line 3013
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 3015
    cmp-long v11, v5, v13

    if-gtz v11, :cond_0

    cmp-long v11, v3, v13

    if-lez v11, :cond_3

    .line 3016
    :cond_0
    iget-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    sub-long v9, v11, v5

    .line 3017
    .local v9, sent:J
    iget-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    sub-long v7, v11, v3

    .line 3018
    .local v7, received:J
    cmp-long v11, v9, v13

    if-lez v11, :cond_1

    .line 3019
    or-int/lit8 v1, v1, 0x2

    .line 3021
    :cond_1
    cmp-long v11, v7, v13

    if-lez v11, :cond_2

    .line 3022
    or-int/lit8 v1, v1, 0x1

    .line 3025
    :cond_2
    iget v11, p0, Lcom/android/server/WifiService;->mDataActivity:I

    if-eq v1, v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v11, :cond_3

    .line 3026
    iput v1, p0, Lcom/android/server/WifiService;->mDataActivity:I

    .line 3027
    iget-object v11, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3028
    .local v0, client:Lcom/android/internal/util/AsyncChannel;
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/WifiService;->mDataActivity:I

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 3032
    .end local v0           #client:Lcom/android/internal/util/AsyncChannel;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_3
    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 10
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 3705
    const-string v7, "usermanagement"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3706
    .local v6, usermanagementList:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 3708
    const-string v3, "plenty_set1"

    .line 3709
    .local v3, key_plenty:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 3711
    .local v5, usermanagement:Landroid/os/Bundle;
    const-string v1, "max_connection"

    .line 3712
    .local v1, KEY_MAX_CONNECTION:Ljava/lang/String;
    const-string v0, "connection_array"

    .line 3714
    .local v0, KEY_CONNECTION_ARRAY:Ljava/lang/String;
    const-string v4, "0"

    .line 3715
    .local v4, max_connection:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3716
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3717
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get max_connection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_max_connection"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3720
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 3725
    :goto_0
    const-string v2, "0"

    .line 3726
    .local v2, connection_array:Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3727
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3728
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get connection_array:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_connection_array"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3731
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 3736
    .end local v0           #KEY_CONNECTION_ARRAY:Ljava/lang/String;
    .end local v1           #KEY_MAX_CONNECTION:Ljava/lang/String;
    .end local v2           #connection_array:Ljava/lang/String;
    .end local v3           #key_plenty:Ljava/lang/String;
    .end local v4           #max_connection:Ljava/lang/String;
    .end local v5           #usermanagement:Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 3722
    .restart local v0       #KEY_CONNECTION_ARRAY:Ljava/lang/String;
    .restart local v1       #KEY_MAX_CONNECTION:Ljava/lang/String;
    .restart local v3       #key_plenty:Ljava/lang/String;
    .restart local v4       #max_connection:Ljava/lang/String;
    .restart local v5       #usermanagement:Landroid/os/Bundle;
    :cond_1
    const-string v7, "WifiService"

    const-string v8, "Can\'t get max_connection"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3733
    .restart local v2       #connection_array:Ljava/lang/String;
    :cond_2
    const-string v7, "WifiService"

    const-string v8, "Can\'t get connection_array"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private persistDockWifiApEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1141
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1144
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "dock_hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1145
    return-void

    .line 1142
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1144
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistDockWifiEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1159
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1162
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "dock_wifi_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1163
    return-void

    .line 1160
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1162
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistWifiAPEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1123
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "hotspot_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1124
    return-void

    .line 1123
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistWifiState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1098
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1099
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1100
    .local v0, airplane:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 1101
    if-eqz v0, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1104
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1116
    :goto_1
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1117
    return-void

    .end local v0           #airplane:Z
    :cond_0
    move v0, v3

    .line 1099
    goto :goto_0

    .line 1107
    .restart local v0       #airplane:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1110
    :cond_2
    if-eqz v0, :cond_3

    .line 1111
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1113
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private registerForBroadcasts(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 2477
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2478
    .local v0, intentFilter:Landroid/content/IntentFilter;
    if-nez p1, :cond_1

    .line 2479
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2480
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2481
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2482
    const-string v1, "android.intent.action.WIFIACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2483
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2484
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2485
    const-string v1, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2486
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2487
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2488
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2505
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2506
    return-void

    .line 2497
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2498
    const-string v1, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2499
    const-string v1, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2500
    const-string v1, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2501
    const-string v1, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2502
    const-string v1, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 2784
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$6400(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 2786
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 2790
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2792
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 2793
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2794
    iget v4, v3, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 2808
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2812
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2815
    return v0

    .line 2788
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2796
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 2810
    :catch_0
    move-exception v4

    goto :goto_2

    .line 2799
    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2812
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2802
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 2943
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2945
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 2946
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 2948
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2951
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 2952
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 2953
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 2955
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    .line 2956
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2957
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 2963
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    .line 2966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2968
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2973
    return-void

    .line 2971
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2969
    :catch_0
    move-exception v2

    .line 2971
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private declared-synchronized reportStartWorkSource()V
    .locals 3

    .prologue
    .line 2277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2278
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 2279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$5200(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2280
    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$5200(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2283
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    monitor-exit p0

    return-void

    .line 2277
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3086
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 3087
    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    .line 3088
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    .line 3089
    return-void
.end method

.method private sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "uid"

    .prologue
    .line 3001
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3004
    return-void

    .line 3001
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .locals 5
    .parameter "deviceIdle"

    .prologue
    .line 2266
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    .line 2267
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2272
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/WifiService;->mUpdateStateIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2274
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 9
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const/4 v8, 0x0

    const v7, 0x4020013

    .line 3110
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 3114
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3118
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 3121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 3125
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 3127
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    .line 3128
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 3129
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 3130
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 3131
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3135
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3137
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3139
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3140
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 3144
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3149
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto :goto_0

    .line 3146
    :cond_3
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private setParameterMHS(ZZILandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    .line 3826
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    .line 3827
    iput-boolean p2, p0, Lcom/android/server/WifiService;->mPersistMHS:Z

    .line 3828
    iput p3, p0, Lcom/android/server/WifiService;->mUidMHS:I

    .line 3829
    iput-object p4, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 3830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 3831
    return-void
.end method

.method private setWifiApEnableInDockMode(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3297
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3298
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 3301
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode return due to hotspot already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :goto_0
    return-void

    .line 3304
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 3305
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 3306
    .local v0, WifiState:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3307
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode turn off Wifi then enable hotspot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 3311
    .end local v0           #WifiState:I
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method

.method private setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "enable"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    .line 3744
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/WifiService;->setWifiApMhsRequest(ZZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private setWifiApMhsRequest(ZZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3749
    const-string v0, "WifiService"

    const-string v3, "setWifiApMhsRequest enter"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 3751
    const-string v0, "WifiService"

    const-string v2, "MHS is processing"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3778
    :goto_0
    return v0

    .line 3754
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 3755
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 3756
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 3757
    invoke-virtual {p0, v5, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    move v0, v2

    .line 3758
    goto :goto_0

    .line 3761
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WifiService;->setParameterMHS(ZZILandroid/net/wifi/WifiConfiguration;)V

    .line 3762
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 3763
    iget-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v3, -0x13

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    .line 3764
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    if-nez v0, :cond_3

    .line 3765
    const-string v0, "WifiService"

    const-string v3, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 3767
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 3768
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z

    :cond_2
    :goto_1
    move v0, v2

    .line 3778
    goto :goto_0

    .line 3769
    :cond_3
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    if-ne v0, v2, :cond_4

    .line 3770
    const-string v0, "WifiService"

    const-string v3, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 3772
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    goto :goto_1

    .line 3773
    :cond_4
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 3774
    const-string v0, "WifiService"

    const-string v2, "MHS HTC_PERMITTED_TETHER_PROGRASSING"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    move v0, v1

    .line 3776
    goto :goto_0
.end method

.method private setWifiEnableInDockMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3316
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3317
    if-ne p1, v3, :cond_4

    .line 3318
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3319
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :goto_0
    return-void

    .line 3322
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    .line 3323
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 3324
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode turn off hotspot then enable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3327
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 3330
    :cond_4
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 3331
    :cond_5
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    goto :goto_0

    .line 3335
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    if-eqz v1, :cond_9

    .line 3336
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 3337
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_8

    .line 3340
    :cond_7
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 3348
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    goto/16 :goto_0

    .line 3343
    .restart local v0       #suppState:Landroid/net/wifi/SupplicantState;
    :cond_8
    const-string v1, "WifiService"

    const-string v2, "DockWifi - We don\'t turn off wifi due to Wifi is connecting or connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3346
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :cond_9
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - We don\'t turn off wifi due to mWifiEnabledByDock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2262
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiBeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1073
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    if-eqz v2, :cond_1

    .line 1074
    const-string v0, "WifiService"

    const-string v2, "shouldWifiBeEnabled(): ForbiddenByExchangePolicy"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1081
    :cond_0
    :goto_0
    return v0

    .line 1078
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1079
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2219
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2226
    .local v0, wifiSleepPolicy:I
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2228
    const-string v2, "WifiService"

    const-string v3, "shouldWifiStayAwake: return true due to apsta concurrent"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_0
    :goto_0
    return v1

    .line 2234
    :cond_1
    if-eq v0, v4, :cond_0

    .line 2237
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 2243
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1049
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1050
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1052
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1053
    if-ne v1, v2, :cond_0

    .line 1054
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1055
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/16 v11, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2289
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    if-eqz v8, :cond_1

    .line 2290
    const-string v6, "WifiService"

    const-string v7, "updateWifiState(): mQuickBootPowerOffIntentReceived"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_0
    :goto_0
    return-void

    .line 2295
    :cond_1
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$5300(Lcom/android/server/WifiService$LockList;)Z

    move-result v0

    .line 2296
    .local v0, lockHeld:Z
    const/4 v1, 0x1

    .line 2299
    .local v1, strongestLockMode:I
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v3

    .line 2300
    .local v3, wifiApEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_9

    move v2, v6

    .line 2301
    .local v2, wifiApAirplaneMode:Z
    :goto_1
    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    move v4, v6

    .line 2304
    .local v4, wifiApShouldBeEnabled:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v8, :cond_b

    .line 2305
    const/4 v5, 0x0

    .line 2310
    .local v5, wifiShouldBeStarted:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    if-eqz v8, :cond_2

    const/4 v4, 0x0

    .line 2311
    :cond_2
    if-eqz v0, :cond_3

    .line 2312
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$5400(Lcom/android/server/WifiService$LockList;)I

    move-result v1

    .line 2315
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v8, :cond_4

    if-ne v1, v13, :cond_4

    .line 2316
    const/4 v1, 0x1

    .line 2321
    :cond_4
    if-eqz v4, :cond_e

    .line 2324
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v8

    if-ne v8, v6, :cond_8

    .line 2325
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v8, :cond_5

    .line 2326
    const-string v8, "WifiService"

    const-string v9, "updateWifiState: enable hotspot: MHS permission is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-ne v8, v6, :cond_8

    .line 2329
    :cond_6
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): enable hotspot"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v8, :cond_7

    .line 2331
    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 2332
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 2333
    iput-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 2335
    :cond_7
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v12, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2407
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v8

    if-eqz v8, :cond_17

    sget-boolean v8, Landroid/net/wifi/p2p/WifiP2pService;->mIsWifiP2pEnabled:Z

    if-nez v8, :cond_17

    .line 2408
    if-eqz v5, :cond_16

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 2412
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): enable and start wifi"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2414
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 2415
    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v1, v13, :cond_14

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    .line 2417
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v8, v6, v9}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2418
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x3

    if-ne v1, v9, :cond_15

    :goto_6
    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    goto/16 :goto_0

    .end local v2           #wifiApAirplaneMode:Z
    .end local v4           #wifiApShouldBeEnabled:Z
    .end local v5           #wifiShouldBeStarted:Z
    :cond_9
    move v2, v7

    .line 2300
    goto/16 :goto_1

    .restart local v2       #wifiApAirplaneMode:Z
    :cond_a
    move v4, v7

    .line 2301
    goto/16 :goto_2

    .line 2307
    .restart local v4       #wifiApShouldBeEnabled:Z
    :cond_b
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v8, :cond_c

    if-eqz v0, :cond_d

    :cond_c
    move v5, v6

    .restart local v5       #wifiShouldBeStarted:Z
    :goto_7
    goto/16 :goto_3

    .end local v5           #wifiShouldBeStarted:Z
    :cond_d
    move v5, v7

    goto :goto_7

    .line 2359
    .restart local v5       #wifiShouldBeStarted:Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v8

    if-ne v8, v6, :cond_8

    .line 2360
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v8, :cond_f

    .line 2361
    const-string v8, "WifiService"

    const-string v9, "updateWifiState: disable hotspot: MHS permission is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_f
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-eq v8, v6, :cond_11

    :cond_10
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    if-ne v8, v6, :cond_8

    .line 2364
    :cond_11
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): disable hotspot"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    .line 2366
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v12, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2367
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_12

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-eq v8, v6, :cond_8

    .line 2371
    :cond_12
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_8

    .line 2372
    iget-object v8, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v9, -0x43

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v12}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 2373
    :cond_13
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    goto/16 :goto_4

    :cond_14
    move v8, v7

    .line 2415
    goto :goto_5

    :cond_15
    move v6, v7

    .line 2418
    goto :goto_6

    .line 2436
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 2437
    const-string v6, "WifiService"

    const-string v8, "updateWifiState(): stop wifi"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto/16 :goto_0

    .line 2450
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 2451
    const-string v6, "WifiService"

    const-string v8, "updateWifiState(): disable wifi"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .locals 3

    .prologue
    .line 3211
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyPhoneCallStatus(I)Z

    move-result v0

    .line 3212
    .local v0, bRtn:Z
    return v0
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .locals 3

    .prologue
    .line 3216
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyPhoneCallStatus(I)Z

    move-result v0

    .line 3217
    .local v0, bRtn:Z
    return v0
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 2889
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2891
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 2892
    :try_start_0
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 2893
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2901
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_self()V

    .line 2902
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV6Packets()V

    .line 2903
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_dhcpoffer()V

    .line 2905
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_arp()V

    .line 2906
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2907
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 2910
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2912
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    .line 2915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2916
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2918
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2921
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2923
    return-void

    .line 2910
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2921
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2919
    :catch_0
    move-exception v2

    .line 2921
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 2666
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 2670
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2674
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2675
    const/4 p4, 0x0

    .line 2677
    :cond_1
    if-eqz p4, :cond_2

    .line 2678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2680
    :cond_2
    if-nez p4, :cond_3

    .line 2681
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 2683
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2684
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    .line 2685
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2686
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1804
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1808
    :goto_0
    return v0

    .line 1807
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 2015
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2017
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1022
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1023
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1024
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1028
    .local v0, wifiApEnabled:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v1

    .line 1029
    .local v1, wifiEnabled:Z
    const-string v3, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and Hotspot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    const-string v2, "enabled"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 1033
    if-eqz v1, :cond_4

    .line 1034
    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1044
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1046
    return-void

    .line 1024
    .end local v0           #wifiApEnabled:Z
    .end local v1           #wifiEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1029
    .restart local v0       #wifiApEnabled:Z
    .restart local v1       #wifiEnabled:Z
    :cond_2
    const-string v2, "disabled"

    goto :goto_1

    :cond_3
    const-string v2, "disabled"

    goto :goto_2

    .line 1035
    :cond_4
    if-eqz v0, :cond_0

    .line 1037
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v2, :cond_5

    .line 1038
    invoke-virtual {p0, v5, v0}, Lcom/android/server/WifiService;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_3

    .line 1040
    :cond_5
    invoke-virtual {p0, v5, v0}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_3
.end method

.method public checkWifiApEnabledMhsRequest()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3551
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 3553
    :goto_0
    return v0

    .line 3552
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 3553
    iget-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x23

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2025
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2027
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 2028
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1854
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1858
    :goto_0
    return v0

    .line 1857
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableSsdpPacket()Z
    .locals 2

    .prologue
    .line 3205
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3206
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 3207
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 1768
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1769
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1770
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 2536
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    :goto_0
    return-void

    .line 2543
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2549
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2551
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2552
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 2554
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2555
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2556
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2557
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v4, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v5, v7

    const/4 v3, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x4

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_2
    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 2565
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2573
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$5500(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 2576
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2577
    const-string v3, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableAutoIP(I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 3376
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3378
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_0

    .line 3379
    const-string v1, "dhcp.wlan0.autoip"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    :goto_0
    const-string v1, "wifi_auto_ip_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3385
    return v3

    .line 3381
    :cond_0
    const-string v1, "dhcp.wlan0.autoip"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1836
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1837
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 1842
    :goto_0
    return v0

    .line 1841
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 3228
    const/4 v0, 0x0

    .line 3229
    .local v0, bRtn:Z
    if-eqz p1, :cond_0

    .line 3230
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3231
    const-string v1, "WifiService"

    const-string v2, "enable PowerActive for FOTA download"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :goto_0
    return v0

    .line 3233
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3234
    const-string v1, "WifiService"

    const-string v2, "disable PowerActive for FOTA download"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePowerActiveMode(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 3361
    const/4 v0, 0x0

    .line 3362
    .local v0, bRtn:Z
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3363
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 3364
    const-string v2, "wifi_pwr_active_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3365
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3366
    const-string v2, "WifiService"

    const-string v3, "Enable Actvie mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :goto_0
    return v0

    .line 3368
    :cond_0
    const-string v2, "wifi_pwr_active_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3369
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3370
    const-string v2, "WifiService"

    const-string v3, "disable Actvie mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableSsdpPacket()Z
    .locals 2

    .prologue
    .line 3199
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3200
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 3201
    const/4 v0, 0x1

    return v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 2658
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2663
    :goto_0
    return-void

    .line 2661
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3470
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3471
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3475
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3476
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2048
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2049
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1794
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 1867
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1872
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicyEnabled()Z
    .locals 1

    .prologue
    .line 3541
    const/4 v0, 0x1

    return v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1970
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDockWifiApAutoEnabled()Z
    .locals 3

    .prologue
    .line 3275
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3276
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiApAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 3

    .prologue
    .line 3291
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3292
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1702
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1703
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getDongleScanList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1940
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1941
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getHotspotNumAllowedChannels()I
    .locals 1

    .prologue
    .line 3510
    const/16 v0, 0xb

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 2039
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2040
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2041
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getMostPreferredNetwork()I
    .locals 1

    .prologue
    .line 3461
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3514
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3515
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getRequestedList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1882
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmartWifiEnabledState()I
    .locals 1

    .prologue
    .line 3224
    const/4 v0, 0x0

    return v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWagAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWagAsUserDefined()Z
    .locals 1

    .prologue
    .line 3425
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1735
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1566
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1478
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 1

    .prologue
    .line 3261
    const/4 v0, 0x0

    return v0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWifidisplayApEnabled()Z

    move-result v0

    return v0
.end method

.method public getWifidisplayApState()I
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1580
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifidisplayApState()I

    move-result v0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 2868
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2870
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    monitor-exit v1

    .line 2886
    :goto_0
    return-void

    .line 2877
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 2878
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 2879
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 2882
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2884
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    goto :goto_0

    .line 2882
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1952
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 1957
    :cond_0
    const/4 v0, 0x1

    .line 1959
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2976
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2978
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2979
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWifiPowerModeNormal()Z
    .locals 1

    .prologue
    .line 3195
    const/4 v0, 0x1

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1173
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1177
    :goto_0
    return v0

    .line 1176
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 1784
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1785
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1786
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 1776
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1777
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1778
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 2926
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2929
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 2930
    :try_start_0
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 2931
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2932
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2933
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2934
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2935
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 2932
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2938
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 2939
    return-void

    .line 2938
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 2777
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1819
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1820
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1824
    :goto_0
    return v0

    .line 1823
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetDhcpConfig()V
    .locals 1

    .prologue
    .line 3519
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3520
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->resetDhcpConfig()V

    .line 3521
    return-void
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 1892
    const/4 v0, 0x1

    .line 1893
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1894
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 1895
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 1898
    :goto_0
    return v1

    .line 1897
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConnectionPolicyEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3536
    const/4 v0, 0x1

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 1912
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1915
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 1916
    return-void
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 3265
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3266
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiApAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 3268
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistDockWifiApEnabled(Z)V

    .line 3269
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 3270
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setWifiApEnableInDockMode(Z)V

    .line 3271
    :cond_0
    return v3
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 3281
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3282
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 3284
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistDockWifiEnabled(Z)V

    .line 3285
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 3286
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V

    .line 3287
    :cond_0
    return v3
.end method

.method public setFrequencyBand(IZ)V
    .locals 3
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    :goto_0
    return-void

    .line 1930
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_0
.end method

.method public setHotspotAutoChannel(I)V
    .locals 3
    .parameter "autoChannel"

    .prologue
    .line 3355
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotspotAutoChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setHotspotAutoChannel(I)V

    .line 3358
    return-void
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 1
    .parameter "networkId"

    .prologue
    .line 3466
    const/4 v0, 0x1

    return v0
.end method

.method public setWagAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "addr"

    .prologue
    .line 3442
    const/4 v0, 0x1

    return v0
.end method

.method public setWagAsUserDefined(Z)Z
    .locals 1
    .parameter "set"

    .prologue
    .line 3456
    const/4 v0, 0x1

    return v0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 3524
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3525
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1756
    const-string v0, "WifiService"

    const-string v1, "setWifiApConfiguration enter "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    if-nez p1, :cond_0

    .line 1758
    const-string v0, "WifiService"

    const-string v1, "[setWifiApConfiguration] wifiConfig == null "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :goto_0
    return-void

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1488
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabled enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v4, :cond_0

    if-ne p2, v2, :cond_0

    .line 1491
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiService;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1554
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    .line 1495
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1496
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 1499
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1500
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 1501
    .local v0, WifiAPflightenable:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1502
    if-eqz v0, :cond_2

    .line 1503
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1506
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 1507
    if-eqz p2, :cond_8

    .line 1508
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setWifiApEnabled] enable AP (mIfWiFiRegBastReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_4

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifidisplayApEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1515
    const-string v4, "WifiService"

    const-string v5, "wait WiFiDisplay AP to disabled state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #WifiAPflightenable:Z
    .end local v1           #i:I
    :cond_3
    move v0, v3

    .line 1500
    goto :goto_1

    .line 1526
    .restart local v0       #WifiAPflightenable:Z
    .restart local v1       #i:I
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v4, :cond_5

    .line 1530
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1531
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 1533
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1543
    .end local v1           #i:I
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1545
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v2, :cond_7

    .line 1546
    if-nez p2, :cond_7

    .line 1547
    iget-object v2, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v4, -0x43

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 1548
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1552
    :cond_7
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP (mIfWiFiRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1536
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    .line 1539
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    goto :goto_4

    .line 1518
    .restart local v1       #i:I
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 6
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3565
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabledMhsRequest enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-nez v3, :cond_0

    .line 3592
    :goto_0
    return v2

    .line 3567
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 3570
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 3571
    .local v0, WifiAPflightenable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3572
    if-eqz v0, :cond_1

    .line 3573
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3588
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    move v2, v1

    .line 3592
    goto :goto_0

    .end local v0           #WifiAPflightenable:Z
    :cond_2
    move v0, v2

    .line 3570
    goto :goto_1
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 3529
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3530
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    .line 3531
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 1
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    .line 1687
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1688
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 1
    .parameter "disabled"

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1722
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayUnscan(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1327
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1330
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiEnabled enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1335
    .local v0, wifiApEnabled:Z
    :cond_1
    if-eqz v0, :cond_4

    .line 1336
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1337
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    .line 1338
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1339
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v1, :cond_3

    .line 1340
    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x43

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 1341
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1343
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 1345
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WifiService;->setWifiEnabledPersist(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1327
    .end local v0           #wifiApEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setWifiEnabledPersist(ZZ)Z
    .locals 10
    .parameter "enable"
    .parameter "persist"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1396
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1398
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setWifiEnabledPersist enable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", persist="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getCallingPid()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/server/WifiService;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v7, :cond_0

    .line 1403
    const-string v7, "DeviceManager3LM"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v2

    .line 1406
    .local v2, dm:Landroid/os/IDeviceManager3LM;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/os/IDeviceManager3LM;->getWifiState()I

    move-result v7

    if-nez v7, :cond_0

    .line 1407
    const v7, 0x1040521

    const v8, 0x1040521

    const/4 v9, 0x0

    invoke-interface {v2, v7, v8, v9}, Landroid/os/IDeviceManager3LM;->notification(III)V

    .line 1409
    const-string v7, "WifiService"

    const-string v8, "[3LM] no allow"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    .end local v2           #dm:Landroid/os/IDeviceManager3LM;
    :goto_0
    return v5

    .line 1412
    .restart local v2       #dm:Landroid/os/IDeviceManager3LM;
    :catch_0
    move-exception v7

    .line 1418
    .end local v2           #dm:Landroid/os/IDeviceManager3LM;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1419
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1420
    .local v1, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 1421
    .local v0, allowStatus:I
    if-nez v0, :cond_1

    .line 1422
    const-string v6, "WifiService"

    const-string v7, "Forbidden by Exchange policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1427
    .end local v0           #allowStatus:I
    .end local v1           #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    if-eqz p1, :cond_2

    .line 1428
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1430
    :cond_2
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1438
    if-eqz p2, :cond_3

    .line 1439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1440
    .local v3, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 1441
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1444
    .end local v3           #ident:J
    :cond_3
    if-eqz p1, :cond_5

    .line 1445
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v7, :cond_4

    .line 1447
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1448
    iput-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1450
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkScreenOffSavedAndDoCommand()V

    .line 1458
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1461
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STA (mIfWiFiRegBastReceiver:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1464
    goto :goto_0

    .line 1454
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    goto :goto_1
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3250
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiPowerSavingMode(I)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 3182
    const/4 v0, 0x0

    .line 3183
    .local v0, bRtn:Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3184
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3185
    const-string v1, "WifiService"

    const-string v2, "do not let wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :goto_0
    return v0

    .line 3187
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3188
    const-string v1, "WifiService"

    const-string v2, "allow wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 6
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1645
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1646
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifidisplayApEnabled enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1649
    .local v0, WifiAPflightenable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1650
    if-eqz v0, :cond_0

    .line 1651
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1654
    :cond_0
    if-eqz p2, :cond_3

    .line 1655
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v2, :cond_1

    .line 1656
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1657
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 1658
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1669
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1671
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFDAP (mIfWiFiRegBastReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    return-void

    .end local v0           #WifiAPflightenable:Z
    :cond_2
    move v0, v2

    .line 1648
    goto :goto_0

    .line 1663
    .restart local v0       #WifiAPflightenable:Z
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    goto :goto_1
.end method

.method public declared-synchronized setWifidisplayEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    .line 1596
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1597
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifidisplayEnabled enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    if-eqz p1, :cond_0

    .line 1600
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1602
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiStateMachine;->setWifidisplayEnabled(Z)V

    .line 1610
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eq p1, v2, :cond_1

    .line 1611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1612
    .local v0, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 1613
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1616
    .end local v0           #ident:J
    :cond_1
    if-eqz p1, :cond_3

    .line 1617
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v2, :cond_2

    .line 1619
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1620
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1622
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkScreenOffSavedAndDoCommand()V

    .line 1631
    :cond_2
    :goto_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDSTA (mIfWiFiRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    monitor-exit p0

    return v5

    .line 1628
    :cond_3
    const/4 v2, 0x3

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1596
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setWpsPbc()Z
    .locals 1

    .prologue
    .line 3394
    const/4 v0, 0x0

    return v0
.end method

.method public setWpsPin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bssid"

    .prologue
    .line 3416
    const-string v0, "0"

    return-object v0
.end method

.method public startDongleScan()V
    .locals 1

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1693
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startDongleScan()V

    .line 1694
    return-void
.end method

.method public startDongleSingleCscan(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 1697
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1698
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startDongleSingleCscan(I)V

    .line 1699
    return-void
.end method

.method public startDongleWakeUp(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1708
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startDongleWakeUp(Ljava/lang/String;)V

    .line 1709
    return-void
.end method

.method public startScan(Z)V
    .locals 1
    .parameter "forceActive"

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1186
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1187
    return-void
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 1978
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1984
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1985
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1988
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWirelessSleepMode()V

    .line 1989
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 1990
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 1991
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - mAutoEnableWifiApInDockMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAutoEnableWifiInDockMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    return-void
.end method

.method public stopWifi()V
    .locals 3

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2006
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2007
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 2748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2749
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2750
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2751
    const/4 p2, 0x0

    .line 2753
    :cond_0
    if-eqz p2, :cond_1

    .line 2754
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2756
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2758
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2759
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$6300(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 2760
    .local v2, index:I
    if-gez v2, :cond_2

    .line 2761
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2767
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2768
    :catch_0
    move-exception v6

    .line 2770
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2772
    return-void

    .line 2763
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$5200(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 2764
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2765
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 2766
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2767
    monitor-exit v7

    goto :goto_0

    .line 2765
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2770
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
