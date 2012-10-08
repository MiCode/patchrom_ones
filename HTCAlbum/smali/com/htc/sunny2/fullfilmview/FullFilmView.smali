.class public Lcom/htc/sunny2/fullfilmview/FullFilmView;
.super Lcom/htc/sunny2/view/SView;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;
.implements Lcom/htc/sunny2/Preparator$UpdateListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    }
.end annotation


# static fields
.field static final LTAG:Ljava/lang/String; = "FullFilmView"

.field public static final VIEW_STATE_ANIM_TO_FILMSTRIP:I = 0x2

.field public static final VIEW_STATE_ANIM_TO_FULLSCREEN:I = 0x3

.field public static final VIEW_STATE_FILMSTRIP:I = 0x1

.field public static final VIEW_STATE_FULLSCREEN:I


# instance fields
.field private final DEBUG:Z

.field private MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;",
            ">;"
        }
    .end annotation
.end field

.field private SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isOnlineTagEditor:Z

.field private isUploadEditor:Z

.field private itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

.field private itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

.field private mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

.field mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

.field private mDisableGesture:Z

.field private mEnableFullscreen:Z

.field private mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

.field mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

.field mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private mGLViewHeight:I

.field private mGLViewWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private mIsAfterEdit:Z

.field protected mListItemCount:I

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field protected mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

.field mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

.field protected mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

.field private mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

.field private mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mRootNode:Lcom/htc/sunny2/SceneNode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollState:I

.field private mThumbPreparator:Lcom/htc/sunny2/Preparator;

.field private mViewState:I

.field private mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

.field private final mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

.field private mZoomGesture:Z

.field private supportMultitouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 271
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "filmstripViewItem"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 182
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->DEBUG:Z

    .line 193
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 194
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 195
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 198
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 200
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    .line 201
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 202
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 203
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 205
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 206
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 210
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 212
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 214
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 222
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 223
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    .line 227
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 228
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 230
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 232
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    .line 234
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    .line 1118
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 1157
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1501
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 277
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 279
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 280
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "fullScreenViewItem"
    .parameter "filmstripViewItem"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 182
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->DEBUG:Z

    .line 193
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 194
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 195
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 198
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 200
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    .line 201
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 202
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 203
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 205
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 206
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 210
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 212
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 214
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 222
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 223
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    .line 227
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 228
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 230
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 232
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    .line 234
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    .line 1118
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 1157
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1501
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 289
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 291
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 292
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V

    .line 294
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 295
    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 297
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 298
    return-void
.end method

.method private ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 2305
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    .line 2306
    .local v0, object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    if-nez v0, :cond_0

    .line 2307
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    .end local v0           #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    .line 2310
    .restart local v0       #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    :goto_0
    return-object v0

    .line 2309
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->reset(II)V

    goto :goto_0
.end method

.method private ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    .locals 2
    .parameter "position"

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    .line 1121
    .local v0, object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    .end local v0           #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1125
    .restart local v0       #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    :goto_0
    return-object v0

    .line 1124
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->reset(I)V

    goto :goto_0
.end method

.method private RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 2315
    if-nez p1, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2317
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->free()V

    .line 2318
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1128
    if-nez p1, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->free()V

    .line 1131
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/IMediaList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunny2/IMediaList;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/RenderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V

    return-void
.end method

.method private onMediaItemRefreshIRT(II)V
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 1814
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_4

    .line 1816
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 1854
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    .line 1856
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1858
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshIRT(I)V

    .line 1860
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_3

    .line 1862
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshIRT(I)V

    .line 1864
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    .line 1869
    :cond_4
    :goto_0
    return-void

    .line 1819
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v0, :cond_4

    .line 1821
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->checkImageUpdate(II)V

    .line 1823
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_5

    .line 1825
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshSizeIRT(I)V

    .line 1827
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    .line 1829
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshSizeIRT(I)V

    goto :goto_0

    .line 1834
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    .line 1836
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_6

    .line 1838
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightFlagIRT(I)V

    .line 1840
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    .line 1844
    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    .line 1846
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_7

    .line 1848
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightExpiredIRT(I)V

    .line 1850
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    .line 1816
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private pointsToViewport(II)[I
    .locals 6
    .parameter "worldX"
    .parameter "worldY"

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 787
    .local v2, mOriginX:I
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 789
    .local v3, mOriginY:I
    sub-int v0, p1, v2

    .line 790
    .local v0, downX:I
    sub-int v1, v3, p2

    .line 792
    .local v1, downY:I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method private setMediaList(Lcom/htc/sunny2/IMediaList;I)V
    .locals 6
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v5, 0x0

    .line 680
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][setMediaList] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 683
    .local v1, oldList:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<Lcom/htc/sunny2/IMediaData;>;"
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 685
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v2, :cond_0

    .line 687
    if-nez v1, :cond_3

    .line 689
    const-string v2, "FullFilmView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullFilmView][setMediaList]old list null, bind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v2, v5, v3, v5}, Lcom/htc/sunny2/Preparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 723
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v2, :cond_1

    .line 725
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    .line 726
    .local v0, getter:Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 727
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->rebindVisibleItems()V

    .line 729
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V

    .line 730
    if-ltz p2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 735
    .end local v0           #getter:Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
    :cond_1
    const-string v2, "FullFilmView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullFilmView][setMediaList]mEnableFullscreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_2

    .line 738
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bindMediaList(Lcom/htc/sunny2/IMediaList;)Z

    .line 739
    if-ltz p2, :cond_5

    .line 741
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 748
    :cond_2
    :goto_1
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][setMediaList] - "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void

    .line 694
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_4

    .line 696
    const-string v2, "FullFilmView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullFilmView][setMediaList]old list not null, mMediaList not null, refresh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/Preparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    goto :goto_0

    .line 701
    :cond_4
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][setMediaList]old list not null, mMediaList null, unbind"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/Preparator;->unbind(I)V

    goto/16 :goto_0

    .line 745
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    goto :goto_1
.end method


# virtual methods
.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 1
    .parameter "parent"
    .parameter "state"

    .prologue
    .line 1161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    .line 1162
    return-void
.end method

.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V
    .locals 4
    .parameter "parent"
    .parameter "state"
    .parameter "force"

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-nez v1, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 1171
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 1172
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1176
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    if-eq v1, p2, :cond_0

    .line 1179
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_3

    .line 1185
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    invoke-interface {v1, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;->onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v1, :cond_0

    .line 1217
    if-nez p2, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1212
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changeScrollStateOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 637
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 641
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    return-void

    .line 643
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 645
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public createResource()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 393
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][createResource] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-super {p0}, Lcom/htc/sunny2/view/SView;->createResource()V

    .line 398
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    .line 399
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 400
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 402
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->loadResources(Landroid/content/Context;ILcom/htc/sunny2/SunnyContext;)V

    .line 405
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;-><init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    .line 406
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->enableChildShadow(Z)V

    .line 407
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V

    .line 408
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setIsOnlineTagEditor(Z)V

    .line 409
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->attachToParent(Lcom/htc/sunny2/SceneNode;)V

    .line 411
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    .line 412
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 507
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v0, v6, v1, v6}, Lcom/htc/sunny2/Preparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 511
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    .line 514
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_3

    .line 521
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 522
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_4

    .line 526
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 528
    :cond_4
    new-instance v0, Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 530
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->setFilmstripViewScene(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;)V

    .line 532
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_5

    .line 534
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->setFullscreenViewScene(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    .line 535
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V

    .line 539
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    const/16 v3, 0x258

    const/16 v4, 0x190

    const/16 v5, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupScene(Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z

    move-result v0

    if-nez v0, :cond_5

    .line 541
    const-string v0, "FullFilmView"

    const-string v1, "FSV setupScene NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_6

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 547
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][createResource] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v7

    .line 546
    goto :goto_1
.end method

.method public disableGesture()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    .line 314
    return-void
.end method

.method protected doItemClickOnUiThread(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/ViewItem;I)V
    .locals 4
    .parameter "parent"
    .parameter "item"
    .parameter "position"

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 1998
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p1, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2020
    :catch_0
    move-exception v0

    .line 2022
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[doItemClickOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public freeResource()V
    .locals 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 563
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    .line 564
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearRenderingEnvironment()V

    .line 566
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 568
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 571
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->unbind(I)V

    .line 572
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->deInit()V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachFromParent()V

    .line 576
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->releaseResources()V

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "FilmstripPan"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 580
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "scrollFilmstripUsingDistance"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 581
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "scrollFilmstripUsingVelocity"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 582
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    .line 584
    invoke-super {p0}, Lcom/htc/sunny2/view/SView;->freeResource()V

    .line 585
    return-void
.end method

.method fullScreenViewAnimateToFilmstripView(IFF)V
    .locals 4
    .parameter "currentItemIndex"
    .parameter "currentItemOffset"
    .parameter "velocity"

    .prologue
    .line 1031
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v2, :cond_0

    .line 1033
    const-string v2, "FullFilmView"

    const-string v3, "MODE_FULLSCREENVIEW"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :goto_0
    return-void

    .line 1038
    :cond_0
    const/high16 v2, 0x4461

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v0, v2, v3

    .line 1040
    .local v0, adjustV:F
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1041
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "child_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1042
    const-string v2, "child_offset"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1043
    const-string v2, "last_pan_velocity"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1044
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 1046
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    .locals 2

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 989
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 993
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    packed-switch v0, :pswitch_data_0

    .line 1149
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v0

    .line 1154
    :goto_0
    return v0

    .line 1139
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->getSelectedIndex()I

    move-result v0

    goto :goto_0

    .line 1154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v0

    return v0
.end method

.method public getViewState()I
    .locals 1

    .prologue
    .line 2426
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 2

    .prologue
    .line 2391
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v1, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$9;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$9;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2408
    :goto_0
    return-void

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->hideDRMIndicator()V

    .line 2405
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 2406
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public hideFullFilmView()V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2359
    return-void
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1896
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return v0

    .line 1900
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    .line 1902
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullScreenAndZoomed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1909
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return v0

    .line 1912
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    .line 1915
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 1917
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1919
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyMediaDataChange()V
    .locals 4

    .prologue
    .line 1518
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_0

    .line 1548
    :goto_0
    return-void

    .line 1520
    :cond_0
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1525
    .local v1, oldPos:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 1527
    .local v0, count:I
    if-gez v1, :cond_3

    .line 1529
    const/4 v1, 0x0

    .line 1536
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    if-eqz v2, :cond_2

    .line 1538
    add-int/lit8 v1, v0, -0x1

    .line 1539
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 1542
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {p0, v2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 1547
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] - "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1531
    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_1

    .line 1533
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method public notifyMediaDataChange(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    invoke-static {p1, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->obtain(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 1556
    :cond_0
    return-void
.end method

.method public onDRMPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 2412
    move v0, p1

    .line 2414
    .local v0, onPressed:Z
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$10;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$10;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2422
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 2261
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][onDoubleTap] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    if-eqz v0, :cond_0

    .line 2263
    const/4 v0, 0x0

    .line 2270
    :goto_0
    return v0

    .line 2265
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 2269
    :cond_1
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][onDoubleTap] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2255
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 797
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    :goto_0
    return v1

    .line 800
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v3

    if-nez v3, :cond_1

    .line 801
    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 803
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v3, :cond_2

    .line 805
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDown(Landroid/view/MotionEvent;)V

    :goto_1
    move v1, v2

    .line 822
    goto :goto_0

    .line 809
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->pointsToViewport(II)[I

    move-result-object v0

    .line 810
    .local v0, downs:[I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    aget v1, v0, v1

    aget v4, v0, v2

    invoke-virtual {v3, v1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestDown(II)V

    .line 812
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    .line 814
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 815
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 816
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 817
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 819
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    goto :goto_1
.end method

.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 2211
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureExpired(I)V

    .line 2212
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 4
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    const/4 v2, 0x1

    .line 2182
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_1

    .line 2184
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 2185
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2187
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2206
    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    :goto_0
    return-void

    .line 2191
    .restart local v0       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_0
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_2

    .line 2193
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFailed] set image corrupted, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 2205
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    goto :goto_0

    .line 2197
    .restart local v0       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_2
    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2199
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getMediaQuality()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2200
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x3

    .line 865
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    neg-float v1, p3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    :cond_1
    const/4 v0, 0x0

    .line 884
    :goto_0
    return v0

    .line 872
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_3

    .line 874
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 875
    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 884
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onFling(F)V

    .line 880
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 881
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onFullScreenViewAlignEnd()V
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1499
    return-void
.end method

.method public onFullScreenViewScrollBeginIRT()V
    .locals 0

    .prologue
    .line 1878
    return-void
.end method

.method public onFullScreenViewScrollEndIRT()V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    .line 1892
    :cond_0
    return-void
.end method

.method public onFullScreenViewScrollIRT(F)V
    .locals 2
    .parameter "dx"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    .line 1885
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2147
    const/4 v0, 0x0

    .line 2149
    .local v0, bResult:Z
    packed-switch p1, :pswitch_data_0

    .line 2158
    :pswitch_0
    return v0

    .line 2149
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2099
    const/4 v2, 0x0

    .line 2100
    .local v2, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2102
    .local v0, FocusId:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v4, :cond_0

    move v3, v2

    .line 2141
    .end local v2           #bResult:Z
    .local v3, bResult:I
    :goto_0
    return v3

    .line 2107
    .end local v3           #bResult:I
    .restart local v2       #bResult:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 2109
    .local v1, TotalCount:I
    if-nez v1, :cond_1

    move v3, v2

    .line 2111
    .restart local v3       #bResult:I
    goto :goto_0

    .line 2114
    .end local v3           #bResult:I
    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_1
    :sswitch_0
    move v3, v2

    .line 2141
    .restart local v3       #bResult:I
    goto :goto_0

    .line 2118
    .end local v3           #bResult:I
    :sswitch_1
    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 2120
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->KeyUpMotion(I)V

    .line 2122
    :cond_2
    const/4 v2, 0x1

    .line 2123
    goto :goto_1

    .line 2127
    :sswitch_2
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_3

    .line 2129
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->KeyUpMotion(I)V

    .line 2131
    :cond_3
    const/4 v2, 0x1

    .line 2132
    goto :goto_1

    .line 2114
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayout(ZFFFII)V
    .locals 5
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x1

    .line 602
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    .line 603
    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewHeight:I

    .line 605
    if-lt p5, v2, :cond_0

    if-ge p6, v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SView;->onLayout(ZFFFII)V

    .line 614
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_2

    .line 616
    .local v0, centerScale:F
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v3

    .line 618
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->setMediaListIRT_Workaround()V

    .line 620
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onLayout(II)V

    .line 622
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 623
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 625
    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_4

    .line 626
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onLayout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2224
    return-void
.end method

.method public onMediaItemRefreshIHT(II)V
    .locals 3
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    .line 1802
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1808
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 2165
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    .line 2168
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2170
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 2171
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_0

    .line 2173
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    .line 2177
    :cond_0
    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 588
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SView;->onRenderOrderChanged(Z)V

    .line 589
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 591
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->resumePreparator()V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 1010
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScale(Landroid/view/ScaleGestureDetector;)Z

    .line 1014
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 999
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 1000
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 1004
    :cond_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1024
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 1025
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 860
    :goto_0
    return v0

    .line 831
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 834
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 835
    const/4 v0, 0x2

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 860
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchMove(I)V

    .line 842
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_3

    .line 844
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    goto :goto_1
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onUp(Landroid/view/MotionEvent;)V

    .line 933
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchUp(I)V

    .line 939
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSetCurrentIndex(I)V
    .locals 2
    .parameter "currentItemIndex"

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/htc/sunny2/Preparator;->setVisibleRange(III)V

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 1494
    :cond_1
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2218
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 2229
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed] + "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_0

    .line 2232
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mOnItemClickListener is null - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const/4 v1, 0x0

    .line 2247
    :goto_0
    return v1

    .line 2235
    :cond_0
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mEnableFullscreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_1

    .line 2239
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2240
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2242
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 2243
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    .line 2246
    .end local v0           #index:I
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 889
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp] + "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v2, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp]In transition of filmstrip to full screen - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v1, 0x0

    .line 922
    :goto_0
    return v1

    .line 896
    :cond_0
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapUp]mEnableFullscreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapUp]mViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 921
    :cond_1
    :goto_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const/4 v1, 0x1

    goto :goto_0

    .line 914
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp()V

    .line 916
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItemPosition()I

    move-result v0

    .line 917
    .local v0, position:I
    if-ltz v0, :cond_1

    .line 918
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    invoke-virtual {p0, p0, v1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->doItemClickOnUiThread(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/ViewItem;I)V

    goto :goto_1
.end method

.method public onThumbnailTextureExpired(I)V
    .locals 1
    .parameter "contentIndex"

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureExpired(I)V

    .line 1444
    :cond_0
    return-void
.end method

.method public onThumbnailTextureReady(I)V
    .locals 8
    .parameter "contentIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1376
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 1377
    .local v1, preparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-nez v5, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 1385
    .local v2, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v1, p1, v7}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v4

    .line 1386
    .local v4, textureHQ:Lcom/htc/sunny2/Texture;
    const/4 v5, 0x2

    invoke-virtual {v1, p1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 1387
    .local v3, textureEQ:Lcom/htc/sunny2/Texture;
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    if-eqz v5, :cond_4

    .line 1389
    if-eqz v4, :cond_3

    .line 1391
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    .line 1402
    :goto_1
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v5, :cond_2

    .line 1404
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isZoomed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1406
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    .line 1409
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1410
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1411
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setGlobalBackgroundResource(I)V

    .line 1434
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v5, :cond_0

    .line 1436
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto :goto_0

    .line 1395
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_1

    .line 1400
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_1

    .line 1414
    :cond_5
    if-eqz v4, :cond_6

    .line 1416
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    .line 1419
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1420
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1421
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setGlobalBackgroundResource(I)V

    goto :goto_2

    .line 1427
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1428
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 1429
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v3, -0x1

    .line 2032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2033
    .local v1, mActionCode:I
    const/4 v0, 0x0

    .line 2035
    .local v0, index:I
    packed-switch v1, :pswitch_data_0

    .line 2065
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    if-nez v2, :cond_1

    .line 2067
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2076
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    if-eqz v2, :cond_2

    .line 2078
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2089
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 2039
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v2, :cond_3

    .line 2041
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 2044
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2045
    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    if-eqz v2, :cond_0

    .line 2047
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    invoke-interface {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;->onItemUp(Lcom/htc/sunny2/view/SView;I)V

    goto :goto_0

    .line 2052
    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 2054
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2055
    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    if-eqz v2, :cond_0

    .line 2057
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    invoke-interface {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;->onItemDown(Lcom/htc/sunny2/view/SView;I)V

    goto :goto_0

    .line 2035
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)V
    .locals 10
    .parameter "animSelf"
    .parameter "animOther"
    .parameter "listener"
    .parameter "touchedGridViewItemIndex"
    .parameter "endListener"

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 2324
    move-object v4, p1

    .line 2325
    .local v4, fAnimSelf:Landroid/os/Bundle;
    move-object v5, p3

    .line 2326
    .local v5, fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    move-object v6, p0

    .line 2327
    .local v6, fSView:Lcom/htc/sunny2/view/SView;
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;

    const-string v3, "PlayAnimationIn"

    move-object v1, p0

    move-object v2, p0

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;ILcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;)V

    invoke-virtual {v9, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 2345
    .end local v4           #fAnimSelf:Landroid/os/Bundle;
    .end local v5           #fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    .end local v6           #fSView:Lcom/htc/sunny2/view/SView;
    :goto_0
    return-void

    .line 2343
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2344
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    goto :goto_0
.end method

.method public purgeTextureMapsForMemory(Z)Z
    .locals 3
    .parameter "bNeedPurgeLQ"

    .prologue
    const/4 v0, 0x0

    .line 1664
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return v0

    .line 1668
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1672
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureMapsForMemory] RenderThread is null or not ready"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1675
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;

    const-string v2, "purgeTextureMapsForMemory"

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1694
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureMapsForMemory] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public queryItemImageTexture(I)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "itemIndex"

    .prologue
    const/4 v0, 0x0

    .line 1455
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1464
    :goto_0
    return-object v0

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 1463
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryItemImageTexture(II)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "itemIndex"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 1470
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1480
    :goto_0
    return-object v0

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 1479
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePreparator(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->resumePreparator()V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public setExtremeQualityItemIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1646
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1657
    :goto_0
    return v0

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1653
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setExtremeQualityItemIndex(I)Z

    .line 1654
    const/4 v0, 0x1

    goto :goto_0

    .line 1656
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFullscreenListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 378
    return-void
.end method

.method public setIsAfterEdit(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2349
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 2350
    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0
    .parameter "isOnlineTagEditor"

    .prologue
    .line 1731
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 1732
    return-void
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 1726
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 1727
    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 665
    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V
    .locals 2
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->set(Lcom/htc/sunny2/IMediaList;I)V

    .line 671
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->requestLayout()V

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;I)V

    .line 654
    return-void
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 659
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    .line 660
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 1631
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    .line 383
    return-void
.end method

.method public setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    .line 1636
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V
    .locals 0
    .parameter "mOnScrollListener"

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 1641
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onFullScreenViewAlignEnd()V

    .line 1642
    return-void
.end method

.method public setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V
    .locals 2
    .parameter "index"
    .parameter "bmp"
    .parameter "originX"
    .parameter "originY"
    .parameter "sizeX"
    .parameter "sizeY"
    .parameter "rotate"
    .parameter "paintSetListener"

    .prologue
    .line 1963
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1968
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 1969
    .local v0, itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;
    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->index:I

    .line 1970
    iput-object p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    .line 1971
    iput p3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    .line 1972
    iput p4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    .line 1973
    iput p5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    .line 1974
    iput p6, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    .line 1975
    iput p7, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->rotate:I

    .line 1976
    iput-object p8, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    .line 1978
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)V
    .locals 1
    .parameter "index"
    .parameter "transparency"

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerTransparencyIHT(II)Z

    goto :goto_0
.end method

.method public setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 2
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 779
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 780
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 781
    return-void
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V
    .locals 2
    .parameter "preparator"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIHT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 360
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    .line 362
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    :cond_0
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_1
    :goto_0
    return-void

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSideBySideItemIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1708
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1710
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :goto_0
    return v0

    .line 1713
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1715
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator.setSideBySideItemIndex..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setSideBySideItemIndex(I)Z

    move-result v0

    goto :goto_0

    .line 1719
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewItem(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)V
    .locals 0
    .parameter "fullScreenViewItem"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 775
    return-void
.end method

.method public setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 1873
    return-void
.end method

.method public showDRMIndicator(Z)V
    .locals 2
    .parameter "bForce"

    .prologue
    .line 2371
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v1, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2388
    :goto_0
    return-void

    .line 2384
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 2385
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 2386
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public showFullFilmView()V
    .locals 2

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2367
    return-void
.end method

.method switchViewState(IZ)V
    .locals 4
    .parameter "state"
    .parameter "changeVisibility"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 328
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_4

    .line 330
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 331
    if-eqz p2, :cond_0

    .line 333
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setVisible(Z)V

    .line 334
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    .line 345
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;->onViewStateChange(I)V

    .line 349
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 333
    goto :goto_0

    :cond_3
    move v1, v2

    .line 334
    goto :goto_1

    .line 339
    :cond_4
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 340
    if-eqz p2, :cond_0

    .line 342
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public unzoomCenter()V
    .locals 3

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1931
    const-string v0, "FullFilmView"

    const-string v1, "RenderThread is null or not ready"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;

    const-string v2, "unzoomCenter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1945
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unzoomCenter] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
