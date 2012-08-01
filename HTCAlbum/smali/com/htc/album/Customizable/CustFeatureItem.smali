.class public Lcom/htc/album/Customizable/CustFeatureItem;
.super Ljava/lang/Object;
.source "CustFeatureItem.java"


# static fields
.field private static mEnablePaintView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enablePaintView(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 28
    sput-boolean p0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    .line 29
    return-void
.end method

.method public static enableScrollCache4GridviewFolderList()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public static enableScrollCache4GridviewList()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, bResult:Z
    return v0
.end method

.method public static enableScrollCacheFooter()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, bResult:Z
    return v0
.end method

.method public static enableScrollCacheHeader()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static enableTransitionCache4GridviewFolderList()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, bResult:Z
    return v0
.end method

.method public static isEnablePaintView()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isExcludeSocialNetwork()Z
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, bResult:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    :cond_0
    return v0
.end method

.method public static isSenseA()Z
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, bResult:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdf

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    .line 72
    :cond_1
    return v0
.end method

.method public static isSupportBurstShots()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPanorama()Z
    .locals 2

    .prologue
    .line 49
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPenPaint()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isSupportSnapbooth()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static show3DVirtualFolder()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
