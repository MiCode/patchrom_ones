.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
.super Ljava/lang/Object;
.source "FullScreenViewScroller.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller;


# static fields
.field private static deceleration:F


# instance fields
.field private MAX_VELOCITY:F

.field private final PAN_ANIMATION_FRAME_COUNT:I

.field private TAG:Ljava/lang/String;

.field private currentFlingingDuration:J

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentFlingingTravelledDistance:I

.field private currentMovedDistance:I

.field private deviceFPS:I

.field private initialVelocity:F

.field private isOnBouncingBack:Z

.field private final isOnborderThreshold:I

.field private isStartPanningOnItemLeftBorder:Z

.field private isStartPanningOnItemRightBorder:Z

.field private isStartPanningOnListLeftBorder:Z

.field private isStartPanningOnListRightBorder:Z

.field private itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mOutRatioY:F

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private ppi:F

.field private final ppiBaseInPyramid:F

.field private relativeMovement:I

.field private status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x4370

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 16
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 17
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    .line 19
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 21
    iput-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 22
    iput-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 23
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 24
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    .line 26
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    .line 27
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 28
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 29
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 30
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 31
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 33
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnborderThreshold:I

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->PAN_ANIMATION_FRAME_COUNT:I

    .line 36
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    .line 37
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    .line 38
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnBouncingBack:Z

    .line 42
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mBouncingDuration:I

    .line 43
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    .line 45
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppiBaseInPyramid:F

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    .line 47
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    .line 50
    const v0, 0x43c0e9ba

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    .line 54
    return-void
.end method

.method private easeFunction(FFF)F
    .locals 4
    .parameter "currentProgress"
    .parameter "deltaPosition"
    .parameter "totalProgress"

    .prologue
    .line 255
    div-float/2addr p1, p3

    .line 256
    mul-float v1, p1, p1

    .line 257
    .local v1, ts:F
    mul-float v0, v1, p1

    .line 258
    .local v0, tc:F
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    return v2
.end method

.method private limitedMovement(I)V
    .locals 4
    .parameter "positionDifference"

    .prologue
    const/4 v3, -0x1

    .line 160
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 208
    :goto_0
    return-void

    .line 168
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_3

    if-gez p1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 179
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_5

    if-gez p1, :cond_5

    .line 184
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1, v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0, v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 190
    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    .line 193
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_7

    if-lez p1, :cond_7

    .line 195
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1, v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 197
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0, v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 201
    :cond_6
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0

    .line 206
    :cond_7
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkStartPanningOnBorder()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 91
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    .line 92
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    .line 93
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    .line 94
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    .line 96
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    if-eqz v3, :cond_4

    .line 98
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v1

    .line 99
    .local v1, currentItemIndex:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v2

    .line 100
    .local v2, itemCount:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v3

    int-to-float v0, v3

    .line 101
    .local v0, centerFrameCenter:F
    cmpl-float v3, v0, v4

    if-eqz v3, :cond_3

    .line 103
    if-nez v1, :cond_0

    cmpg-float v3, v0, v4

    if-gez v3, :cond_0

    .line 105
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    .line 107
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_1

    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 109
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    .line 112
    :cond_1
    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    .line 114
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    .line 116
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 118
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    .line 126
    .end local v0           #centerFrameCenter:F
    .end local v1           #currentItemIndex:I
    .end local v2           #itemCount:I
    :cond_3
    :goto_0
    return-void

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][FullScreenViewScroller][checkStartPanningOnBorder]itemInfoGetter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    .line 75
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 76
    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRelativeMovement()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    return v0
.end method

.method public getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3
    .parameter "item_align_mode"
    .parameter "itemInfoGetter"

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewScroller][init]item_align_mode is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 70
    :goto_0
    return v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 64
    if-nez p2, :cond_1

    .line 65
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewScroller][init]itemInfoGetter is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    goto :goto_0

    .line 69
    :cond_1
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(F)V
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 143
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 144
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 145
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 147
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 148
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    sget v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 149
    return-void
.end method

.method public onTouchDown(I)V
    .locals 2
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 80
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 81
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    .line 82
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 83
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 84
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 86
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->checkStartPanningOnBorder()V

    .line 87
    return-void
.end method

.method public onTouchMove(I)V
    .locals 2
    .parameter "touchPositionOnViewport"

    .prologue
    .line 133
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    .line 134
    .local v0, newPanTargetDistance:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    .line 135
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 136
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    if-eq v0, v1, :cond_0

    .line 137
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 138
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 140
    :cond_0
    return-void
.end method

.method public onTouchUp(I)V
    .locals 0
    .parameter "touchPositionOnViewport"

    .prologue
    .line 129
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 266
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 267
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    .line 268
    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    .line 269
    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 270
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    .line 271
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 272
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    .line 273
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    .line 274
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    .line 275
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    .line 276
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    .line 277
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 278
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 279
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnBouncingBack:Z

    .line 280
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    .line 281
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 211
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_1

    .line 212
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_4

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, positionDifference:I
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    if-nez v4, :cond_3

    .line 217
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v1, v4, v5

    .line 222
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->limitedMovement(I)V

    .line 223
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    goto :goto_0

    .line 218
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    if-lez v4, :cond_2

    .line 219
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    div-int v1, v4, v5

    .line 220
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    goto :goto_1

    .line 226
    .end local v1           #positionDifference:I
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_0

    .line 227
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    div-int/2addr v4, v5

    int-to-long v2, v4

    .line 228
    .local v2, updateTimeDifference:J
    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 229
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 230
    .local v0, lastCurrentFlingingTravelledDistance:I
    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    long-to-float v4, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    long-to-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->easeFunction(FFF)F

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 231
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    .line 232
    .restart local v1       #positionDifference:I
    if-lez v1, :cond_6

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-lez v4, :cond_6

    .line 233
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-le v1, v4, :cond_5

    .line 234
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    .line 241
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->limitedMovement(I)V

    .line 242
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-nez v4, :cond_7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    .line 246
    :goto_3
    if-nez v1, :cond_0

    .line 247
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    .line 248
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    .line 249
    sget-object v4, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    goto/16 :goto_0

    .line 236
    :cond_6
    if-gez v1, :cond_5

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-gez v4, :cond_5

    .line 237
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-ge v1, v4, :cond_5

    .line 238
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    goto :goto_2

    .line 244
    :cond_7
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    goto :goto_3
.end method
