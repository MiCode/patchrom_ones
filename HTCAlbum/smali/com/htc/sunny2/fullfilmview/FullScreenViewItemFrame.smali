.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
.super Ljava/lang/Object;
.source "FullScreenViewItemFrame.java"


# static fields
.field protected static final DEFAULT_ZOOM:F = 1.0f

.field private static final DOUBLE_TAP_ZOOM_IN_NAME:Ljava/lang/String; = "double_tap_zoom_in"

.field private static final DOUBLE_TAP_ZOOM_OUT_NAME:Ljava/lang/String; = "double_tap_zoom_out"

.field private static final LTAG:Ljava/lang/String; = null

.field protected static final MAX_ADJUSTED_ZOOM:F = 2.5f

.field protected static final MAX_ADJUSTED_ZOOM_PL:F = 3.0f

.field protected static final MAX_PIXELS_H:F = 2388.0f

.field protected static final MAX_PIXELS_W:F = 3888.0f

.field protected static final MAX_ZOOM:F = 2.0f

.field static final TOLERANCE_ZOOM:F = 0.2f

.field protected static final UPBOUND_RATIO:F = 10.0f

.field protected static final ZOOM_IN_STEP:F = 1.2f

.field protected static final ZOOM_OUT_STEP:F = 0.8f


# instance fields
.field private final EXTRA_ZOOM_IN_FACTOR:F

.field private final EXTRA_ZOOM_OUT_FACTOR:F

.field private final ITEMINFO_LOCK:Ljava/lang/Object;

.field private _displayImageCenterBottomBoundary:F

.field private _displayImageCenterLeftBoundary:F

.field private _displayImageCenterRightBoundary:F

.field private _displayImageCenterTopBoundary:F

.field private _displayImageLeftOnViewport:F

.field private _displayImageTopOnViewport:F

.field private displayImageCenterX:F

.field private displayImageCenterY:F

.field private displayImageHeight:F

.field private displayImageWidth:F

.field private fitToScreenImageHeight:F

.field private fitToScreenImageWidth:F

.field private frameHeight:F

.field private frameWidth:F

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

.field private isMoveFrame:Z

.field private item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

.field private itemIndex:I

.field private mDoubleTapZoomFactor:F

.field private mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private maxZoomFactor:F

.field private minZoomFactor:F

.field private onPanning:Z

.field private onZoomMode:Z

.field private panStartOnBottomBorder:Z

.field private panStartOnLeftBorder:Z

.field private panStartOnRightBorder:Z

.field private panStartOnTopBorder:Z

.field private positionX:F

.field private positionY:F

.field private positionZ:F

.field private renderThread:Lcom/htc/sunny2/RenderThread;

.field private sceneNode:Lcom/htc/sunny2/SceneNode;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private zoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 5
    .parameter "imageTextureProvider"
    .parameter "fsScene"

    .prologue
    const/high16 v0, 0x3fa0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_IN_FACTOR:F

    .line 50
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_OUT_FACTOR:F

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    .line 56
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 58
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 60
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 61
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 63
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 64
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    .line 66
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 70
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 71
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 72
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 74
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 75
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 77
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 78
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 79
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 81
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 87
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 88
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 89
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 90
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 92
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 97
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 98
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 99
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 103
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 105
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 106
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 119
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    .line 120
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    .line 122
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 123
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 124
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 125
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 132
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 133
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method private calculateDisplayImageCenterBoundary()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 1366
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    .line 1368
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1369
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1370
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1371
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1396
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1377
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1378
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1386
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1388
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1389
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0

    .line 1382
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1383
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    .line 1393
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1394
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0
.end method

.method private calculateDisplayImageCenterBoundary(FF)V
    .locals 3
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/high16 v2, 0x4000

    const/4 v1, 0x0

    .line 1400
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1402
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1403
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1411
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 1413
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1414
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1421
    :goto_1
    return-void

    .line 1407
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1408
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_0

    .line 1418
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float v0, p2, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1419
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_1
.end method

.method private calculateDisplayImageLeftTopOnViewport()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 1349
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    .line 1350
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    .line 1351
    return-void
.end method

.method private calculateFitToScreenImageSize(FF)Z
    .locals 5
    .parameter "sourceImageWidth"
    .parameter "sourceImageHeight"

    .prologue
    const/4 v4, 0x0

    .line 1158
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_1

    .line 1160
    :cond_0
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "calculateInitDisplayImageSize() NG - zero value"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1162
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 1163
    const/4 v2, 0x0

    .line 1191
    :goto_0
    return v2

    .line 1166
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_4

    .line 1169
    :cond_2
    div-float v1, p2, p1

    .line 1170
    .local v1, imageAspect:F
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float v0, v2, v3

    .line 1172
    .local v0, frameAspect:F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_3

    .line 1174
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 1175
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1191
    .end local v0           #frameAspect:F
    .end local v1           #imageAspect:F
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1179
    .restart local v0       #frameAspect:F
    .restart local v1       #imageAspect:F
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1180
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1

    .line 1186
    .end local v0           #frameAspect:F
    .end local v1           #imageAspect:F
    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1187
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1
.end method

.method private getRotatedSourceImageHeight()I
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1152
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "getRotatedSourceImageHeight() NG - error degrees"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1147
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    .line 1150
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    .line 1143
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private getRotatedSourceImageWidth()I
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1137
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "getRotatedSourceImageWidth() NG - error degrees"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1132
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    .line 1135
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    .line 1128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private initDisplayImageGeometry()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1337
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    .line 1338
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    .line 1339
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1340
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1341
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1342
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1343
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1344
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 1345
    return-void
.end method


# virtual methods
.method public addToScene(IILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z
    .locals 3
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "parentSceneNode"
    .parameter "itemPrototype"

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - already added"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 279
    :goto_0
    return v0

    .line 248
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 249
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 253
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    .line 254
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create scene node"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunny2/SceneNode;)V

    move v0, v1

    .line 258
    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p3, v0}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 266
    invoke-virtual {p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 268
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_2

    .line 270
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create item"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunny2/SceneNode;)V

    move v0, v1

    .line 272
    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    .line 276
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 277
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->attachToSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public adjustZoomFactor(F)F
    .locals 1
    .parameter "factor"

    .prologue
    .line 998
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 999
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1000
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1001
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1002
    :cond_1
    return p1
.end method

.method public adjustZoomFactorExtra(F)F
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3fa0

    .line 989
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 990
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float p1, v0, v1

    .line 991
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 992
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float p1, v0, v1

    .line 993
    :cond_1
    return p1
.end method

.method public bindItem(ILcom/htc/sunny2/IMediaData;)Z
    .locals 3
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 320
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 323
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 324
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 329
    monitor-exit v1

    .line 331
    const/4 v0, 0x1

    return v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method calculateImageRXOnViewportPoint(F)F
    .locals 2
    .parameter "viewportX"

    .prologue
    .line 1425
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float/2addr v0, v1

    return v0
.end method

.method calculateImageRYOnViewportPoint(F)F
    .locals 2
    .parameter "viewportY"

    .prologue
    .line 1430
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float/2addr v0, v1

    return v0
.end method

.method public calculateMaxMinDClickZoomFactor(FF)Z
    .locals 10
    .parameter "sourceImageWidth"
    .parameter "sourceImageHeight"

    .prologue
    const/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    const/high16 v7, 0x4573

    const v6, 0x45154000

    const/4 v5, 0x0

    .line 1196
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    cmpl-float v4, p1, v5

    if-eqz v4, :cond_0

    cmpl-float v4, p2, v5

    if-nez v4, :cond_1

    .line 1198
    :cond_0
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "calculateMaxMinZoomFactor() NG - zero value"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1200
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1201
    const/4 v4, 0x0

    .line 1332
    :goto_0
    return v4

    .line 1204
    :cond_1
    const/4 v0, 0x0

    .line 1205
    .local v0, isPanorama:Z
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1207
    cmpl-float v4, p1, p2

    if-ltz v4, :cond_6

    .line 1224
    const/high16 v4, 0x437a

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    const/high16 v4, 0x4080

    mul-float/2addr v4, p2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    .line 1227
    const/4 v0, 0x1

    .line 1228
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v4, p2, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1229
    .local v3, real:F
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][FullScreenViewItemFrame][calculateMaxMinDClickZoomFactor]panorama, wide, real = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1231
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1314
    .end local v3           #real:F
    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 1317
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1318
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    const v5, 0x3f99999a

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1327
    :goto_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    .line 1328
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1332
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1236
    :cond_4
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1237
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 1240
    const/high16 v2, 0x3f80

    .line 1241
    .local v2, rW:F
    const/high16 v1, 0x3f80

    .line 1242
    .local v1, rH:F
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 1244
    const/high16 v4, 0x4020

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1246
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v7, v4

    .line 1247
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v6, v4

    .line 1255
    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1256
    .restart local v3       #real:F
    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1257
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto :goto_1

    .line 1250
    .end local v3           #real:F
    :cond_5
    const/high16 v4, 0x4040

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1252
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v6, v4

    .line 1253
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v7, v4

    goto :goto_3

    .line 1277
    .end local v1           #rH:F
    .end local v2           #rW:F
    :cond_6
    const/high16 v4, 0x437a

    cmpl-float v4, p1, v4

    if-lez v4, :cond_7

    const/high16 v4, 0x4080

    mul-float/2addr v4, p1

    cmpl-float v4, p2, v4

    if-lez v4, :cond_7

    .line 1280
    const/4 v0, 0x1

    .line 1281
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v4, p1, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1282
    .restart local v3       #real:F
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][FullScreenViewItemFrame][calculateMaxMinDClickZoomFactor]panorama, wide, real = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1284
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    goto/16 :goto_1

    .line 1289
    .end local v3           #real:F
    :cond_7
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1290
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    .line 1293
    const/high16 v2, 0x3f80

    .line 1294
    .restart local v2       #rW:F
    const/high16 v1, 0x3f80

    .line 1295
    .restart local v1       #rH:F
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    .line 1297
    const/high16 v4, 0x4020

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1299
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v6, v4

    .line 1300
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v7, v4

    .line 1308
    :goto_4
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1309
    .restart local v3       #real:F
    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1310
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto/16 :goto_1

    .line 1303
    .end local v3           #real:F
    :cond_8
    const/high16 v4, 0x4040

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1305
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v7, v4

    .line 1306
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v6, v4

    goto :goto_4

    .line 1320
    .end local v1           #rH:F
    .end local v2           #rW:F
    :cond_9
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    goto/16 :goto_2

    .line 1325
    :cond_a
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][FullScreenViewItemFrame][calculateMaxMinDClickZoomFactor]panorama, don\'t adjust double tap and max zoom factor"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public cancelFling()V
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 450
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 451
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "Fling"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 452
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingEndIRT()V

    .line 460
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_0
    return-void
.end method

.method public clearRenderingEnvironment()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 234
    return-void
.end method

.method doFling()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;

    const-string v2, "Fling"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 445
    :cond_0
    return-void
.end method

.method doZoom(FFFZ)V
    .locals 5
    .parameter "newZoomFactor"
    .parameter "imageCenterX"
    .parameter "imageCenterY"
    .parameter "doAdjust"

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1450
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_0

    .line 1452
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom]item is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    monitor-exit v1

    .line 1484
    :goto_0
    return-void

    .line 1456
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1458
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    .line 1463
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1464
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1466
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1467
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1469
    if-eqz p4, :cond_3

    .line 1471
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 1472
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 1473
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1476
    :cond_2
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 1477
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1481
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto :goto_0

    .line 1474
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1475
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1478
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1479
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method doZoom(FFFZZII)V
    .locals 6
    .parameter "newZoomFactor"
    .parameter "imageCenterX"
    .parameter "imageCenterY"
    .parameter "isPinchZooming"
    .parameter "doAdjust"
    .parameter "currentStep"
    .parameter "totalStep"

    .prologue
    const/4 v5, 0x1

    .line 1488
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 1492
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom2]item is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    monitor-exit v1

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1498
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1500
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    .line 1503
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1504
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1506
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1507
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1509
    if-eqz p5, :cond_4

    .line 1511
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 1512
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 1514
    if-ne p6, p7, :cond_5

    .line 1516
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1534
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 1536
    if-ne p6, p7, :cond_8

    .line 1538
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1557
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 1560
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1562
    if-eqz p4, :cond_c

    .line 1564
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    .line 1566
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoom]isPinchZooming, !onZoomMode, MAX = HQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_0

    .line 1520
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1523
    :cond_6
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1525
    if-ne p6, p7, :cond_7

    .line 1527
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1531
    :cond_7
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1542
    :cond_8
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    .line 1545
    :cond_9
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1547
    if-ne p6, p7, :cond_a

    .line 1549
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    .line 1553
    :cond_a
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1571
    :cond_b
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoom]isPinchZooming, onZoomMode, MAX = EQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    .line 1577
    :cond_c
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoom]!isPinchZooming, MAX = HQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0
.end method

.method doZoomBegin()V
    .locals 2

    .prologue
    .line 1435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1436
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomBegin(F)V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomBeginIRT()V

    .line 1445
    :cond_1
    return-void
.end method

.method doZoomEnd()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1587
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullScreenViewItemFrame][doZoomEnd]imagePanAndZoomListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomEnd(F)V

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomEndIRT()V

    .line 1597
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1599
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_2

    .line 1601
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_4

    .line 1603
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][FullScreenViewItemFrame][doZoomEnd]!onZoomMode, MAX = HQ"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    .line 1612
    :cond_2
    :goto_1
    return-void

    .line 1597
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1608
    :cond_4
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoomEnd]onZoomMode, MAX = EQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_1
.end method

.method public getFitToScreenImageHeight()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    return v0
.end method

.method public getFitToScreenImageWidth()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    return v0
.end method

.method public getFrameHeight()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method public getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    return v0
.end method

.method public getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 1017
    if-nez p1, :cond_0

    .line 1019
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemInfo"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :goto_0
    return v0

    .line 1023
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v1, :cond_1

    .line 1025
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemIndex"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    .line 1031
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->positionOffset:F

    .line 1032
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    .line 1034
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    .line 1035
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    .line 1036
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    .line 1037
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    .line 1038
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    .line 1039
    monitor-exit v1

    .line 1040
    const/4 v0, 0x1

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    return v0
.end method

.method public isItemZoomable()Z
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v0, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 984
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v0

    goto :goto_0
.end method

.method public moveImageByX(F)V
    .locals 7
    .parameter "delta"

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, appliedPan:F
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_0

    .line 569
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v1, v2, v3

    .line 571
    .local v1, toleratedPanDistance:F
    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    .line 572
    move v0, p1

    .line 583
    .end local v1           #toleratedPanDistance:F
    :cond_0
    :goto_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 584
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v1, v2, v3

    .line 586
    .restart local v1       #toleratedPanDistance:F
    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    .line 587
    move v0, p1

    .line 598
    .end local v1           #toleratedPanDistance:F
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 599
    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 600
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    .line 601
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 605
    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v2, :cond_8

    .line 608
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 614
    :goto_3
    return-void

    .line 573
    .restart local v1       #toleratedPanDistance:F
    :cond_3
    cmpl-float v2, v1, v4

    if-nez v2, :cond_4

    .line 574
    const/4 v0, 0x0

    goto :goto_0

    .line 576
    :cond_4
    move v0, v1

    goto :goto_0

    .line 588
    :cond_5
    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    .line 589
    const/4 v0, 0x0

    goto :goto_1

    .line 591
    :cond_6
    move v0, v1

    goto :goto_1

    .line 602
    .end local v1           #toleratedPanDistance:F
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 603
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_2

    .line 605
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 612
    :cond_8
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][FullScreenViewItemFrame][moveImageByX]this.item is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public moveImageByY(F)V
    .locals 7
    .parameter "delta"

    .prologue
    const/4 v4, 0x0

    .line 620
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, appliedPan:F
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_0

    .line 627
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v1, v2, v3

    .line 629
    .local v1, toleratedPanDistance:F
    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    .line 630
    move v0, p1

    .line 640
    .end local v1           #toleratedPanDistance:F
    :cond_0
    :goto_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 641
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v1, v2, v3

    .line 643
    .restart local v1       #toleratedPanDistance:F
    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    .line 644
    move v0, p1

    .line 653
    .end local v1           #toleratedPanDistance:F
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 654
    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 655
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 656
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 660
    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v2, :cond_8

    .line 663
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 670
    :goto_3
    return-void

    .line 631
    .restart local v1       #toleratedPanDistance:F
    :cond_3
    cmpl-float v2, v1, v4

    if-nez v2, :cond_4

    .line 632
    const/4 v0, 0x0

    goto :goto_0

    .line 634
    :cond_4
    move v0, v1

    goto :goto_0

    .line 645
    :cond_5
    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    .line 646
    const/4 v0, 0x0

    goto :goto_1

    .line 648
    :cond_6
    move v0, v1

    goto :goto_1

    .line 657
    .end local v1           #toleratedPanDistance:F
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 658
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    .line 660
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 667
    :cond_8
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][FullScreenViewItemFrame][moveImageByY]this.item is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 967
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v0, p1, :cond_1

    .line 969
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifiedItemTextureExpired NG - index error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureExpired()V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V
    .locals 7
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 909
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v4, p1, :cond_1

    .line 911
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifiedItemTextureReady NG - index error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v4, :cond_0

    .line 917
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v5, "double_tap_zoom_in"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v5, "double_tap_zoom_out"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 919
    :cond_2
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][FullScreenViewItemFrame]notifiedItemTextureReady, NOT notified because double tap zooming in/out"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_3
    const/4 v3, 0x0

    .line 925
    .local v3, sourceImageDimensionWidth:I
    const/4 v2, 0x0

    .line 926
    .local v2, sourceImageDimensionHeight:I
    const/4 v0, 0x0

    .line 928
    .local v0, checkTextureSizeUpdate:Z
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_5

    .line 932
    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    .line 933
    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    .line 934
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getHeight()I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 936
    :cond_4
    const/4 v0, 0x1

    .line 942
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureReady(Lcom/htc/sunny2/Texture;)V

    .line 944
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 946
    .local v1, galleryItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_6

    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_0

    .line 948
    :cond_6
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-eqz v4, :cond_7

    .line 949
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    .line 950
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    goto :goto_0

    .line 952
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 954
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 955
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 956
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 957
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "e"

    .prologue
    .line 1048
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDoubleTap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", zoom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1054
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject double click zoom due to frame position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const/4 v1, 0x1

    .line 1120
    :goto_0
    return v1

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1060
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to not zoomable."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v1, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "double_tap_zoom_in"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "double_tap_zoom_out"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1067
    :cond_2
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to zooming."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v1, 0x1

    goto :goto_0

    .line 1073
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 1075
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom out"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_out"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    .line 1082
    .local v0, zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1083
    const/4 v1, 0x1

    goto :goto_0

    .line 1088
    .end local v0           #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float v10, v1, v2

    .line 1089
    .local v10, doubleClickX:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v11, v1, v2

    .line 1091
    .local v11, doubleClickY:F
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1092
    .local v7, targetZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_5

    .line 1093
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1095
    :cond_5
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    mul-float v13, v7, v1

    .line 1096
    .local v13, targetImageWidth:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    mul-float v12, v7, v1

    .line 1098
    .local v12, targetImageHeight:F
    neg-float v1, v13

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float v8, v1, v2

    .line 1099
    .local v8, targetImageCenterX:F
    neg-float v1, v12

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float v9, v1, v2

    .line 1101
    .local v9, targetImageCenterY:F
    invoke-direct {p0, v13, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary(FF)V

    .line 1102
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v1, v8, v1

    if-gez v1, :cond_8

    .line 1103
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1106
    :cond_6
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v1, v9, v1

    if-gez v1, :cond_9

    .line 1107
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1111
    :cond_7
    :goto_2
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom in"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_in"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    .line 1118
    .restart local v0       #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1120
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1104
    .end local v0           #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    :cond_8
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v1, v8, v1

    if-lez v1, :cond_6

    .line 1105
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    .line 1108
    :cond_9
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v1, v9, v1

    if-lez v1, :cond_7

    .line 1109
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    goto :goto_2
.end method

.method public onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(F)V

    .line 404
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    neg-float v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(F)V

    .line 405
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doFling()V

    goto :goto_0
.end method

.method public panBegin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 509
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 514
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_2

    .line 517
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "panBegin()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 524
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 525
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 526
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 527
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 528
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 529
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 531
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 534
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnLeftBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_3
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 539
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnRightBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_4
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 544
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnTopBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_5
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 549
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnBottomBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanBeginIRT()V

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public panEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanEndIRT()V

    .line 900
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 901
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 902
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "panEnd()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_1
    return-void
.end method

.method public panX(F)F
    .locals 8
    .parameter "delta"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 676
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v4, :cond_0

    move v1, v3

    .line 802
    :goto_0
    return v1

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, appliedPan:F
    const/4 v1, 0x0

    .line 690
    .local v1, eatedPan:F
    cmpl-float v4, p1, v3

    if-lez v4, :cond_1

    .line 692
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v2, v4, v5

    .line 694
    .local v2, toleratedPanDistance:F
    cmpl-float v4, v2, p1

    if-lez v4, :cond_6

    .line 696
    move v0, p1

    .line 697
    move v1, p1

    .line 698
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v4, :cond_5

    .line 700
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, p1

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_4

    .line 702
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 703
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float v0, p1, v4

    .line 704
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float v1, p1, v4

    .line 739
    .end local v2           #toleratedPanDistance:F
    :cond_1
    :goto_1
    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    .line 741
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v2, v4, v5

    .line 743
    .restart local v2       #toleratedPanDistance:F
    cmpg-float v4, v2, p1

    if-gez v4, :cond_b

    .line 745
    move v0, p1

    .line 746
    move v1, p1

    .line 747
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v4, :cond_a

    .line 749
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, p1

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_9

    .line 751
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 752
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    add-float v0, p1, v3

    .line 753
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    add-float v1, p1, v3

    .line 789
    .end local v2           #toleratedPanDistance:F
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 790
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 791
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_e

    .line 793
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 799
    :cond_3
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto/16 :goto_0

    .line 708
    .restart local v2       #toleratedPanDistance:F
    :cond_4
    const/4 v0, 0x0

    .line 709
    const/4 v1, 0x0

    goto :goto_1

    .line 712
    :cond_5
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v4, :cond_1

    .line 714
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    goto :goto_1

    .line 717
    :cond_6
    cmpl-float v4, v2, v3

    if-nez v4, :cond_8

    .line 719
    const/4 v0, 0x0

    .line 720
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v4, :cond_7

    .line 722
    const/4 v1, 0x0

    .line 723
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto :goto_1

    .line 727
    :cond_7
    move v1, p1

    goto :goto_1

    .line 732
    :cond_8
    move v0, v2

    .line 733
    move v1, p1

    goto :goto_1

    .line 757
    :cond_9
    const/4 v0, 0x0

    .line 758
    const/4 v1, 0x0

    goto :goto_2

    .line 761
    :cond_a
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v3, :cond_2

    .line 763
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    goto :goto_2

    .line 766
    :cond_b
    cmpl-float v3, v2, v3

    if-nez v3, :cond_d

    .line 768
    const/4 v0, 0x0

    .line 769
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v3, :cond_c

    .line 771
    const/4 v1, 0x0

    .line 772
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto :goto_2

    .line 776
    :cond_c
    move v1, p1

    goto :goto_2

    .line 781
    :cond_d
    move v0, v2

    .line 782
    move v1, p1

    goto :goto_2

    .line 795
    .end local v2           #toleratedPanDistance:F
    :cond_e
    :try_start_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 797
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_3

    .line 799
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public panY(F)F
    .locals 8
    .parameter "delta"

    .prologue
    const/4 v3, 0x0

    .line 809
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v4, :cond_0

    move v1, v3

    .line 889
    :goto_0
    return v1

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, appliedPan:F
    const/4 v1, 0x0

    .line 823
    .local v1, eatedPan:F
    cmpl-float v4, p1, v3

    if-ltz v4, :cond_1

    .line 825
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v2, v4, v5

    .line 827
    .local v2, toleratedPanDistance:F
    cmpl-float v4, v2, p1

    if-lez v4, :cond_4

    .line 829
    move v0, p1

    .line 830
    move v1, p1

    .line 849
    .end local v2           #toleratedPanDistance:F
    :cond_1
    :goto_1
    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    .line 851
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v2, v4, v5

    .line 853
    .restart local v2       #toleratedPanDistance:F
    cmpg-float v4, v2, p1

    if-gez v4, :cond_7

    .line 855
    move v0, p1

    .line 856
    move v1, p1

    .line 874
    .end local v2           #toleratedPanDistance:F
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 875
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 876
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    .line 878
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 884
    :cond_3
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto :goto_0

    .line 832
    .restart local v2       #toleratedPanDistance:F
    :cond_4
    cmpl-float v4, v2, v3

    if-nez v4, :cond_6

    .line 834
    const/4 v0, 0x0

    .line 835
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    if-eqz v4, :cond_5

    .line 836
    const/4 v1, 0x0

    goto :goto_1

    .line 838
    :cond_5
    move v1, p1

    goto :goto_1

    .line 842
    :cond_6
    move v0, v2

    .line 843
    move v1, p1

    goto :goto_1

    .line 858
    :cond_7
    cmpl-float v3, v2, v3

    if-nez v3, :cond_9

    .line 860
    const/4 v0, 0x0

    .line 861
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    if-eqz v3, :cond_8

    .line 862
    const/4 v1, 0x0

    goto :goto_2

    .line 864
    :cond_8
    move v1, p1

    goto :goto_2

    .line 868
    :cond_9
    move v0, v2

    .line 869
    move v1, p1

    goto :goto_2

    .line 880
    .end local v2           #toleratedPanDistance:F
    :cond_a
    :try_start_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 882
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_3

    .line 884
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public refreshMediaSize(ILcom/htc/sunny2/IMediaData;)V
    .locals 3
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 341
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 346
    monitor-exit v1

    .line 348
    :cond_0
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromScene(Lcom/htc/sunny2/SceneNode;)V
    .locals 4
    .parameter "parentSceneNode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 293
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->detachFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 298
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 308
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 309
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    .line 312
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 313
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 314
    return-void

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sendInfoToImagePanAndZoomListener()V
    .locals 7

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    .line 1359
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onImageBoundsUpdateIRT(IIIIIF)V

    .line 1362
    :cond_0
    return-void

    .line 1359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFrameSize(FF)V
    .locals 3
    .parameter "frameWidth"
    .parameter "frameHeight"

    .prologue
    .line 467
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][setFrameSize] + , frameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 472
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 473
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 475
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 477
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "setFrameSize() NG - null item"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onFrameSizeUpdate(FF)V

    .line 482
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 484
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullScreenViewItemFrame][setFrameSize] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 396
    return-void
.end method

.method setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 1
    .parameter "itemPaintLayerInfo"

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V

    .line 1620
    :cond_0
    return-void
.end method

.method setItemPaintLayerTransparency(I)V
    .locals 1
    .parameter "transparency"

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintTransparency(I)V

    .line 1628
    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightExpired(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 386
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->resetConsumeRightFlag()V

    .line 390
    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightFlag(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 378
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setConsumeRightFlag()V

    .line 382
    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 492
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 493
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 494
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 500
    :cond_0
    return-void

    .line 494
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V
    .locals 3
    .parameter "renderThread"
    .parameter "sunnyEnvironment"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 139
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 140
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 141
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 184
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 185
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 228
    return-void
.end method

.method public unbindItem()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->unbindMediaData()V

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 362
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 363
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 365
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 373
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unzoom()V
    .locals 8

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1007
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    .line 1010
    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 1011
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 1013
    :cond_0
    return-void
.end method
