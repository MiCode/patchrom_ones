.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
.super Ljava/lang/Object;
.source "FilmstripViewScroller.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller;


# static fields
.field private static final DISTANCE_TO_GO_BUFFER_1:I = 0x64

.field private static final DISTANCE_TO_GO_BUFFER_2:I = 0x12c

.field private static final DURATION_CUT_1:D = 0.1

.field private static final DURATION_CUT_2:D = 0.2

.field private static final DURATION_CUT_3:D = 0.3

.field private static deceleration:F


# instance fields
.field private MAX_VELOCITY:F

.field private TAG:Ljava/lang/String;

.field private currentFlingingActuallTravelledDistance:I

.field private currentFlingingDuration:J

.field private currentFlingingEstimatedTravelledDistance:I

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentMovedDistance:I

.field private deviceFPS:I

.field private initialVelocity:F

.field private final isOnBorderThreshold:I

.field private isOnBouncingBack:Z

.field private isStartPanningOnLeftBorder:Z

.field private isStartPanningOnRightBorder:Z

.field private itemIndexForFlingToItemCenter:F

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

.field private relativeMovementLeftOvers:F

.field private relativeMovementModifierForFlingToItemCenter:F

.field private status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x4370

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 16
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 17
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    .line 19
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    .line 23
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    .line 24
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    .line 25
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    .line 26
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deviceFPS:I

    .line 27
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    .line 28
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    .line 29
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    .line 30
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    .line 31
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    .line 32
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 33
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    .line 34
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    .line 35
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBorderThreshold:I

    .line 41
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mBouncingDuration:I

    .line 43
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    .line 51
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->ppiBaseInPyramid:F

    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->ppi:F

    .line 53
    const/high16 v0, 0x44c8

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->ppi:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->MAX_VELOCITY:F

    .line 57
    const v0, 0x43c0e9ba

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->ppi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x3eb33333

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deceleration:F

    .line 62
    return-void
.end method

.method private checkStartPanningOnBorder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    .line 110
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    .line 111
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    const/4 v1, -0x2

    if-lt v0, v1, :cond_2

    .line 113
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 117
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    goto :goto_0
.end method

.method private easeFunction(FFF)F
    .locals 4
    .parameter "currentProgress"
    .parameter "deltaPosition"
    .parameter "totalProgress"

    .prologue
    .line 414
    div-float/2addr p1, p3

    .line 415
    mul-float v1, p1, p1

    .line 416
    .local v1, ts:F
    mul-float v0, v1, p1

    .line 418
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

.method private getBoundaryDuration(II)I
    .locals 5
    .parameter "nDurationSrc"
    .parameter "nDistanceToGo"

    .prologue
    .line 434
    move v0, p1

    .line 435
    .local v0, nDuration:I
    const/16 v1, 0x64

    if-lt v1, p2, :cond_0

    .line 437
    int-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 447
    :goto_0
    return v0

    .line 439
    :cond_0
    const/16 v1, 0x12c

    if-lt v1, p2, :cond_1

    .line 441
    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    .line 445
    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private limitedMovement(I)V
    .locals 3
    .parameter "positionDifference"

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 242
    :goto_0
    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, -0x50

    if-ge v0, v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    rsub-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0

    .line 221
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_4

    if-lez p1, :cond_4

    .line 229
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 230
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    goto :goto_0

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_5

    if-gez p1, :cond_5

    .line 234
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 235
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    goto :goto_0

    .line 239
    :cond_5
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    .line 87
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 88
    return-void
.end method

.method public flingByDistance(I)V
    .locals 4
    .parameter "distance"

    .prologue
    .line 246
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mBouncingDuration:I

    .line 247
    .local v1, duration:I
    move v0, p1

    .line 249
    .local v0, distanceToGo:I
    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 250
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    .line 251
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    .line 252
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    .line 253
    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRawRelativeMovement()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    return v0
.end method

.method public getRelativeMovement()I
    .locals 5

    .prologue
    .line 423
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 424
    .local v0, ret:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    .line 425
    float-to-int v1, v0

    return v1
.end method

.method public getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3
    .parameter "item_align_mode"
    .parameter "itemInfoGetter"

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] item_align_mode is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    .line 81
    :goto_0
    return v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    .line 74
    if-nez p2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    goto :goto_0

    .line 80
    :cond_1
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(F)V
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 179
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 180
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    .line 181
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    .line 183
    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    .line 184
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    .line 185
    return-void
.end method

.method public onTouchDown(I)V
    .locals 2
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v1, 0x0

    .line 92
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 93
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    .line 94
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    .line 95
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    .line 96
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    .line 97
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    .line 98
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    .line 100
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->checkStartPanningOnBorder()V

    .line 101
    return-void
.end method

.method public onTouchMove(I)V
    .locals 5
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, newPanTargetDistance:I
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-gez v1, :cond_2

    .line 143
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    .line 150
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-lez v1, :cond_3

    .line 153
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    .line 154
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    .line 169
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    .line 170
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    if-eq v0, v1, :cond_1

    .line 172
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    .line 173
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    .line 175
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-lez v1, :cond_0

    .line 147
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    goto :goto_0

    .line 157
    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-gez v1, :cond_4

    .line 160
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    .line 161
    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v4}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    goto :goto_1

    .line 166
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    goto :goto_1
.end method

.method public onTouchUp(I)V
    .locals 3
    .parameter "touchPositionOnViewport"

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    if-gez v0, :cond_0

    .line 125
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 452
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 453
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    .line 454
    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    .line 455
    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    .line 456
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    .line 457
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    .line 458
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    .line 459
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deviceFPS:I

    .line 460
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    .line 461
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    .line 462
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    .line 463
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    .line 464
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    .line 465
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 466
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    .line 467
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    .line 468
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    .line 469
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    .line 470
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    .line 471
    return-void
.end method

.method public update()V
    .locals 28

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v24, v0

    sget-object v25, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 259
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v24, v0

    sget-object v25, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 264
    const/16 v19, 0x0

    .line 265
    .local v19, positionDifference:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    move/from16 v25, v0

    sub-int v19, v24, v25

    .line 274
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->limitedMovement(I)V

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    goto :goto_0

    .line 269
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v24, v0

    if-lez v24, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v25, v0

    div-int v19, v24, v25

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    goto :goto_1

    .line 277
    .end local v19           #positionDifference:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v24, v0

    sget-object v25, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->signum(F)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v6, v0

    .line 280
    .local v6, distanceToGo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v20

    .line 281
    .local v20, startIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v7

    .line 282
    .local v7, endIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v11

    .line 283
    .local v11, itemGap:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v21

    .line 284
    .local v21, startOffset:I
    move/from16 v4, v21

    .line 285
    .local v4, counter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v8

    .line 287
    .local v8, endOffset:I
    const v16, 0x7fffffff

    .line 288
    .local v16, nearestDistance:I
    const v17, 0x7fffffff

    .line 289
    .local v17, nearestItemCenter:I
    const/16 v18, -0x1

    .line 290
    .local v18, nearestItemIndex:I
    move/from16 v9, v20

    .local v9, i:I
    :goto_2
    if-gt v9, v7, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v13

    .line 293
    .local v13, itemLength:I
    move/from16 v0, v20

    if-ne v9, v0, :cond_7

    .line 295
    div-int/lit8 v24, v13, 0x2

    sub-int v12, v4, v24

    .line 296
    .local v12, itemLeft:I
    move v10, v4

    .line 297
    .local v10, itemCenter:I
    div-int/lit8 v24, v13, 0x2

    add-int v14, v4, v24

    .line 298
    .local v14, itemRight:I
    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    .line 299
    neg-int v0, v6

    move/from16 v24, v0

    sub-int v5, v24, v10

    .line 300
    .local v5, diff:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    div-int/lit8 v25, v13, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 302
    move/from16 v16, v5

    .line 303
    move/from16 v17, v10

    .line 304
    move/from16 v18, v9

    .line 336
    :cond_5
    :goto_3
    if-eq v9, v7, :cond_6

    .line 338
    add-int/2addr v4, v11

    .line 290
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 307
    .end local v5           #diff:I
    .end local v10           #itemCenter:I
    .end local v12           #itemLeft:I
    .end local v14           #itemRight:I
    :cond_7
    if-ne v9, v7, :cond_8

    .line 309
    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    .line 310
    div-int/lit8 v24, v13, 0x2

    sub-int v12, v4, v24

    .line 311
    .restart local v12       #itemLeft:I
    move v10, v4

    .line 312
    .restart local v10       #itemCenter:I
    div-int/lit8 v24, v13, 0x2

    add-int v14, v4, v24

    .line 313
    .restart local v14       #itemRight:I
    neg-int v0, v6

    move/from16 v24, v0

    sub-int v5, v24, v10

    .line 314
    .restart local v5       #diff:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    div-int/lit8 v25, v13, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 316
    move/from16 v16, v5

    .line 317
    move/from16 v17, v10

    .line 318
    move/from16 v18, v9

    goto :goto_3

    .line 323
    .end local v5           #diff:I
    .end local v10           #itemCenter:I
    .end local v12           #itemLeft:I
    .end local v14           #itemRight:I
    :cond_8
    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    .line 324
    div-int/lit8 v24, v13, 0x2

    sub-int v12, v4, v24

    .line 325
    .restart local v12       #itemLeft:I
    move v10, v4

    .line 326
    .restart local v10       #itemCenter:I
    div-int/lit8 v24, v13, 0x2

    add-int v14, v4, v24

    .line 327
    .restart local v14       #itemRight:I
    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    .line 328
    neg-int v0, v6

    move/from16 v24, v0

    sub-int v5, v24, v10

    .line 329
    .restart local v5       #diff:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    div-int/lit8 v25, v13, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 331
    move/from16 v16, v5

    .line 332
    move/from16 v17, v10

    .line 333
    move/from16 v18, v9

    goto :goto_3

    .line 343
    .end local v5           #diff:I
    .end local v10           #itemCenter:I
    .end local v12           #itemLeft:I
    .end local v13           #itemLength:I
    .end local v14           #itemRight:I
    :cond_9
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 345
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v6

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    .line 346
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    .line 348
    :cond_a
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deviceFPS:I

    move/from16 v25, v0

    div-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 349
    .local v22, updateTimeDifference:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-wide/from16 v24, v0

    add-long v24, v24, v22

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    .line 350
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    .line 351
    .local v15, lastCurrentFlingingEstimatedTravelDistance:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->easeFunction(FFF)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->signum(F)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    move/from16 v24, v0

    sub-int v19, v24, v15

    .line 356
    .restart local v19       #positionDifference:I
    if-lez v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    if-lez v24, :cond_e

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v19, v0

    .line 375
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 377
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 379
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    .line 383
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_f

    .line 385
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 387
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    .line 401
    :goto_5
    if-nez v19, :cond_0

    .line 403
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    .line 404
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    .line 405
    sget-object v24, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    .line 406
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    goto/16 :goto_0

    .line 363
    :cond_e
    if-gez v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    if-gez v24, :cond_b

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v19, v0

    goto/16 :goto_4

    .line 389
    :cond_f
    if-eqz v19, :cond_10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->signum(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 392
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->limitedMovement(I)V

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRawRelativeMovement()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    goto/16 :goto_5

    .line 397
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->limitedMovement(I)V

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRawRelativeMovement()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    goto/16 :goto_5
.end method
