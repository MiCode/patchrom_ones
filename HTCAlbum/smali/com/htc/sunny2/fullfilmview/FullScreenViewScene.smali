.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    }
.end annotation


# static fields
.field private static final ANIM_ALIGN:Ljava/lang/String; = "Align"

.field public static final ANIM_FULL_TO_FILM_ENTER_VELOCITY:F = 900.0f

.field private static final ANIM_TO_FILMSTRIP_DISTANCE_THRESHOLD:F = 20.0f

.field private static final ANIM_TO_FILMSTRIP_TIME_THRESHOLD:I = 0x5dc

.field private static final FRAMES_ALIGNING:I = 0x1

.field private static final FRAMES_COUNT:I = 0x3

.field private static final FRAMES_IDLE:I = 0x0

.field private static final LTAG:Ljava/lang/String; = "FSVScene"

.field private static final PANNING_ACTION_NAME:Ljava/lang/String; = "FullScreenPan"

.field private static final PAN_RECORDS_COUNT:I = 0x3


# instance fields
.field private centerFrameIndex:I

.field private currentItemIndex:I

.field private frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private isCurrentIndexSet:Z

.field private itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

.field private itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

.field private itemInterval:I

.field private itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

.field private itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private itemsCount:I

.field private lastStatus:I

.field private mInTransition:Z

.field private mIsPanning:Z

.field private mIsStartPanningOnLeftBorder:Z

.field private mIsStartPanningOnRightBorder:Z

.field protected mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

.field private mShouldLockPanningOnLeftBorder:Z

.field private mShouldLockPanningOnRightBorder:Z

.field private mediaList:Lcom/htc/sunny2/IMediaList;

.field private panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

.field private panRecordIndexToAdd:I

.field private panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

.field private pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

.field private recordPanBegin:Z

.field private renderThread:Lcom/htc/sunny2/RenderThread;

.field protected scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

.field private viewportHeight:I

.field private viewportWidth:I

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 6
    .parameter "fullFilmView3D"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 242
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    .line 247
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 249
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 251
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 252
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 253
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 255
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 256
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 257
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    .line 261
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 262
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 264
    new-array v1, v5, [Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 265
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 267
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 269
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 271
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 272
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 274
    new-array v1, v5, [Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    .line 275
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    .line 276
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 278
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    .line 280
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    .line 281
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    .line 282
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    .line 284
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    .line 285
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 286
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 287
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    .line 288
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    .line 289
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    .line 290
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    .line 291
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    .line 297
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 298
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 302
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    aput-object v2, v1, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 307
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    invoke-direct {v2, p0, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;)V

    aput-object v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_1
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    const-string v2, "PinchZoomAnimator"

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    .line 311
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    const-string v2, "ItemClickInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    .line 312
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    const-string v2, "ItemInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    .line 313
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    const-string v2, "TtemPaintLayerTransparencySetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    .line 315
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    const-string v2, "FullScreenPan"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/IMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    return-void
.end method

.method static synthetic access$2102(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    return v0
.end method

.method private checkStartPanningOnBorder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1444
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    .line 1445
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    .line 1446
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    .line 1447
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    .line 1449
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1451
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    .line 1452
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    .line 1454
    :cond_0
    return-void
.end method

.method private doCurrentFrameHoming()V
    .locals 3

    .prologue
    .line 1227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1229
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v0, v1, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_3

    .line 1242
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    if-eqz v1, :cond_3

    .line 1245
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    .line 1253
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 1254
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sendInfoToImagePanAndZoomListener()V

    .line 1255
    return-void
.end method

.method private doCurrentFrameLeaving()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 1265
    return-void
.end method

.method private doFramesOffset(F)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x0

    .line 1271
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1272
    .local v0, centerFrameX:F
    add-float/2addr v0, p1

    .line 1279
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, v3, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 1281
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1283
    const-string v1, "FSVScene"

    const-string v2, "doFramesOffset() NG - layoutSceneAndBindItem"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    return-void
.end method

.method private getFrameIndexFromItemIndex(I)I
    .locals 6
    .parameter "itemIndex"

    .prologue
    const/4 v5, 0x3

    const/4 v3, -0x1

    .line 1538
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v1, p1, v4

    .line 1539
    .local v1, indexDiffFromCenter:I
    const/4 v2, 0x1

    .line 1540
    .local v2, sideFramesCount:I
    if-gt v1, v2, :cond_0

    neg-int v4, v2

    if-ge v1, v4, :cond_2

    :cond_0
    move v0, v3

    .line 1557
    :cond_1
    :goto_0
    return v0

    .line 1545
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v4, v1

    .line 1546
    .local v0, frameIndex:I
    if-gez v0, :cond_5

    .line 1547
    add-int/lit8 v0, v0, 0x3

    .line 1551
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    if-lt v0, v5, :cond_1

    .line 1553
    :cond_4
    const-string v4, "FSVScene"

    const-string v5, "getFrameIndexFromItemIndex NG - index error"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 1554
    goto :goto_0

    .line 1548
    :cond_5
    if-lt v0, v5, :cond_3

    .line 1549
    add-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method

.method private getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 2

    .prologue
    .line 1477
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    .line 1478
    .local v0, lastPanRecordIndex:I
    if-gez v0, :cond_0

    .line 1480
    const/4 v0, 0x2

    .line 1482
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getLastPanVelocity()F
    .locals 2

    .prologue
    .line 1528
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    .line 1529
    .local v0, lastPan:I
    if-gez v0, :cond_0

    .line 1530
    const/4 v0, 0x2

    .line 1533
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    return v1
.end method

.method private layoutSceneAndBindItem()Z
    .locals 12

    .prologue
    .line 1131
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    if-nez v9, :cond_1

    .line 1133
    :cond_0
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - render not setup"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v9, 0x0

    .line 1222
    :goto_0
    return v9

    .line 1136
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v9}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v9

    if-nez v9, :cond_2

    .line 1138
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - scene not setup"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const/4 v9, 0x0

    goto :goto_0

    .line 1141
    :cond_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-nez v9, :cond_4

    .line 1143
    :cond_3
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero viewport"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v9, 0x0

    goto :goto_0

    .line 1146
    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v9, :cond_5

    .line 1148
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero mediaList"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v9, 0x0

    goto :goto_0

    .line 1151
    :cond_5
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_7

    .line 1153
    :cond_6
    const-string v9, "FSVScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG - error centerFrameIndex "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const/4 v9, 0x0

    goto :goto_0

    .line 1157
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1159
    .local v0, centerFrameX:F
    const/4 v8, 0x1

    .line 1161
    .local v8, sideFramesCount:I
    neg-int v4, v8

    .local v4, i:I
    :goto_1
    if-gt v4, v8, :cond_10

    .line 1165
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v5, v9, v4

    .line 1166
    .local v5, itemIndex:I
    if-ltz v5, :cond_b

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v5, v9, :cond_b

    const/4 v6, 0x1

    .line 1168
    .local v6, itemIndexValid:Z
    :goto_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v1, v9, v4

    .line 1169
    .local v1, frameIndex:I
    if-gez v1, :cond_8

    .line 1171
    add-int/lit8 v1, v1, 0x3

    .line 1173
    :cond_8
    const/4 v9, 0x3

    if-lt v1, v9, :cond_9

    .line 1175
    add-int/lit8 v1, v1, -0x3

    .line 1177
    :cond_9
    if-ltz v1, :cond_a

    const/4 v9, 0x3

    if-lt v1, v9, :cond_c

    .line 1179
    :cond_a
    const-string v9, "FSVScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1166
    .end local v1           #frameIndex:I
    .end local v6           #itemIndexValid:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 1183
    .restart local v1       #frameIndex:I
    .restart local v6       #itemIndexValid:Z
    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v2

    .line 1189
    .local v2, frameItemIndex:I
    if-eqz v6, :cond_f

    .line 1191
    if-eq v2, v5, :cond_e

    .line 1193
    const/4 v7, 0x0

    .line 1194
    .local v7, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v9, :cond_d

    .line 1196
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v9, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    .line 1201
    :cond_d
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9, v5, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    .line 1214
    .end local v7           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_e
    :goto_4
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    int-to-float v9, v9

    add-float v3, v0, v9

    .line 1216
    .local v3, framePositionX:F
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    goto :goto_3

    .line 1206
    .end local v3           #framePositionX:F
    :cond_f
    const/4 v9, -0x1

    if-eq v2, v9, :cond_e

    .line 1208
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_4

    .line 1222
    .end local v1           #frameIndex:I
    .end local v2           #frameItemIndex:I
    .end local v5           #itemIndex:I
    .end local v6           #itemIndexValid:Z
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private recordPanBegin(IF)V
    .locals 3
    .parameter "currentItemIndex"
    .parameter "currentFramePosition"

    .prologue
    .line 1430
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    .line 1435
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    .line 1436
    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    .line 1437
    iput p2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    .line 1438
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 1439
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    goto :goto_0
.end method

.method private recordPanEnd(IF)V
    .locals 7
    .parameter "currentItemIndex"
    .parameter "currentFramePosition"

    .prologue
    const/4 v6, 0x0

    .line 1458
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    if-nez v1, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    .line 1462
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    sub-float v1, p2, v1

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 1464
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    .line 1466
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    .line 1468
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 1469
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1471
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    goto :goto_0
.end method

.method private shouldAnimateToFilmstripView()Z
    .locals 12

    .prologue
    const/4 v11, -0x3

    const/4 v10, 0x3

    const/4 v5, 0x0

    .line 1487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1489
    .local v0, currentTime:J
    const/4 v2, 0x0

    .line 1491
    .local v2, directionNote:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v10, :cond_3

    .line 1493
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v4, v6, v3

    .line 1494
    .local v4, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v7, 0x41a0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v7, -0x3e60

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1523
    .end local v4           #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_0
    :goto_1
    return v5

    .line 1497
    .restart local v4       #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_1
    iget-wide v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    const-wide/16 v8, 0x5dc

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 1500
    iget-boolean v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    if-eqz v6, :cond_0

    .line 1503
    iget v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 1504
    add-int/lit8 v2, v2, 0x1

    .line 1491
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1506
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1509
    .end local v4           #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_3
    if-eq v2, v10, :cond_4

    if-ne v2, v11, :cond_0

    .line 1514
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-nez v6, :cond_5

    if-eq v2, v10, :cond_0

    :cond_5
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    if-eq v2, v11, :cond_0

    .line 1519
    :cond_6
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4461

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 1523
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public KeyUpMotion(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 974
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 979
    :cond_0
    move v4, p1

    .line 980
    .local v4, newCurrentItemIndex:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v7, v4, v7

    add-int v3, v6, v7

    .line 982
    .local v3, newCenterFrameIndex:I
    :goto_1
    if-lt v3, v8, :cond_1

    .line 984
    add-int/lit8 v3, v3, -0x3

    goto :goto_1

    .line 986
    :cond_1
    :goto_2
    if-gez v3, :cond_2

    .line 988
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 992
    :cond_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-eq v4, v6, :cond_6

    const/4 v0, 0x1

    .line 993
    .local v0, currentItemIndexChanged:Z
    :goto_3
    if-eqz v0, :cond_5

    .line 996
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v6, :cond_3

    .line 998
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1001
    :cond_3
    const/4 v2, 0x0

    .line 1002
    .local v2, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v6, :cond_4

    .line 1004
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v6, v7}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 1005
    if-eqz v2, :cond_4

    .line 1006
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v6, v7, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    .line 1008
    :cond_4
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 1010
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 1011
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 1013
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 1016
    .end local v2           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_5
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v5

    iput-boolean v0, v5, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 1018
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1020
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v7

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    goto :goto_0

    .end local v0           #currentItemIndexChanged:Z
    :cond_6
    move v0, v5

    .line 992
    goto :goto_3

    .line 1024
    .restart local v0       #currentItemIndexChanged:Z
    :cond_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v8, :cond_9

    .line 1026
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v1, v5, :cond_8

    .line 1028
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1024
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1031
    :cond_9
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto/16 :goto_0
.end method

.method public bindMediaList(Lcom/htc/sunny2/IMediaList;)Z
    .locals 4
    .parameter "mediaList"

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 592
    if-nez p1, :cond_0

    .line 607
    :goto_0
    return v0

    .line 597
    :cond_0
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMediaList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 600
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 601
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 602
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 603
    const-string v0, "FSVScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][FullScreenViewScene][bindMediaList]isCurrentIndexSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIRT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 607
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRenderingEnvironment()V
    .locals 3

    .prologue
    .line 333
    const-string v1, "FSVScene"

    const-string v2, "clearRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 338
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->clearRenderingEnvironment()V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public clearScene(Lcom/htc/sunny2/SceneNode;)V
    .locals 5
    .parameter "parentSceneNode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 549
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 552
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 558
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 560
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 563
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v1, :cond_3

    .line 570
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 572
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v1}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 573
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 576
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    if-eqz v1, :cond_4

    .line 578
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->freeShareResources()V

    .line 579
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 582
    :cond_4
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 583
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 584
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 586
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 587
    return-void
.end method

.method doCenterAlign()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1403
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    .line 1405
    .local v4, centerFramePositionX:F
    cmpl-float v0, v4, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1408
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    const-string v3, "Align"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    cmpl-float v0, v4, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    .line 1415
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_3

    .line 1417
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 1421
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    .line 1423
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    goto :goto_0
.end method

.method public getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 790
    if-nez p1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v2, :cond_0

    .line 798
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 5
    .parameter "itemInfo"

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 763
    if-nez p1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v0

    .line 766
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v1, v2, :cond_2

    .line 768
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 774
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 778
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v2, :cond_4

    .line 780
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentItemInfoIHT NG - index error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 784
    :cond_4
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInOutAnimation(Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;ILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)Lcom/htc/sunny2/RenderThreadAction;
    .locals 24
    .parameter "bundle"
    .parameter "listener"
    .parameter "viewRoot"
    .parameter "touchedGridViewItemIndex"
    .parameter "endListener"

    .prologue
    .line 1842
    if-nez p1, :cond_2

    .line 1843
    const-string v5, "FSVScene"

    const-string v6, "Bundle is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1845
    :cond_0
    if-eqz p3, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1846
    :cond_1
    const/4 v4, 0x0

    .line 1888
    :goto_0
    return-object v4

    .line 1849
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v11, v5, v6

    .line 1850
    .local v11, frame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    if-nez v11, :cond_5

    .line 1851
    const-string v5, "FSVScene"

    const-string v6, "[FullScreenViewScene][animationInIRT] Fullscreen frame is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1853
    :cond_3
    if-eqz p3, :cond_4

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1854
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 1857
    :cond_5
    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v8

    .line 1858
    .local v8, item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    if-nez v8, :cond_8

    .line 1859
    const-string v5, "FSVScene"

    const-string v6, "[FullScreenViewScene][animationInIRT] Fullscreen item is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1861
    :cond_6
    if-eqz p3, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1862
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 1865
    :cond_8
    const-string v5, "TO_WIDTH"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v21

    .line 1866
    .local v21, toWidth:F
    const-string v5, "TO_HEIGHT"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v20

    .line 1867
    .local v20, toHeight:F
    const-string v5, "FROM_WIDTH"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v17

    .line 1868
    .local v17, fromWidth:F
    const-string v5, "FROM_HEIGHT"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v16

    .line 1869
    .local v16, fromHeight:F
    const-string v5, "FROM_X"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1870
    .local v18, fromX:I
    const-string v5, "FROM_Y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1871
    .local v19, fromY:I
    const-string v5, "TO_X"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 1872
    .local v22, toX:I
    const-string v5, "TO_Y"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 1873
    .local v23, toY:I
    const/4 v12, 0x0

    .line 1874
    .local v12, isIn:Z
    const-string v5, "ANIMATION_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1882
    :goto_1
    :pswitch_0
    const-string v5, "DURATION"

    const/16 v6, 0x12c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1883
    .local v13, duration:I
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;

    const-string v7, "FullscreenviewScene"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v4 .. v15}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;ZIILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)V

    .line 1884
    .local v4, animation:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setScale(FFFF)V

    .line 1885
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setTransition(IIII)V

    goto/16 :goto_0

    .line 1876
    .end local v4           #animation:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
    .end local v13           #duration:I
    :pswitch_1
    const/4 v12, 0x1

    .line 1877
    goto :goto_1

    .line 1879
    :pswitch_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1874
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemClickInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;)Z
    .locals 5
    .parameter "itemClickInfo"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 724
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 729
    :cond_1
    iput v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    .line 730
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 732
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 734
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    goto :goto_0

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 739
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1585
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    .prologue
    .line 2127
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->hideDRMIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    :goto_0
    return-void

    .line 2129
    :catch_0
    move-exception v0

    .line 2131
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FSVScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][hideDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isInTransition()Z
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return v0
.end method

.method isZoomed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1799
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1803
    :cond_0
    return v0
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 716
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureExpired(I)V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V
    .locals 2
    .parameter "itemIndex"
    .parameter "texture"

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 705
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1568
    .local v0, frameIndex:I
    if-gez v0, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    const/4 v1, 0x0

    .line 1575
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_0

    .line 1579
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1580
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    goto :goto_0
.end method

.method onChildFrameZoomBegin(F)V
    .locals 3
    .parameter "zoomFactor"

    .prologue
    .line 1772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1773
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1775
    :cond_0
    return-void
.end method

.method onChildFrameZoomEnd(F)V
    .locals 4
    .parameter "zoomFactor"

    .prologue
    const/4 v3, 0x0

    .line 1784
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1786
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    .line 1787
    return-void
.end method

.method onChildFrameZooming(F)V
    .locals 0
    .parameter "zoomFactor"

    .prologue
    .line 1780
    return-void
.end method

.method public onDRMPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 2139
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onDRMPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    :goto_0
    return-void

    .line 2141
    :catch_0
    move-exception v0

    .line 2143
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FSVScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][onDRMPressed] NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 1079
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v0, v1, :cond_1

    .line 1081
    :cond_0
    const-string v0, "FSVScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap() NG - error idnex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_0
    return v3

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    .line 1086
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 814
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->cancelFling()V

    .line 820
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 821
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 823
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin(IF)V

    .line 824
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->checkStartPanningOnBorder()V

    .line 826
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 830
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1074
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 1075
    return-void
.end method

.method public onLayout(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 688
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 689
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 691
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setFrameSize(FF)V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 698
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    .line 700
    return-void
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x3

    .line 1640
    move v1, p1

    .line 1641
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    .line 1643
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1644
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1646
    add-int/lit8 v0, v0, 0x3

    .line 1648
    :cond_0
    if-lt v0, v7, :cond_1

    .line 1650
    add-int/lit8 v0, v0, -0x3

    .line 1652
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    .line 1654
    :cond_2
    const-string v4, "FSVScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layoutSceneAndBindItem() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :goto_1
    return-void

    .line 1641
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1658
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_6

    .line 1660
    const/4 v3, 0x0

    .line 1661
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_5

    .line 1663
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 1666
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    goto :goto_1

    .line 1670
    .end local v3           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x3

    .line 1677
    move v1, p1

    .line 1678
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    .line 1680
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1681
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1683
    add-int/lit8 v0, v0, 0x3

    .line 1685
    :cond_0
    if-lt v0, v7, :cond_1

    .line 1687
    add-int/lit8 v0, v0, -0x3

    .line 1689
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    .line 1691
    :cond_2
    const-string v4, "FSVScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaItemRefreshSizeIRT() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :goto_1
    return-void

    .line 1678
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1695
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_6

    .line 1697
    const/4 v3, 0x0

    .line 1698
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_5

    .line 1700
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 1703
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->refreshMediaSize(ILcom/htc/sunny2/IMediaData;)V

    goto :goto_1

    .line 1707
    .end local v3           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightExpiredIRT(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x3

    .line 1742
    move v1, p1

    .line 1743
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    .line 1745
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1746
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1748
    add-int/lit8 v0, v0, 0x3

    .line 1750
    :cond_0
    if-lt v0, v6, :cond_1

    .line 1752
    add-int/lit8 v0, v0, -0x3

    .line 1754
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    .line 1756
    :cond_2
    const-string v3, "FSVScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemSetConsumeRightExpiredIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :goto_1
    return-void

    .line 1743
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1760
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    .line 1762
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightExpired(I)V

    goto :goto_1

    .line 1766
    :cond_5
    const-string v3, "FSVScene"

    const-string v4, "onMediaItemSetConsumeRightExpiredIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightFlagIRT(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x3

    .line 1712
    move v1, p1

    .line 1713
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    .line 1715
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1716
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1718
    add-int/lit8 v0, v0, 0x3

    .line 1720
    :cond_0
    if-lt v0, v6, :cond_1

    .line 1722
    add-int/lit8 v0, v0, -0x3

    .line 1724
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    .line 1726
    :cond_2
    const-string v3, "FSVScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemConsumeRightIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :goto_1
    return-void

    .line 1713
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1730
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    .line 1732
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightFlag(I)V

    goto :goto_1

    .line 1736
    :cond_5
    const-string v3, "FSVScene"

    const-string v4, "onMediaItemConsumeRightIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    .line 1117
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleIRT(Landroid/view/ScaleGestureDetector;)Z

    .line 1118
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    .line 1092
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return v3

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isItemZoomable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleBeginIRT(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V

    .line 1124
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panBegin()V

    .line 1044
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 1045
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    .line 1050
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    .line 1052
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    :cond_1
    :goto_0
    return-void

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_4

    .line 1059
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "FullScreenPan"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1061
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollIRT(F)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1037
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 21
    .parameter "e"

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 836
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 841
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanEnd(IF)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    .line 849
    .local v3, centerFrameX:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 851
    .local v11, newCurrentItemIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v15, v0

    .line 852
    .local v15, span:F
    const/high16 v6, 0x4120

    .line 853
    .local v6, frameChangeThresholdWhenAligning:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    const/high16 v7, 0x4270

    .line 859
    .local v7, frameChangeThresholdWhenIdle:F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 860
    .local v12, panDistance:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    move-wide/from16 v19, v0

    sub-long v13, v17, v19

    .line 865
    .local v13, panTime:J
    const/4 v4, 0x0

    .line 866
    .local v4, criteria:F
    const/16 v16, 0x0

    .line 868
    .local v16, threshold:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x1f4

    cmp-long v17, v13, v17

    if-lez v17, :cond_5

    .line 872
    :cond_1
    const/16 v17, 0x0

    cmpl-float v17, v12, v17

    if-eqz v17, :cond_2

    .line 874
    move v4, v3

    .line 875
    move/from16 v16, v7

    .line 885
    :cond_2
    :goto_1
    cmpl-float v17, v4, v16

    if-lez v17, :cond_7

    .line 887
    :goto_2
    cmpl-float v17, v4, v16

    if-lez v17, :cond_3

    .line 889
    if-gtz v11, :cond_6

    .line 908
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    add-int v10, v17, v18

    .line 909
    .local v10, newCenterFrameIndex:I
    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v10, v0, :cond_8

    .line 911
    add-int/lit8 v10, v10, -0x3

    goto :goto_3

    .line 853
    .end local v4           #criteria:F
    .end local v7           #frameChangeThresholdWhenIdle:F
    .end local v10           #newCenterFrameIndex:I
    .end local v12           #panDistance:F
    .end local v13           #panTime:J
    .end local v16           #threshold:F
    :cond_4
    const/high16 v7, 0x41f0

    goto :goto_0

    .line 878
    .restart local v4       #criteria:F
    .restart local v7       #frameChangeThresholdWhenIdle:F
    .restart local v12       #panDistance:F
    .restart local v13       #panTime:J
    .restart local v16       #threshold:F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 881
    move v4, v12

    .line 882
    move/from16 v16, v6

    goto :goto_1

    .line 892
    :cond_6
    add-int/lit8 v11, v11, -0x1

    .line 893
    sub-float/2addr v4, v15

    goto :goto_2

    .line 896
    :cond_7
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_3

    .line 898
    :goto_4
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_3

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    .line 903
    add-int/lit8 v11, v11, 0x1

    .line 904
    add-float/2addr v4, v15

    goto :goto_4

    .line 913
    .restart local v10       #newCenterFrameIndex:I
    :cond_8
    :goto_5
    if-gez v10, :cond_9

    .line 915
    add-int/lit8 v10, v10, 0x3

    goto :goto_5

    .line 919
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_d

    const/4 v5, 0x1

    .line 920
    .local v5, currentItemIndexChanged:Z
    :goto_6
    if-eqz v5, :cond_c

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 929
    :cond_a
    const/4 v9, 0x0

    .line 930
    .local v9, mediaData:Lcom/htc/sunny2/IMediaData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    .line 934
    if-eqz v9, :cond_b

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    .line 937
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 939
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 940
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 945
    .end local v9           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v17

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v20

    invoke-virtual/range {v17 .. v20}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    .line 967
    :goto_7
    return-void

    .line 919
    .end local v5           #currentItemIndexChanged:Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 953
    .restart local v5       #currentItemIndexChanged:Z
    :cond_e
    const/4 v8, 0x0

    .local v8, i:I
    :goto_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_10

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_f

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 953
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 960
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto :goto_7
.end method

.method public rebindVisibleItems()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 1590
    const/4 v6, 0x1

    .line 1591
    .local v6, sideFramesCount:I
    neg-int v2, v6

    .local v2, i:I
    :goto_0
    if-gt v2, v6, :cond_8

    .line 1594
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v3, v7, v2

    .line 1595
    .local v3, itemIndex:I
    if-ltz v3, :cond_4

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v3, v7, :cond_4

    const/4 v4, 0x1

    .line 1597
    .local v4, itemIndexValid:Z
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v7, v2

    .line 1598
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1600
    add-int/lit8 v0, v0, 0x3

    .line 1602
    :cond_0
    if-lt v0, v10, :cond_1

    .line 1604
    add-int/lit8 v0, v0, -0x3

    .line 1606
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v10, :cond_5

    .line 1608
    :cond_2
    const-string v7, "FSVScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutSceneAndBindItem() NG "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1595
    .end local v0           #frameIndex:I
    .end local v4           #itemIndexValid:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1612
    .restart local v0       #frameIndex:I
    .restart local v4       #itemIndexValid:Z
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v1

    .line 1615
    .local v1, frameItemIndex:I
    if-eqz v4, :cond_7

    .line 1617
    if-eq v1, v3, :cond_3

    .line 1619
    const/4 v5, 0x0

    .line 1620
    .local v5, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v7, :cond_6

    .line 1622
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v7, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 1625
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    goto :goto_2

    .line 1630
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_7
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 1632
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_2

    .line 1636
    .end local v0           #frameIndex:I
    .end local v1           #frameItemIndex:I
    .end local v3           #itemIndex:I
    .end local v4           #itemIndexValid:Z
    :cond_8
    return-void
.end method

.method public setCurrentItemIndex(I)Z
    .locals 4
    .parameter "currentItemIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 653
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 654
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 656
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 658
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 660
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 662
    return v3
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 3
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    .line 1563
    return-void
.end method

.method public setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z
    .locals 3
    .parameter "itemPaintLayerInfo"

    .prologue
    const/4 v1, 0x0

    .line 1808
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v2, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return v1

    .line 1813
    :cond_1
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;

    const-string v2, "ItemPaintLayerBMPSetter"

    invoke-direct {v0, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1814
    .local v0, itemPaintLayerBMPSetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;
    iput-object p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    .line 1816
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1820
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)Z
    .locals 3
    .parameter "index"
    .parameter "transparency"

    .prologue
    const/4 v0, 0x0

    .line 1825
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    if-nez v1, :cond_1

    .line 1837
    :cond_0
    :goto_0
    return v0

    .line 1830
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->index:I

    .line 1831
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p2, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->transparency:I

    .line 1833
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1837
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 674
    const-string v0, "FSVScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    .line 677
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 682
    :cond_0
    return-void
.end method

.method public setupImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 668
    return-void
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V
    .locals 4
    .parameter "renderThread"
    .parameter "sunnyEnvironment"

    .prologue
    .line 320
    const-string v1, "FSVScene"

    const-string v2, "setupRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 323
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method public setupScene(Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z
    .locals 10
    .parameter "parentSceneNode"
    .parameter "itemPrototype"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "itemInterval"

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 358
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 360
    :cond_0
    const-string v2, "FSVScene"

    const-string v3, "setupScene() NG - zero param"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return v1

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    .line 370
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 371
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 372
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 374
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 378
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    iput v4, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    .line 379
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->allocateShareResources()V

    .line 383
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 384
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v3

    if-nez v3, :cond_2

    .line 386
    const-string v2, "FSVScene"

    const-string v3, "setupScene() NG - failed to create scene node"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 394
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 398
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 400
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->addToScene(IILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 402
    const-string v2, "FSVScene"

    const-string v3, "setupScene() NG - failed to create frame"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    goto :goto_0

    .line 398
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_5

    .line 412
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8, v8, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 417
    :cond_5
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 421
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 423
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 424
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 425
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 490
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    move v1, v2

    .line 542
    goto/16 :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 2115
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->showDRMIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    :goto_0
    return-void

    .line 2117
    :catch_0
    move-exception v0

    .line 2119
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FSVScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][showDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindMediaList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 632
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 637
    :cond_0
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindMediaList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 645
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 646
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 647
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 648
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullScreenViewScene][unbindMediaList]isCurrentIndexSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unzoomCenter()V
    .locals 2

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1795
    :cond_0
    return-void
.end method
