.class public Lcom/htc/sunny2/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FLAG_NVIDIA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FLAG_SENSE40a:Z = false

.field public static final INTERNAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Constants"

.field public static final MIME_3D_IMAGE_TYPES:[Ljava/lang/String; = null

.field public static final MIME_3D_VIDEO_TYPES:[Ljava/lang/String; = null

.field public static final MIME_TYPE_3GP_2D:Ljava/lang/String; = "video/3gpp"

.field public static final MIME_TYPE_3GP_3D:Ljava/lang/String; = "video/3gpp-3d"

.field public static final MIME_TYPE_JPG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_JPS:Ljava/lang/String; = "image/jps"

.field public static final MIME_TYPE_MP4_2D:Ljava/lang/String; = "video/mp4"

.field public static final MIME_TYPE_MP4_3D:Ljava/lang/String; = "video/mp4-3d"

.field public static final MIME_TYPE_MPO:Ljava/lang/String; = "image/mpo"

.field public static final MIME_TYPE_WEBP:Ljava/lang/String; = "image/webp"

.field public static final MIME_TYPE_XJPS:Ljava/lang/String; = "image/x-jps"

.field public static final MIME_TYPE_XMPO:Ljava/lang/String; = "image/x-mpo"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdf

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe2

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe4

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe5

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x31

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x32

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    .line 17
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x25

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdd

    if-ne v0, v3, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/sunny2/common/Constants;->FLAG_NVIDIA:Z

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "image/jps"

    aput-object v3, v0, v1

    const-string v3, "image/x-jps"

    aput-object v3, v0, v2

    const-string v3, "image/mpo"

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v4, "image/x-mpo"

    aput-object v4, v0, v3

    sput-object v0, Lcom/htc/sunny2/common/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "video/mp4-3d"

    aput-object v3, v0, v1

    const-string v1, "video/3gpp-3d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/sunny2/common/Constants;->MIME_3D_VIDEO_TYPES:[Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    .line 9
    goto :goto_0

    :cond_3
    move v0, v1

    .line 17
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
