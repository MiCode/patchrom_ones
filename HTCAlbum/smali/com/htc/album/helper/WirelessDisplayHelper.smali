.class public Lcom/htc/album/helper/WirelessDisplayHelper;
.super Ljava/lang/Object;
.source "WirelessDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/WirelessDisplayHelper$1;,
        Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/album/helper/WirelessDisplayListener;

.field private mReceiver:Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/album/helper/WirelessDisplayListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 26
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mReceiver:Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 27
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mListener:Lcom/htc/album/helper/WirelessDisplayListener;

    .line 31
    iput-object p1, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mListener:Lcom/htc/album/helper/WirelessDisplayListener;

    .line 33
    const-string v0, "wireless_display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 34
    invoke-direct {p0}, Lcom/htc/album/helper/WirelessDisplayHelper;->registerReceiver()V

    .line 35
    const-string v0, "WirelessDisplayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WirelessDisplayHelper] WirelessDisplayManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/WirelessDisplayHelper;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/album/helper/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/WirelessDisplayHelper;)Lcom/htc/album/helper/WirelessDisplayListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mListener:Lcom/htc/album/helper/WirelessDisplayListener;

    return-object v0
.end method

.method private getIPLong(Ljava/lang/String;)J
    .locals 10
    .parameter "ip"

    .prologue
    .line 89
    const-wide/16 v2, 0x0

    .line 90
    .local v2, num:J
    if-eqz p1, :cond_2

    .line 91
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v4, 0x20

    .line 93
    .local v4, offset:I
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 98
    add-int/lit8 v4, v4, -0x8

    .line 99
    aget-object v7, v0, v1

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 100
    .local v5, token:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    const-wide/16 v7, 0x100

    cmp-long v7, v5, v7

    if-ltz v7, :cond_3

    .line 102
    :cond_0
    const-wide/16 v2, -0x1

    .line 107
    .end local v5           #token:J
    :cond_1
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #offset:I
    :cond_2
    return-wide v2

    .line 105
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #offset:I
    .restart local v5       #token:J
    :cond_3
    shl-long v7, v5, v4

    add-long/2addr v2, v7

    .line 93
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static final isInMirrorMode(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 42
    :try_start_0
    const-string v2, "wireless_display"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 43
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 48
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WirelessDisplayHelper][isInMirrorMode] Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 115
    new-instance v1, Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Lcom/htc/album/helper/WirelessDisplayHelper;Lcom/htc/album/helper/WirelessDisplayHelper$1;)V

    iput-object v1, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mReceiver:Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mReceiver:Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mReceiver:Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    return-void
.end method


# virtual methods
.method public final isInMirrorMode()Z
    .locals 4

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WirelessDisplayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WirelessDisplayHelper][isInMirrorMode] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMirrorRenderer(J)Z
    .locals 6
    .parameter "ip"

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/album/helper/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 73
    .local v0, dongleIP:J
    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    .line 75
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WirelessDisplayHelper][isMirrorRenderer] Dongle found with matching IP, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WirelessDisplayHelper][isMirrorRenderer] In mirror mode, not mataching with dongle IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", renderer IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lcom/htc/album/helper/WirelessDisplayHelper;->unregisterReceiver()V

    .line 129
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mListener:Lcom/htc/album/helper/WirelessDisplayListener;

    .line 130
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mReceiver:Lcom/htc/album/helper/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 131
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 132
    iput-object v0, p0, Lcom/htc/album/helper/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method
