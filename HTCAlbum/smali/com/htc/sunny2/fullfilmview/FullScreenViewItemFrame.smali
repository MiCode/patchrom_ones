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
.field private final ENLARGE_FACTOR_FOR_SMALL_IMAGE:F

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

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_IN_FACTOR:F

    .line 50
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_OUT_FACTOR:F

    .line 52
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ENLARGE_FACTOR_FOR_SMALL_IMAGE:F

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    .line 58
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 60
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 62
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 63
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 65
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 66
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    .line 68
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 72
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 73
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 74
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 76
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 77
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 79
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 80
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 81
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 83
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 89
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 90
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 91
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 92
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 94
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 97
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 98
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 99
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 100
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 101
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 105
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 107
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 108
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 121
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    .line 122
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    .line 124
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 125
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 126
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 127
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 134
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 135
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 136
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

    .line 1368
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    .line 1370
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1371
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1372
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1373
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1398
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1379
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1380
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1388
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1390
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1391
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0

    .line 1384
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1385
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    .line 1395
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1396
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

    .line 1402
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1404
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1405
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1413
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 1415
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1416
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1423
    :goto_1
    return-void

    .line 1409
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1410
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_0

    .line 1420
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float v0, p2, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1421
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_1
.end method

.method private calculateDisplayImageLeftTopOnViewport()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 1351
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

    .line 1352
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

    .line 1353
    return-void
.end method

.method private calculateFitToScreenImageSize(FF)Z
    .locals 6
    .parameter "sourceImageWidth"
    .parameter "sourceImageHeight"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 1160
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

    .line 1162
    :cond_0
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "calculateInitDisplayImageSize() NG - zero value"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1164
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 1165
    const/4 v2, 0x0

    .line 1193
    :goto_0
    return v2

    .line 1168
    :cond_1
    mul-float v2, p1, v5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_2

    mul-float v2, p2, v5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1171
    :cond_2
    div-float v1, p2, p1

    .line 1172
    .local v1, imageAspect:F
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float v0, v2, v3

    .line 1174
    .local v0, frameAspect:F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_3

    .line 1176
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 1177
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1193
    .end local v0           #frameAspect:F
    .end local v1           #imageAspect:F
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1181
    .restart local v0       #frameAspect:F
    .restart local v1       #imageAspect:F
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1182
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1

    .line 1188
    .end local v0           #frameAspect:F
    .end local v1           #imageAspect:F
    :cond_4
    mul-float v2, p1, v5

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1189
    mul-float v2, p2, v5

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1
.end method

.method private getRotatedSourceImageHeight()I
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1154
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "getRotatedSourceImageHeight() NG - error degrees"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1149
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    .line 1152
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    .line 1145
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
    .line 1130
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1139
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "getRotatedSourceImageWidth() NG - error degrees"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1134
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    .line 1137
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    .line 1130
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

    .line 1339
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    .line 1340
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    .line 1341
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1342
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1343
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1344
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1345
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1346
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 1347
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

    .line 242
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - already added"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 281
    :goto_0
    return v0

    .line 250
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 251
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 255
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    .line 256
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create scene node"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunny2/SceneNode;)V

    move v0, v1

    .line 260
    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p3, v0}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 268
    invoke-virtual {p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 270
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_2

    .line 272
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create item"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunny2/SceneNode;)V

    move v0, v1

    .line 274
    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    .line 278
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 279
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->attachToSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public adjustZoomFactor(F)F
    .locals 1
    .parameter "factor"

    .prologue
    .line 1000
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1001
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1002
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1003
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1004
    :cond_1
    return p1
.end method

.method public adjustZoomFactorExtra(F)F
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3fa0

    .line 991
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 992
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float p1, v0, v1

    .line 993
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 994
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float p1, v0, v1

    .line 995
    :cond_1
    return p1
.end method

.method public bindItem(ILcom/htc/sunny2/IMediaData;)Z
    .locals 3
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 322
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 325
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 326
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 331
    monitor-exit v1

    .line 333
    const/4 v0, 0x1

    return v0

    .line 331
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
    .line 1427
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
    .line 1432
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

    .line 1198
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

    .line 1200
    :cond_0
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "calculateMaxMinZoomFactor() NG - zero value"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1202
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1203
    const/4 v4, 0x0

    .line 1334
    :goto_0
    return v4

    .line 1206
    :cond_1
    const/4 v0, 0x0

    .line 1207
    .local v0, isPanorama:Z
    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1209
    cmpl-float v4, p1, p2

    if-ltz v4, :cond_6

    .line 1226
    const/high16 v4, 0x437a

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    const/high16 v4, 0x4080

    mul-float/2addr v4, p2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    .line 1229
    const/4 v0, 0x1

    .line 1230
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v4, p2, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1231
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

    .line 1232
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1233
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1316
    .end local v3           #real:F
    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 1319
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1320
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    const v5, 0x3f99999a

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1329
    :goto_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    .line 1330
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1334
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1238
    :cond_4
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1239
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 1242
    const/high16 v2, 0x3f80

    .line 1243
    .local v2, rW:F
    const/high16 v1, 0x3f80

    .line 1244
    .local v1, rH:F
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 1246
    const/high16 v4, 0x4020

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1248
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v7, v4

    .line 1249
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v6, v4

    .line 1257
    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1258
    .restart local v3       #real:F
    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1259
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto :goto_1

    .line 1252
    .end local v3           #real:F
    :cond_5
    const/high16 v4, 0x4040

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1254
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v6, v4

    .line 1255
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v7, v4

    goto :goto_3

    .line 1279
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

    .line 1282
    const/4 v0, 0x1

    .line 1283
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v4, p1, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1284
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

    .line 1285
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1286
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    goto/16 :goto_1

    .line 1291
    .end local v3           #real:F
    :cond_7
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1292
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    .line 1295
    const/high16 v2, 0x3f80

    .line 1296
    .restart local v2       #rW:F
    const/high16 v1, 0x3f80

    .line 1297
    .restart local v1       #rH:F
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    .line 1299
    const/high16 v4, 0x4020

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1301
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v6, v4

    .line 1302
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v7, v4

    .line 1310
    :goto_4
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1311
    .restart local v3       #real:F
    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1312
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto/16 :goto_1

    .line 1305
    .end local v3           #real:F
    :cond_8
    const/high16 v4, 0x4040

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1307
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v7, v4

    .line 1308
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v6, v4

    goto :goto_4

    .line 1322
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

    .line 1327
    :cond_a
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][FullScreenViewItemFrame][calculateMaxMinDClickZoomFactor]panorama, don\'t adjust double tap and max zoom factor"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public cancelFling()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 452
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 453
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "Fling"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 454
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingEndIRT()V

    .line 462
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_0
    return-void
.end method

.method public clearRenderingEnvironment()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 236
    return-void
.end method

.method doFling()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;

    const-string v2, "Fling"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 447
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
    .line 1451
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1452
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_0

    .line 1454
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom]item is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    monitor-exit v1

    .line 1486
    :goto_0
    return-void

    .line 1458
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1460
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    .line 1465
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1466
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1468
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1469
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1471
    if-eqz p4, :cond_3

    .line 1473
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 1474
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 1475
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1478
    :cond_2
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 1479
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1483
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto :goto_0

    .line 1476
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1477
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1480
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1481
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

    .line 1490
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1492
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 1494
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom2]item is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    monitor-exit v1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1500
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1502
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    .line 1505
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1506
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1508
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1509
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1511
    if-eqz p5, :cond_4

    .line 1513
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 1514
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 1516
    if-ne p6, p7, :cond_5

    .line 1518
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1536
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 1538
    if-ne p6, p7, :cond_8

    .line 1540
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1559
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 1562
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1564
    if-eqz p4, :cond_c

    .line 1566
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    .line 1568
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoom]isPinchZooming, !onZoomMode, MAX = HQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_0

    .line 1522
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

    .line 1559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1525
    :cond_6
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1527
    if-ne p6, p7, :cond_7

    .line 1529
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1533
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

    .line 1544
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

    .line 1547
    :cond_9
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1549
    if-ne p6, p7, :cond_a

    .line 1551
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    .line 1555
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

    .line 1573
    :cond_b
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoom]isPinchZooming, onZoomMode, MAX = EQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    .line 1579
    :cond_c
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoom]!isPinchZooming, MAX = HQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0
.end method

.method doZoomBegin()V
    .locals 2

    .prologue
    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1438
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomBegin(F)V

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomBeginIRT()V

    .line 1447
    :cond_1
    return-void
.end method

.method doZoomEnd()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1589
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

    .line 1591
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomEnd(F)V

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomEndIRT()V

    .line 1599
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1601
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_2

    .line 1603
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_4

    .line 1605
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][FullScreenViewItemFrame][doZoomEnd]!onZoomMode, MAX = HQ"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    .line 1614
    :cond_2
    :goto_1
    return-void

    .line 1599
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1610
    :cond_4
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][FullScreenViewItemFrame][doZoomEnd]onZoomMode, MAX = EQ"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_1
.end method

.method public getFitToScreenImageHeight()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    return v0
.end method

.method public getFitToScreenImageWidth()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    return v0
.end method

.method public getFrameHeight()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method public getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    return v0
.end method

.method public getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 1019
    if-nez p1, :cond_0

    .line 1021
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemInfo"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_0
    return v0

    .line 1025
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v1, :cond_1

    .line 1027
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemIndex"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1032
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    .line 1033
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->positionOffset:F

    .line 1034
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    .line 1036
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    .line 1037
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    .line 1038
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    .line 1039
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    .line 1040
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    .line 1041
    monitor-exit v1

    .line 1042
    const/4 v0, 0x1

    goto :goto_0

    .line 1041
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
    .line 506
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    return v0
.end method

.method public isItemZoomable()Z
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v0, :cond_0

    .line 984
    const/4 v0, 0x0

    .line 986
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

    .line 563
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, appliedPan:F
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_0

    .line 571
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v1, v2, v3

    .line 573
    .local v1, toleratedPanDistance:F
    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    .line 574
    move v0, p1

    .line 585
    .end local v1           #toleratedPanDistance:F
    :cond_0
    :goto_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 586
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v1, v2, v3

    .line 588
    .restart local v1       #toleratedPanDistance:F
    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    .line 589
    move v0, p1

    .line 600
    .end local v1           #toleratedPanDistance:F
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 601
    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 602
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    .line 603
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 607
    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v2, :cond_8

    .line 610
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 616
    :goto_3
    return-void

    .line 575
    .restart local v1       #toleratedPanDistance:F
    :cond_3
    cmpl-float v2, v1, v4

    if-nez v2, :cond_4

    .line 576
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_4
    move v0, v1

    goto :goto_0

    .line 590
    :cond_5
    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    .line 591
    const/4 v0, 0x0

    goto :goto_1

    .line 593
    :cond_6
    move v0, v1

    goto :goto_1

    .line 604
    .end local v1           #toleratedPanDistance:F
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 605
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_2

    .line 607
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 614
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

    .line 622
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, appliedPan:F
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_0

    .line 629
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v1, v2, v3

    .line 631
    .local v1, toleratedPanDistance:F
    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    .line 632
    move v0, p1

    .line 642
    .end local v1           #toleratedPanDistance:F
    :cond_0
    :goto_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 643
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v1, v2, v3

    .line 645
    .restart local v1       #toleratedPanDistance:F
    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    .line 646
    move v0, p1

    .line 655
    .end local v1           #toleratedPanDistance:F
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 656
    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 657
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 658
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 662
    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v2, :cond_8

    .line 665
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 672
    :goto_3
    return-void

    .line 633
    .restart local v1       #toleratedPanDistance:F
    :cond_3
    cmpl-float v2, v1, v4

    if-nez v2, :cond_4

    .line 634
    const/4 v0, 0x0

    goto :goto_0

    .line 636
    :cond_4
    move v0, v1

    goto :goto_0

    .line 647
    :cond_5
    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    .line 648
    const/4 v0, 0x0

    goto :goto_1

    .line 650
    :cond_6
    move v0, v1

    goto :goto_1

    .line 659
    .end local v1           #toleratedPanDistance:F
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 660
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    .line 662
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 669
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
    .line 969
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v0, p1, :cond_1

    .line 971
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

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureExpired()V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V
    .locals 7
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 911
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v4, p1, :cond_1

    .line 913
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

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v4, :cond_0

    .line 919
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

    .line 921
    :cond_2
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][FullScreenViewItemFrame]notifiedItemTextureReady, NOT notified because double tap zooming in/out"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_3
    const/4 v3, 0x0

    .line 927
    .local v3, sourceImageDimensionWidth:I
    const/4 v2, 0x0

    .line 928
    .local v2, sourceImageDimensionHeight:I
    const/4 v0, 0x0

    .line 930
    .local v0, checkTextureSizeUpdate:Z
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_5

    .line 934
    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    .line 935
    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    .line 936
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getHeight()I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 938
    :cond_4
    const/4 v0, 0x1

    .line 944
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureReady(Lcom/htc/sunny2/Texture;)V

    .line 946
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 948
    .local v1, galleryItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_6

    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_0

    .line 950
    :cond_6
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-eqz v4, :cond_7

    .line 951
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    .line 952
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    goto :goto_0

    .line 954
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 956
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 957
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 958
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 959
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
    .line 1050
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

    .line 1054
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1056
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

    .line 1057
    const/4 v1, 0x1

    .line 1122
    :goto_0
    return v1

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1062
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to not zoomable."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const/4 v1, 0x1

    goto :goto_0

    .line 1066
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

    .line 1069
    :cond_2
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to zooming."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const/4 v1, 0x1

    goto :goto_0

    .line 1075
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 1077
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom out"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
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

    .line 1084
    .local v0, zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1085
    const/4 v1, 0x1

    goto :goto_0

    .line 1090
    .end local v0           #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float v10, v1, v2

    .line 1091
    .local v10, doubleClickX:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v11, v1, v2

    .line 1093
    .local v11, doubleClickY:F
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1094
    .local v7, targetZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_5

    .line 1095
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1097
    :cond_5
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    mul-float v13, v7, v1

    .line 1098
    .local v13, targetImageWidth:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    mul-float v12, v7, v1

    .line 1100
    .local v12, targetImageHeight:F
    neg-float v1, v13

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float v8, v1, v2

    .line 1101
    .local v8, targetImageCenterX:F
    neg-float v1, v12

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float v9, v1, v2

    .line 1103
    .local v9, targetImageCenterY:F
    invoke-direct {p0, v13, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary(FF)V

    .line 1104
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v1, v8, v1

    if-gez v1, :cond_8

    .line 1105
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1108
    :cond_6
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v1, v9, v1

    if-gez v1, :cond_9

    .line 1109
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1113
    :cond_7
    :goto_2
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom in"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_in"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    .line 1120
    .restart local v0       #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1122
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1106
    .end local v0           #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    :cond_8
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v1, v8, v1

    if-lez v1, :cond_6

    .line 1107
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    .line 1110
    :cond_9
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v1, v9, v1

    if-lez v1, :cond_7

    .line 1111
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
    .line 402
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(F)V

    .line 406
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    neg-float v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(F)V

    .line 407
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doFling()V

    goto :goto_0
.end method

.method public panBegin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 516
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_2

    .line 519
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 558
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "panBegin()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 526
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 527
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 528
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 529
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 530
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 531
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 533
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 536
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnLeftBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_3
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 541
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnRightBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_4
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 546
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnTopBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_5
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 551
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "panStartOnBottomBorder"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanBeginIRT()V

    goto :goto_0

    .line 553
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

    .line 896
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanEndIRT()V

    .line 902
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 903
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 904
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "panEnd()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
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

    .line 678
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v4, :cond_0

    move v1, v3

    .line 804
    :goto_0
    return v1

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, appliedPan:F
    const/4 v1, 0x0

    .line 692
    .local v1, eatedPan:F
    cmpl-float v4, p1, v3

    if-lez v4, :cond_1

    .line 694
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v2, v4, v5

    .line 696
    .local v2, toleratedPanDistance:F
    cmpl-float v4, v2, p1

    if-lez v4, :cond_6

    .line 698
    move v0, p1

    .line 699
    move v1, p1

    .line 700
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v4, :cond_5

    .line 702
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, p1

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_4

    .line 704
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 705
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float v0, p1, v4

    .line 706
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float v1, p1, v4

    .line 741
    .end local v2           #toleratedPanDistance:F
    :cond_1
    :goto_1
    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    .line 743
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v2, v4, v5

    .line 745
    .restart local v2       #toleratedPanDistance:F
    cmpg-float v4, v2, p1

    if-gez v4, :cond_b

    .line 747
    move v0, p1

    .line 748
    move v1, p1

    .line 749
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v4, :cond_a

    .line 751
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    add-float/2addr v4, p1

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_9

    .line 753
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 754
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    add-float v0, p1, v3

    .line 755
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    add-float v1, p1, v3

    .line 791
    .end local v2           #toleratedPanDistance:F
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 792
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 793
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_e

    .line 795
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 801
    :cond_3
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto/16 :goto_0

    .line 710
    .restart local v2       #toleratedPanDistance:F
    :cond_4
    const/4 v0, 0x0

    .line 711
    const/4 v1, 0x0

    goto :goto_1

    .line 714
    :cond_5
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v4, :cond_1

    .line 716
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    goto :goto_1

    .line 719
    :cond_6
    cmpl-float v4, v2, v3

    if-nez v4, :cond_8

    .line 721
    const/4 v0, 0x0

    .line 722
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v4, :cond_7

    .line 724
    const/4 v1, 0x0

    .line 725
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto :goto_1

    .line 729
    :cond_7
    move v1, p1

    goto :goto_1

    .line 734
    :cond_8
    move v0, v2

    .line 735
    move v1, p1

    goto :goto_1

    .line 759
    :cond_9
    const/4 v0, 0x0

    .line 760
    const/4 v1, 0x0

    goto :goto_2

    .line 763
    :cond_a
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v3, :cond_2

    .line 765
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    goto :goto_2

    .line 768
    :cond_b
    cmpl-float v3, v2, v3

    if-nez v3, :cond_d

    .line 770
    const/4 v0, 0x0

    .line 771
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v3, :cond_c

    .line 773
    const/4 v1, 0x0

    .line 774
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto :goto_2

    .line 778
    :cond_c
    move v1, p1

    goto :goto_2

    .line 783
    :cond_d
    move v0, v2

    .line 784
    move v1, p1

    goto :goto_2

    .line 797
    .end local v2           #toleratedPanDistance:F
    :cond_e
    :try_start_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 799
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_3

    .line 801
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

    .line 811
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v4, :cond_0

    move v1, v3

    .line 891
    :goto_0
    return v1

    .line 818
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, appliedPan:F
    const/4 v1, 0x0

    .line 825
    .local v1, eatedPan:F
    cmpl-float v4, p1, v3

    if-ltz v4, :cond_1

    .line 827
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v2, v4, v5

    .line 829
    .local v2, toleratedPanDistance:F
    cmpl-float v4, v2, p1

    if-lez v4, :cond_4

    .line 831
    move v0, p1

    .line 832
    move v1, p1

    .line 851
    .end local v2           #toleratedPanDistance:F
    :cond_1
    :goto_1
    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    .line 853
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v2, v4, v5

    .line 855
    .restart local v2       #toleratedPanDistance:F
    cmpg-float v4, v2, p1

    if-gez v4, :cond_7

    .line 857
    move v0, p1

    .line 858
    move v1, p1

    .line 876
    .end local v2           #toleratedPanDistance:F
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 877
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 878
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    .line 880
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 886
    :cond_3
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto :goto_0

    .line 834
    .restart local v2       #toleratedPanDistance:F
    :cond_4
    cmpl-float v4, v2, v3

    if-nez v4, :cond_6

    .line 836
    const/4 v0, 0x0

    .line 837
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    if-eqz v4, :cond_5

    .line 838
    const/4 v1, 0x0

    goto :goto_1

    .line 840
    :cond_5
    move v1, p1

    goto :goto_1

    .line 844
    :cond_6
    move v0, v2

    .line 845
    move v1, p1

    goto :goto_1

    .line 860
    :cond_7
    cmpl-float v3, v2, v3

    if-nez v3, :cond_9

    .line 862
    const/4 v0, 0x0

    .line 863
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    if-eqz v3, :cond_8

    .line 864
    const/4 v1, 0x0

    goto :goto_2

    .line 866
    :cond_8
    move v1, p1

    goto :goto_2

    .line 870
    :cond_9
    move v0, v2

    .line 871
    move v1, p1

    goto :goto_2

    .line 882
    .end local v2           #toleratedPanDistance:F
    :cond_a
    :try_start_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 884
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_3

    .line 886
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
    .line 338
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 342
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 343
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 348
    monitor-exit v1

    .line 350
    :cond_0
    return-void

    .line 348
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

    .line 286
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->detachFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 300
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 310
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 311
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    .line 314
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 315
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 316
    return-void

    .line 295
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
    .line 1357
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    .line 1361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
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

    .line 1364
    :cond_0
    return-void

    .line 1361
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
    .line 469
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

    .line 470
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 474
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 475
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 477
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 479
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "setFrameSize() NG - null item"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onFrameSizeUpdate(FF)V

    .line 484
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullScreenViewItemFrame][setFrameSize] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
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
    .line 396
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 398
    return-void
.end method

.method setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 1
    .parameter "itemPaintLayerInfo"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V

    .line 1622
    :cond_0
    return-void
.end method

.method setItemPaintLayerTransparency(I)V
    .locals 1
    .parameter "transparency"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintTransparency(I)V

    .line 1630
    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightExpired(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 388
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->resetConsumeRightFlag()V

    .line 392
    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightFlag(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 380
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setConsumeRightFlag()V

    .line 384
    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 494
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 495
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 496
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunny2/SceneNode;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 502
    :cond_0
    return-void

    .line 496
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
    .line 140
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 141
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 142
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 143
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 186
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 187
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 230
    return-void
.end method

.method public unbindItem()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->unbindMediaData()V

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 364
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 365
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 367
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 375
    monitor-exit v1

    .line 376
    return-void

    .line 375
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

    .line 1009
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    .line 1012
    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 1013
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 1015
    :cond_0
    return-void
.end method
