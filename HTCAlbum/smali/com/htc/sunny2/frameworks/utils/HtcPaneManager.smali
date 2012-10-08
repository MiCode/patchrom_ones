.class public Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;
.super Ljava/lang/Object;
.source "HtcPaneManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcPaneManager"

.field public static PANE_LEFT:I

.field public static PANE_RIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 8
    .parameter "context"
    .parameter "bIsFullscreen"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    const/4 v4, 0x0

    .line 51
    .local v4, paneRect:[Lcom/htc/app/mf/PaneRect;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneLeftWidth(Landroid/content/Context;)I

    move-result v1

    .line 54
    .local v1, nPaneLeft:I
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    .line 55
    .local v2, nPaneRight:I
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    .line 58
    .local v0, nPaneHeight:I
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/htc/app/mf/PaneRect;

    .end local v4           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v1, v6, v2, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v7

    .line 79
    .end local v1           #nPaneLeft:I
    .end local v2           #nPaneRight:I
    .restart local v4       #paneRect:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    return-object v4

    .line 67
    .end local v0           #nPaneHeight:I
    :cond_0
    const/4 v0, 0x0

    .line 68
    .restart local v0       #nPaneHeight:I
    if-eqz p1, :cond_1

    .line 69
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    .line 73
    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneWidthLand(Landroid/content/Context;)I

    move-result v3

    .line 74
    .local v3, nPaneWidth:I
    new-array v4, v7, [Lcom/htc/app/mf/PaneRect;

    .end local v4           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v3, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    .restart local v4       #paneRect:[Lcom/htc/app/mf/PaneRect;
    goto :goto_0

    .line 71
    .end local v3           #nPaneWidth:I
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 6
    .parameter "context"
    .parameter "bIsFullscreen"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, paneRect:[Lcom/htc/app/mf/PaneRect;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    .line 88
    .local v0, nPaneHeight:I
    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    .end local v2           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v5, v4, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    .line 106
    .restart local v2       #paneRect:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    return-object v2

    .line 95
    .end local v0           #nPaneHeight:I
    :cond_0
    const/4 v0, 0x0

    .line 96
    .restart local v0       #nPaneHeight:I
    if-eqz p1, :cond_1

    .line 97
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    .line 100
    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneWidthPort(Landroid/content/Context;)I

    move-result v1

    .line 101
    .local v1, nPaneWidth:I
    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    .end local v2           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v3, v5, v5, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    .restart local v2       #paneRect:[Lcom/htc/app/mf/PaneRect;
    goto :goto_0

    .line 99
    .end local v1           #nPaneWidth:I
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 42
    .local v1, nOrientation:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, bResult:Z
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 35
    :cond_0
    return v0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I
    .locals 5
    .parameter "context"
    .parameter "bIs2Pane"
    .parameter "bIsPaneRight"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 284
    .local v0, met:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 285
    .local v2, nWidth:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 287
    .local v1, nHeight:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 290
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    .line 292
    :cond_0
    add-int/lit8 v2, v2, -0xa

    .line 293
    add-int/lit8 v1, v1, -0xc

    .line 308
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    .line 297
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    sget v2, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 300
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_LAND:I

    goto :goto_0

    .line 304
    :cond_2
    sget v2, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 305
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZII)[I
    .locals 4
    .parameter "context"
    .parameter "bIs2Pane"
    .parameter "bIsPaneRight"
    .parameter "givenWidth"
    .parameter "givenHeight"

    .prologue
    .line 313
    move v1, p3

    .line 314
    .local v1, nWidth:I
    move v0, p4

    .line 324
    .local v0, nHeight:I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "actionBar"
    .parameter "clickListener"
    .parameter "actionBarGesture"
    .parameter "bEnableActionBarUpdate"
    .parameter "bEnableBackButton"
    .parameter "bEnableTouch"
    .parameter "bEnableAppButton"
    .parameter "bEnableFullscreen"
    .parameter "szMainTitle"
    .parameter "szSecondaryTitle"

    .prologue
    const/4 v1, 0x0

    .line 148
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 202
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local p0
    :cond_1
    invoke-interface {p1, p5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 155
    if-eqz p5, :cond_3

    .line 156
    invoke-interface {p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :goto_1
    if-eqz p6, :cond_4

    .line 164
    const/4 v0, 0x1

    invoke-interface {p1, v0, p0, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V

    .line 171
    :goto_2
    invoke-interface {p1, p7, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    .line 172
    if-eqz p7, :cond_2

    .line 174
    instance-of v0, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v0, :cond_2

    .line 175
    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .end local p0
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enableDropList()V

    .line 180
    :cond_2
    if-eqz p8, :cond_5

    .line 181
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 190
    :goto_3
    if-nez p7, :cond_0

    .line 192
    if-eqz p9, :cond_6

    .line 193
    invoke-interface {p1, p9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 197
    :goto_4
    if-eqz p10, :cond_7

    .line 198
    invoke-interface {p1, p10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .restart local p0
    :cond_3
    invoke-interface {p1, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 166
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V

    goto :goto_2

    .line 183
    .end local p0
    :cond_5
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    goto :goto_3

    .line 195
    :cond_6
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_4

    .line 200
    :cond_7
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "activity"
    .parameter "actionBar"
    .parameter "clickListener"
    .parameter "bEnableActionBarUpdate"
    .parameter "bEnableBackButton"
    .parameter "bEnableAppButton"
    .parameter "bEnableFullscreen"
    .parameter "szMainTitle"
    .parameter "szSecondaryTitle"

    .prologue
    .line 119
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static paneHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, nHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 274
    .local v1, nOrientation:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 275
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_LAND:I

    .line 278
    :goto_0
    return v0

    .line 277
    :cond_0
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static paneLeftWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LEFT:I

    .line 226
    return v0
.end method

.method public static paneRightWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_RIGHT:I

    .line 232
    return v0
.end method

.method public static paneUsableLandscapeHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_LAND:I

    .line 247
    return v0
.end method

.method public static paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_LAND_PHONE:I

    .line 259
    return v0
.end method

.method public static paneUsablePortraitHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_PORT:I

    .line 241
    return v0
.end method

.method public static paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_PORT_PHONE:I

    .line 253
    return v0
.end method

.method public static paneWidthLand(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 217
    return v0
.end method

.method public static paneWidthPort(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 211
    return v0
.end method
