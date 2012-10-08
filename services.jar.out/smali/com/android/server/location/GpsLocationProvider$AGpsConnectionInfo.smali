.class Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AGpsConnectionInfo"
.end annotation


# static fields
.field private static final BEARER_INVALID:I = -0x1

.field private static final BEARER_IPV4:I = 0x0

.field private static final BEARER_IPV4V6:I = 0x2

.field private static final BEARER_IPV6:I = 0x1

.field private static final CONNECTION_TYPE_ANY:I = 0x0

.field private static final CONNECTION_TYPE_C2K:I = 0x2

.field private static final CONNECTION_TYPE_SUPL:I = 0x1

.field private static final CONNECTION_TYPE_WWAN_ANY:I = 0x3

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_OPEN:I = 0x2

.field private static final STATE_OPENING:I = 0x1


# instance fields
.field private mAPN:Ljava/lang/String;

.field private final mAgpsType:I

.field private mBearerType:I

.field private final mCMConnType:I

.field private mIPv4Addr:Ljava/net/InetAddress;

.field private mIPv6Addr:Ljava/net/InetAddress;

.field private mIPvVerType:I

.field private final mPHConnFeatureStr:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 2
    .parameter
    .parameter "connMgrConnType"
    .parameter "agpsType"

    .prologue
    const/4 v1, 0x0

    .line 3632
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3633
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    .line 3634
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    .line 3635
    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 3636
    const-string v0, "enableSUPL"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    .line 3640
    :goto_0
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 3641
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 3642
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;

    .line 3643
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv6Addr:Ljava/net/InetAddress;

    .line 3644
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    .line 3645
    return-void

    .line 3638
    :cond_0
    const-string v0, "enableMMS"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3603
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3603
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3603
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3603
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3603
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    return-object v0
.end method
