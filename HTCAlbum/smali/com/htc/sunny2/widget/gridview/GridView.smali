.class public Lcom/htc/sunny2/widget/gridview/GridView;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "GridView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGestureHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;,
        Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridItemAlignAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;,
        Lcom/htc/sunny2/widget/gridview/GridView$Cell;,
        Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;,
        Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;,
        Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;,
        Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;,
        Lcom/htc/sunny2/widget/gridview/GridView$RTEHighlightStateChange;,
        Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;
    }
.end annotation


# static fields
.field protected static final COOPERATEITEM_ID_NONE:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DELEY_BETWEEN_SCALE_MOTION_ANIMATION:I = 0x78

.field private static final DELEY_MOTION_ANIMATION:I = 0x1e

.field private static final DURATION_MOTION_ANIMATION:I = 0x96

.field private static final DURATION_SCALE_ANIMATION:I = 0x96

.field public static final INVALID_POSITION:I = -0x1

.field protected static final INVALID_SCREEN_POSITION:F = 3.4028235E38f

.field public static final LAYOUT_HORIZONTAL:I = 0x1

.field protected static final LAYOUT_NONE:I = -0x1

.field public static final LAYOUT_VERTICAL:I = 0x2

.field protected static final RENDER_ORDER_ANIMATION_DELETE_ITEM:I = 0x2

.field protected static final RENDER_ORDER_ANIMATION_KEEP_ITEM:I = 0x3

.field protected static final RENDER_ORDER_ANIMATION_NONE:I = 0x0

.field protected static final STORE_KEY_OLDFIRSTIDX:Ljava/lang/String; = "oldFirstIdx"

.field protected static final STORE_KEY_OLDFIRSTITEMPOSITIONY:Ljava/lang/String; = "oldFirstItemPositionY"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final LayoutLock:Ljava/lang/Object;

.field private bundleDataSetChangeAnimation:Landroid/os/Bundle;

.field protected mCellRecycler:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildNodeCount:I

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentHighlightIdx:I

.field protected mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

.field protected mDisableFastScrollerTouchEvent:Z

.field private mDisableLayoutRequest:Z

.field private mDoNotResetPreparatorFlag:Z

.field private mEnablePinOnItemScroll:Z

.field protected mExtraPaddingLeft:I

.field protected mExtraPaddingTop:I

.field private mFastScrollerRenderRequestAction:Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

.field protected mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

.field protected mFirstIdx:I

.field protected mFirstIdxPrev:I

.field private mFocusItemId:I

.field protected mGLViewHeight:I

.field protected mGLViewWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

.field protected mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

.field private mHasLayoutRequest:Z

.field protected mHorizontalSpacing:I

.field private mHostIdentifier:Ljava/lang/String;

.field private mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

.field protected mIgnorePinToBottmTopDuringDeleteAnimation:Z

.field protected mInLayout:Z

.field private mIsConfigChange:Z

.field protected mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

.field protected mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

.field protected mLastIdx:I

.field private mLastScrollState:I

.field protected mListItemCount:I

.field private final mLock:Ljava/lang/Object;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field private mNewHorizontalSpacing:I

.field private mNewListItemCount:I

.field private mNewMediaList:Lcom/htc/sunny2/IMediaList;

.field private mNewNumColumn:I

.field protected mNewNumRow:I

.field protected mNewOrientation:I

.field private mNewVerticalSpacing:I

.field protected mNumColumn:I

.field protected mNumRow:I

.field private mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

.field protected mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mOnScreenItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

.field protected mOrientation:I

.field private mPaddingChanged:Z

.field private mRefreshMediaList:Z

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mResurrectToIdx:I

.field private mResurrectToOldFirstIndexPositionY:I

.field protected mRootNode:Lcom/htc/sunny2/SceneNode;

.field private mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

.field private mSelectedHighlightEnabled:Z

.field private mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

.field protected mSelectedIdx:I

.field private mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

.field private mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

.field private mTouchDownInFling:Z

.field protected mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    const/4 v5, 0x1

    const/high16 v1, -0x8000

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 59
    const-string v0, "GridView"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LOG_TAG:Ljava/lang/String;

    .line 62
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    .line 91
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 96
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 97
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 101
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 102
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 107
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    .line 114
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 120
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdxPrev:I

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 127
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 132
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 143
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    .line 151
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$RTEHighlightStateChange;

    const-string v1, "SelectedHighlightStateChange"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$RTEHighlightStateChange;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    .line 159
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 164
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 166
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerRenderRequestAction:Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    .line 168
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    .line 169
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 183
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 1702
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 3608
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$5;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    .line 3646
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3647
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3648
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    .line 188
    invoke-direct {p0, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 189
    return-void
.end method

.method private FocusItemClick(I)V
    .locals 7
    .parameter "focusId"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1938
    .local v6, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 1940
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1943
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onItemClickIRT(ILcom/htc/sunny2/SceneNode;)V

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iget-object v2, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    int-to-long v4, v1

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;->onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V

    .line 1954
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1955
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/widget/gridview/GridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/widget/gridview/GridView;[I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/widget/gridview/GridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    return-void
.end method

.method private dispatchUnpress(Z)V
    .locals 6
    .parameter "bForce"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1459
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v1, nIndex:I
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_3

    .line 1461
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1462
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1459
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1467
    const-string v2, "GridView"

    const-string v3, "[HTCAlbum][Gridview][KeyPress]: dispatchUnpress "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1470
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-ne v2, v1, :cond_2

    .line 1474
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1478
    :cond_2
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1483
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPressed(Z)V

    .line 1484
    return-void
.end method

.method private doBounceBack()Z
    .locals 10

    .prologue
    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, bResult:Z
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 1579
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1492
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_3

    :cond_2
    move v1, v0

    .line 1493
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1495
    .end local v1           #bResult:I
    :cond_3
    const/4 v2, 0x0

    .line 1496
    .local v2, distanceToAligned:I
    const v4, 0x7fffffff

    .line 1498
    .local v4, maxDistanceToTop:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1499
    .local v5, screenItemFirst:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1507
    .local v6, screenItemLast:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1512
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-lt v7, v8, :cond_4

    .line 1514
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v4

    .line 1520
    :cond_4
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_7

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-ge v7, v8, :cond_7

    .line 1522
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v7, v7

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v7, v8

    .line 1552
    :cond_5
    :goto_1
    if-gez v2, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_6

    .line 1554
    move v2, v4

    .line 1564
    :cond_6
    if-nez v2, :cond_b

    move v1, v0

    .line 1567
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1525
    .end local v1           #bResult:I
    :cond_7
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v7, v8, :cond_5

    iget v7, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_5

    .line 1528
    iget v7, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v2, v7

    goto :goto_1

    .line 1533
    :cond_8
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-gt v7, v8, :cond_9

    .line 1535
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v7

    rsub-int/lit8 v4, v7, 0x0

    .line 1537
    :cond_9
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_a

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v7, v8, :cond_a

    .line 1539
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v7, v8

    goto :goto_1

    .line 1542
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    if-lez v7, :cond_5

    .line 1545
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    neg-int v2, v7

    goto/16 :goto_1

    .line 1570
    :cond_b
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v8, "GridFlingingAction"

    invoke-virtual {v7, p0, v8}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v3

    .line 1571
    .local v3, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v3, :cond_c

    .line 1573
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1576
    :cond_c
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v8}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v7, v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1577
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v9, "gridBouncingAction"

    invoke-direct {v8, p0, p0, v9}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1578
    const/4 v0, 0x1

    move v1, v0

    .line 1579
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method private doFocusScroll(III)Z
    .locals 8
    .parameter "coordinate"
    .parameter "gridHeight"
    .parameter "numRow"

    .prologue
    .line 1895
    const/4 v0, 0x0

    .line 1896
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 1897
    .local v3, distanceToAligned:I
    const/4 v2, 0x0

    .line 1899
    .local v2, diffDistance:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v0

    .line 1930
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1903
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1905
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v5, v5

    if-le p1, v5, :cond_4

    .line 1907
    neg-int v5, p1

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v5, v6

    .line 1914
    :cond_2
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, p2

    mul-int/2addr v5, p3

    add-int v3, v5, v2

    .line 1917
    :cond_3
    if-nez v3, :cond_5

    move v1, v0

    .line 1918
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1909
    .end local v1           #bResult:I
    :cond_4
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_2

    .line 1911
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    neg-int v2, v5

    goto :goto_1

    .line 1921
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v6, "GridFlingingAction"

    invoke-virtual {v5, p0, v6}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v4

    .line 1922
    .local v4, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v4, :cond_6

    .line 1923
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v5, v4}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1926
    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1927
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v6}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1928
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v7, "gridBouncingAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1929
    const/4 v0, 0x1

    move v1, v0

    .line 1930
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 2519
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2520
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 2521
    monitor-exit v2

    .line 2534
    :goto_0
    return-object v1

    .line 2524
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le p1, v3, :cond_2

    .line 2525
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 2535
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2528
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2530
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_3

    .line 2531
    monitor-exit v2

    goto :goto_0

    .line 2534
    :cond_3
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 5
    .parameter "itemPrototype"

    .prologue
    const/high16 v4, -0x8000

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 198
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 199
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 201
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    .line 206
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 207
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 210
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 212
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 214
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 215
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    .line 218
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 220
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 221
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 222
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 224
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 226
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 228
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 229
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 231
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 233
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 235
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-direct {v0, p0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    .line 237
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 239
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->LEFT_TOP:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;

    invoke-direct {v2, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 241
    return-void
.end method

.method private performLongPress(Lcom/htc/sunny2/view/SView;II)Z
    .locals 4
    .parameter "view"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v1, 0x0

    .line 1633
    const/4 v0, 0x0

    .line 1635
    .local v0, handled:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    if-eqz v2, :cond_0

    .line 1636
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;->onItemLongClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)Z

    move-result v0

    .line 1638
    :cond_0
    if-nez v0, :cond_1

    .line 1639
    int-to-long v2, p3

    invoke-virtual {p0, p2, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1640
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v2, p0}, Lcom/htc/sunny2/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 1642
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1643
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->performHapticFeedback(I)Z

    .line 1645
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 1640
    goto :goto_0
.end method

.method private pinToBottom()V
    .locals 5

    .prologue
    .line 2112
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v3, v4, :cond_0

    .line 2114
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2115
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_1

    .line 2122
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2117
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v0, v3, v4

    .line 2118
    .local v0, bottom:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int v2, v3, v4

    .line 2120
    .local v2, offset:I
    const/4 v3, 0x0

    neg-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0
.end method

.method private pinToLeft(Z)V
    .locals 6
    .parameter "alignLeft"

    .prologue
    .line 2149
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_1

    .line 2150
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2151
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2152
    .local v1, left:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 2153
    .local v3, viewLeft:I
    if-gt v1, v3, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 2154
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v4, v1

    .line 2156
    .local v2, offset:I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2159
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #left:I
    .end local v2           #offset:I
    .end local v3           #viewLeft:I
    :cond_1
    return-void
.end method

.method private pinToRight()V
    .locals 5

    .prologue
    .line 2140
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v2, v3, :cond_0

    .line 2141
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2142
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2144
    .local v1, offset:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2146
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(Z)V
    .locals 6
    .parameter "alignTop"

    .prologue
    .line 2125
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_0

    .line 2126
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2127
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    .line 2137
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2129
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2130
    .local v2, top:I
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v3, v4, 0x0

    .line 2131
    .local v3, viewTop:I
    if-lt v2, v3, :cond_2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 2132
    :cond_2
    add-int/lit8 v4, v2, 0x0

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int v1, v4, v5

    .line 2134
    .local v1, offset:I
    const/4 v4, 0x0

    neg-int v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0
.end method

.method private pointToCell(II)Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 1434
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1435
    .local v2, count:I
    if-nez v2, :cond_0

    move-object v1, v7

    .line 1454
    :goto_0
    return-object v1

    .line 1439
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1440
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1441
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_2

    .line 1439
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1445
    :cond_2
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1446
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1447
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1448
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1450
    .local v0, bottom:I
    if-gt v6, p2, :cond_1

    if-gt p2, v0, :cond_1

    if-gt v4, p1, :cond_1

    if-gt p1, v5, :cond_1

    goto :goto_0

    .end local v0           #bottom:I
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_3
    move-object v1, v7

    .line 1454
    goto :goto_0
.end method

.method private startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 56
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 2765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 2768
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2769
    if-eqz p3, :cond_2

    .line 2770
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2771
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3115
    :cond_2
    :goto_0
    return-void

    .line 2777
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    .line 2778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 2779
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 2784
    :cond_4
    if-eqz p3, :cond_5

    .line 2785
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2789
    :cond_5
    const/4 v11, -0x1

    .line 2790
    .local v11, anchorIdx:I
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 2791
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v31

    .line 2792
    .local v31, index:I
    if-gez v31, :cond_7

    .line 2793
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2826
    :cond_6
    :goto_1
    new-instance v35, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2828
    .local v35, mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v28

    if-ge v0, v3, :cond_d

    .line 2829
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2828
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 2796
    .end local v28           #i:I
    .end local v35           #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2797
    const/16 v50, -0x1

    .line 2798
    .local v50, tmpIdx:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    .line 2799
    .local v34, lenDeleteArray:I
    add-int/lit8 v30, v31, 0x1

    .local v30, id:I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 2800
    aget v50, p1, v30

    .line 2801
    sub-int v3, v50, v11

    const/4 v5, 0x1

    if-le v3, v5, :cond_9

    .line 2802
    add-int/lit8 v11, v11, 0x1

    .line 2807
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v11, v3, :cond_a

    move/from16 v0, v50

    if-ne v11, v0, :cond_a

    .line 2808
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2805
    :cond_9
    move/from16 v11, v50

    .line 2799
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 2810
    :cond_a
    move/from16 v0, v50

    if-ne v11, v0, :cond_6

    .line 2811
    add-int/lit8 v30, v31, -0x1

    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v30

    if-le v0, v3, :cond_b

    .line 2812
    aget v50, p1, v30

    .line 2813
    sub-int v3, v11, v50

    const/4 v5, 0x1

    if-le v3, v5, :cond_c

    .line 2814
    add-int/lit8 v11, v11, -0x1

    .line 2820
    :cond_b
    move/from16 v0, v50

    if-ne v11, v0, :cond_6

    .line 2821
    const/4 v11, -0x1

    goto :goto_1

    .line 2817
    :cond_c
    move/from16 v11, v50

    .line 2811
    add-int/lit8 v30, v30, -0x1

    goto :goto_4

    .line 2831
    .end local v30           #id:I
    .end local v34           #lenDeleteArray:I
    .end local v50           #tmpIdx:I
    .restart local v28       #i:I
    .restart local v35       #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_1
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v28, v3, -0x1

    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v28

    if-le v0, v3, :cond_e

    .line 2832
    aget v3, p1, v28

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2831
    add-int/lit8 v28, v28, -0x1

    goto :goto_5

    .line 2835
    :catch_0
    move-exception v25

    .line 2837
    .local v25, e:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2838
    if-eqz p3, :cond_2

    .line 2839
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2844
    .end local v25           #e:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v3

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_f

    .line 2845
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2846
    if-eqz p3, :cond_2

    .line 2847
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2852
    :cond_f
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2853
    .local v23, deleteCell:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_13

    .line 2854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v28, v0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v28

    if-gt v0, v3, :cond_12

    .line 2855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2856
    .local v13, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v13, :cond_10

    .line 2857
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startDataSetChangeAnimation_IRT] mOnScreenItems with null cell at idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    :goto_7
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 2861
    :cond_10
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v21

    .line 2862
    .local v21, delIdx:I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_11

    .line 2863
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2867
    :cond_11
    invoke-virtual {v13}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2868
    iget-object v3, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v5, 0x7f7fffff

    const v6, 0x7f7fffff

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2869
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_7

    .line 2872
    .end local v13           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v21           #delIdx:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2875
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2876
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2877
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v3, v5, :cond_14

    .line 2878
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2880
    :cond_14
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2881
    const/16 v48, 0x0

    .line 2884
    .local v48, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_15

    .line 2885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v6, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    move-result-object v48

    .line 2888
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v3, :cond_16

    .line 2889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 2892
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_1e

    .line 2893
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v18, v3, 0x0

    .line 2895
    .local v18, currentH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v5, "oldFirstIdx"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 2896
    .local v41, oldFirstIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v5, "oldFirstItemPositionY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 2898
    .local v42, oldFirstItemPositionY:I
    const v3, 0x7fffffff

    move/from16 v0, v42

    if-eq v0, v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v41

    if-ne v3, v0, :cond_18

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    if-eqz v41, :cond_18

    .line 2901
    :cond_17
    move/from16 v18, v42

    .line 2904
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v27, v0

    .line 2907
    .local v27, height:I
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 2908
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v3, v5, :cond_1a

    move/from16 v0, v27

    neg-int v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v5

    move/from16 v0, v18

    if-gt v0, v3, :cond_19

    .line 2912
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v3, v5, :cond_1b

    move/from16 v0, v27

    neg-int v3, v0

    move/from16 v0, v18

    if-le v0, v3, :cond_1b

    .line 2913
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 2919
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    if-nez v3, :cond_1c

    .line 2920
    move/from16 v0, v27

    neg-int v3, v0

    move/from16 v0, v18

    if-le v0, v3, :cond_1c

    .line 2921
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 2922
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 2927
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v3, :cond_1d

    .line 2928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2931
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2933
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 2936
    .end local v18           #currentH:I
    .end local v27           #height:I
    .end local v41           #oldFirstIdx:I
    .end local v42           #oldFirstItemPositionY:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v45

    .line 2941
    .local v45, onScreenSize:I
    if-lez v45, :cond_20

    .line 2942
    const/16 v44, -0x1

    .line 2943
    .local v44, oldVisibleY:I
    :cond_1f
    :goto_8
    move/from16 v0, v44

    int-to-float v3, v0

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lez v3, :cond_20

    .line 2944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    .line 2946
    .restart local v30       #id:I
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2947
    .local v43, oldIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2949
    .restart local v13       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v13}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v26

    .line 2951
    .local v26, h:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v47

    .line 2952
    .local v47, pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v3, v3

    div-int/lit8 v5, v26, 0x2

    add-int v44, v3, v5

    .line 2954
    const/4 v3, 0x0

    move/from16 v0, v44

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_1f

    .line 2955
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v32

    .line 2956
    .local v32, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    goto :goto_8

    .line 2961
    .end local v13           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v26           #h:I
    .end local v30           #id:I
    .end local v32           #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v43           #oldIdx:I
    .end local v44           #oldVisibleY:I
    .end local v47           #pos:Lcom/htc/sunny2/view/Vector3F;
    :cond_20
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2962
    .local v20, del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v22, v0

    .line 2964
    .local v22, delView:Lcom/htc/sunny2/view/SView;
    new-instance v15, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v15}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2965
    .local v15, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v5, 0x96

    invoke-virtual {v15, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2966
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 2967
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v3, v5, v6, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    const v6, 0x3e99999a

    const v9, 0x3e99999a

    const/high16 v10, 0x3f80

    invoke-direct {v5, v6, v9, v10}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v15, v3, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2968
    const/high16 v3, 0x437f

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getAlpha()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2970
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2971
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_9

    .line 2974
    .end local v15           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v20           #del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v22           #delView:Lcom/htc/sunny2/view/SView;
    :cond_21
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 2975
    .local v37, moveDown:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 2976
    .local v38, moveUp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v49, Landroid/util/SparseArray;

    invoke-direct/range {v49 .. v49}, Landroid/util/SparseArray;-><init>()V

    .line 2978
    .local v49, renderOrder:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-lez v45, :cond_27

    .line 2980
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 2981
    .local v39, nMappingCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    .restart local v30       #id:I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v30

    if-gt v0, v3, :cond_27

    .line 2983
    move/from16 v0, v39

    move/from16 v1, v30

    if-gt v0, v1, :cond_23

    .line 2981
    :cond_22
    :goto_b
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 2986
    :cond_23
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2987
    .restart local v43       #oldIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2988
    .restart local v13       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v0, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v53, v0

    .line 2990
    .local v53, view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v47

    .line 2991
    .restart local v47       #pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v3

    move/from16 v54, v0

    .line 2992
    .local v54, x:I
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v0, v3

    move/from16 v55, v0

    .line 2994
    .local v55, y:I
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v33

    .line 2995
    .local v33, last:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v0, v54

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_24

    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_22

    .line 2996
    :cond_24
    new-instance v15, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v15}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2997
    .restart local v15       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v5, 0x96

    invoke-virtual {v15, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2998
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v54

    int-to-float v5, v0

    move/from16 v0, v55

    int-to-float v6, v0

    const/4 v9, 0x0

    invoke-direct {v3, v5, v6, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v15, v3, v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2999
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 3001
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3003
    new-instance v12, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v53

    invoke-direct {v12, v0, v1, v2, v15}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;ILcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3004
    .local v12, anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    .line 3005
    .local v24, down:I
    if-gez v24, :cond_25

    .line 3006
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x3

    sub-int v3, v3, v30

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3007
    move-object/from16 v0, v37

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3009
    :cond_25
    if-ltz v24, :cond_26

    .line 3010
    add-int/lit8 v3, v30, 0x3

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3011
    move-object/from16 v0, v38

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3014
    :cond_26
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "What\'s up?"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3020
    .end local v12           #anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v13           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v15           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v24           #down:I
    .end local v30           #id:I
    .end local v33           #last:Lcom/htc/sunny2/view/Vector3F;
    .end local v39           #nMappingCount:I
    .end local v43           #oldIdx:I
    .end local v47           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v53           #view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v54           #x:I
    .end local v55           #y:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v16

    .line 3021
    .local v16, cooperateIdx:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2b

    .line 3022
    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v4, v16

    .line 3038
    .end local v16           #cooperateIdx:I
    .local v4, cooperateIdx:I
    :cond_28
    :goto_c
    const/16 v36, 0x1

    .line 3040
    .local v36, move:I
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v24

    .line 3041
    .restart local v24       #down:I
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v52

    .line 3042
    .local v52, up:I
    move/from16 v0, v24

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3043
    .local v17, count:I
    const/16 v40, 0x0

    .line 3044
    .local v40, offset:I
    const/16 v51, 0x0

    .local v51, u:I
    add-int/lit8 v19, v24, -0x1

    .local v19, d:I
    :goto_d
    move/from16 v0, v51

    move/from16 v1, v17

    if-ge v0, v1, :cond_2f

    .line 3045
    mul-int/lit8 v3, v36, 0x1e

    add-int/lit8 v40, v3, 0x78

    .line 3046
    const/4 v14, 0x0

    .line 3048
    .local v14, cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    const/4 v3, -0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_29

    .line 3049
    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3050
    .restart local v14       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v40

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3051
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    iget-object v5, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3052
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveDown id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    :cond_29
    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_2a

    .line 3056
    move-object/from16 v0, v38

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3057
    .restart local v14       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v40

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3058
    iget-object v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    iget-object v5, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3059
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveUp id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    :cond_2a
    if-nez v14, :cond_2d

    .line 3044
    :goto_e
    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_d

    .line 3025
    .end local v4           #cooperateIdx:I
    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v17           #count:I
    .end local v19           #d:I
    .end local v24           #down:I
    .end local v36           #move:I
    .end local v40           #offset:I
    .end local v51           #u:I
    .end local v52           #up:I
    .restart local v16       #cooperateIdx:I
    :cond_2b
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v21

    .line 3026
    .restart local v21       #delIdx:I
    if-gez v21, :cond_2c

    .line 3027
    move/from16 v46, v16

    .line 3028
    .local v46, oriIdx:I
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3029
    .end local v16           #cooperateIdx:I
    .restart local v4       #cooperateIdx:I
    const/4 v3, -0x1

    if-ne v4, v3, :cond_28

    .line 3030
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startDataSetChangeAnimation_IRT] Can\'t get current id, original="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3034
    .end local v4           #cooperateIdx:I
    .end local v46           #oriIdx:I
    .restart local v16       #cooperateIdx:I
    :cond_2c
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    move/from16 v4, v16

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v4, v16

    .end local v16           #cooperateIdx:I
    .restart local v4       #cooperateIdx:I
    goto/16 :goto_c

    .line 3064
    .end local v21           #delIdx:I
    .restart local v14       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .restart local v17       #count:I
    .restart local v19       #d:I
    .restart local v24       #down:I
    .restart local v36       #move:I
    .restart local v40       #offset:I
    .restart local v51       #u:I
    .restart local v52       #up:I
    :cond_2d
    iget v3, v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    if-ne v4, v3, :cond_2e

    .line 3065
    move/from16 v0, v40

    int-to-long v5, v0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3068
    :cond_2e
    invoke-virtual {v14}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->clear()V

    .line 3070
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .line 3073
    .end local v14           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    :cond_2f
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->clear()V

    .line 3074
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->clear()V

    .line 3076
    move-object/from16 v8, v48

    .line 3077
    .local v8, release1:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v7, v23

    .line 3078
    .local v7, deleteCell2:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v5, Lcom/htc/sunny2/widget/gridview/GridView$3;

    move-object/from16 v6, p0

    move-object/from16 v9, v49

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView$3;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    mul-int/lit8 v6, v36, 0x1e

    add-int/lit8 v6, v6, 0x78

    add-int/lit16 v6, v6, 0x96

    int-to-long v9, v6

    invoke-virtual {v3, v5, v9, v10}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 3599
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3600
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3602
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3604
    :cond_1
    return-void
.end method

.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Lcom/htc/sunny2/view/SView;Z)V
    .locals 2
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1596
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1597
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1599
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1597
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1602
    :cond_0
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1586
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1587
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1589
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1587
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1592
    :cond_0
    return v1
.end method

.method protected checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    .locals 10
    .parameter "oldFirstIdx"
    .parameter "oldFirstItemPositionX"
    .parameter "oldFirstItemPositionY"

    .prologue
    .line 559
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 560
    .local v1, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iput p2, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 561
    iput p3, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 562
    iput p1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 564
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 565
    :try_start_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    .line 566
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 567
    .local v0, bRefresh:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 568
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 570
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 571
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 572
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    if-eqz v4, :cond_5

    .line 574
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 592
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_1

    .line 593
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 596
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 614
    .end local v0           #bRefresh:Z
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v6, 0x1

    if-ge v4, v6, :cond_c

    .line 615
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 616
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    .line 617
    monitor-exit v5

    .line 722
    :goto_3
    return-object v1

    .line 566
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    .restart local v0       #bRefresh:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_6

    .line 579
    if-eqz v0, :cond_7

    .line 580
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 587
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_0

    .line 588
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    goto :goto_1

    .line 720
    .end local v0           #bRefresh:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 582
    .restart local v0       #bRefresh:Z
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 583
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    goto :goto_4

    .line 598
    .end local v0           #bRefresh:Z
    :cond_8
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    if-eq v4, v6, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 599
    :cond_9
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 600
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_a

    .line 601
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 604
    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_b

    .line 605
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 608
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    goto :goto_2

    .line 620
    :cond_c
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v4, v6, :cond_d

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_d

    .line 621
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 622
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 625
    :cond_d
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v4, v6, :cond_e

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_e

    .line 626
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 627
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 630
    :cond_e
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_f

    .line 631
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 632
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 635
    :cond_f
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    if-eq v4, v6, :cond_10

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_10

    .line 636
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 637
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 640
    :cond_10
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    if-eq v4, v6, :cond_11

    .line 641
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    .line 642
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 643
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_11

    .line 644
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onLayoutOrientationChange(Landroid/content/Context;I)V

    .line 648
    :cond_11
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    .line 649
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 653
    :cond_12
    const/4 v2, 0x0

    .line 654
    .local v2, isColumnNumChange:Z
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 655
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->columnBestFit()Z

    move-result v2

    .line 661
    :goto_5
    const/4 v4, 0x1

    if-ne v4, v2, :cond_13

    .line 662
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_13

    .line 663
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 667
    :cond_13
    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    if-ne v4, v6, :cond_14

    .line 668
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 669
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 670
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 673
    :cond_14
    const/4 v4, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    if-eq v4, v6, :cond_1a

    .line 674
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 675
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 678
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-gez v4, :cond_15

    .line 679
    if-ltz p1, :cond_18

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_18

    .line 680
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 688
    :cond_15
    :goto_6
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lez v4, :cond_19

    .line 689
    const/4 v4, 0x0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 690
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 694
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_16

    .line 695
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 696
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 697
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 704
    :cond_16
    :goto_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 719
    :goto_8
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 720
    monitor-exit v5

    goto/16 :goto_3

    .line 658
    :cond_17
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->rowBestFit()Z

    move-result v2

    goto :goto_5

    .line 683
    :cond_18
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_6

    .line 701
    :cond_19
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_7

    .line 708
    :cond_1a
    const/4 v3, -0x1

    .line 709
    .local v3, last:I
    if-ltz p1, :cond_1b

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_1b

    .line 710
    move v3, p1

    .line 716
    :goto_9
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 713
    :cond_1b
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 513
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    return-void

    .line 519
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 523
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

    .line 521
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected columnBestFit()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v13, 0x7f7fffff

    const/4 v2, 0x0

    .line 997
    const/4 v7, 0x0

    .line 998
    .local v7, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 1002
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 1003
    .local v4, startX:I
    const/4 v10, 0x0

    .line 1004
    .local v10, totalItemWidth:I
    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 1005
    .local v12, width:I
    const/4 v9, -0x1

    .line 1007
    .local v9, numColumn:I
    const/4 v1, 0x0

    .line 1009
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_0
    if-nez v1, :cond_0

    .line 1014
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1016
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v5, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1018
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1020
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 1021
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v13, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 1022
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 1024
    if-ge v11, v14, :cond_1

    .line 1025
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GridView][columnBestFit]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GridViewItem with illegal width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int/2addr v4, v3

    .line 1028
    const/4 v8, 0x0

    .line 1029
    .local v8, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr v4, v3

    .line 1030
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v12

    shr-int/lit8 v5, v11, 0x2

    add-int/2addr v3, v5

    if-le v4, v3, :cond_6

    .line 1031
    move v9, v8

    .line 1037
    if-gez v9, :cond_2

    .line 1038
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1041
    :cond_2
    if-le v14, v9, :cond_3

    .line 1042
    const/4 v9, 0x1

    .line 1047
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v9, v3, :cond_4

    .line 1048
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 1049
    const/4 v7, 0x1

    .line 1052
    :cond_4
    if-lez v9, :cond_5

    .line 1053
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v3, v12, v3

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v10

    add-int/lit8 v5, v9, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1054
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    if-gez v3, :cond_5

    .line 1055
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1059
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v8           #j:I
    .end local v9           #numColumn:I
    .end local v10           #totalItemWidth:I
    .end local v11           #w:I
    .end local v12           #width:I
    :cond_5
    return v7

    .line 1035
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v8       #j:I
    .restart local v9       #numColumn:I
    .restart local v10       #totalItemWidth:I
    .restart local v11       #w:I
    .restart local v12       #width:I
    :cond_6
    add-int/2addr v10, v11

    .line 1028
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1011
    .end local v8           #j:I
    .end local v11           #w:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    .prologue
    .line 3757
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3758
    .local v2, firstIdx:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 3759
    .local v5, numRows:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3761
    .local v3, itemCount:I
    if-gtz v5, :cond_0

    .line 3762
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeHorizontalScrollExtent] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 3782
    :goto_0
    return v7

    .line 3767
    :cond_0
    add-int v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    div-int v1, v7, v5

    .line 3768
    .local v1, columnCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3769
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    .line 3771
    .local v4, itemWidth:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int v6, v7, v8

    .line 3778
    .local v6, totalWidth:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-le v6, v7, :cond_1

    .line 3779
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_0

    .line 3782
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 3786
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3787
    .local v1, firstIdx:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3788
    .local v2, itemCount:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 3790
    .local v4, numRows:I
    if-gtz v4, :cond_1

    .line 3791
    const-string v8, "GridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[computeHorizontalScrollOffset] divide unexpected number. FirstIdx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numColumns "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    :cond_0
    :goto_0
    return v7

    .line 3795
    :cond_1
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 3796
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3797
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v3

    .line 3798
    .local v3, itemWidth:I
    div-int v6, v1, v4

    .line 3800
    .local v6, whichColumn:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int v5, v7, v8

    .line 3807
    .local v5, prePosistion:I
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v7, v5, v7

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 10

    .prologue
    .line 3813
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3814
    .local v2, firstIdx:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 3815
    .local v5, numRows:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3817
    .local v3, itemCount:I
    if-gtz v5, :cond_0

    .line 3818
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeHorizontalScrollRange] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 3843
    :goto_0
    return v7

    .line 3823
    :cond_0
    add-int v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    div-int v1, v7, v5

    .line 3824
    .local v1, columnCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3825
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    .line 3827
    .local v4, itemWidth:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int v6, v7, v8

    .line 3829
    .local v6, totalWidth:I
    if-lez v1, :cond_1

    .line 3830
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v6, v7

    .line 3839
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-le v6, v7, :cond_2

    .line 3840
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    sub-int v7, v6, v7

    goto :goto_0

    .line 3843
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    .line 3666
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3667
    .local v1, firstIdx:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 3668
    .local v4, numColumns:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3670
    .local v2, itemCount:I
    if-gtz v4, :cond_0

    .line 3671
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeVerticalScrollExtent] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3673
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 3691
    :goto_0
    return v7

    .line 3676
    :cond_0
    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    div-int v5, v7, v4

    .line 3677
    .local v5, rowCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3678
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    .line 3680
    .local v3, itemHeight:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int v6, v7, v8

    .line 3687
    .local v6, totalHeight:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    if-le v6, v7, :cond_1

    .line 3688
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_0

    .line 3691
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 3695
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3696
    .local v1, firstIdx:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3697
    .local v2, itemCount:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 3699
    .local v4, numColumns:I
    if-gtz v4, :cond_1

    .line 3700
    const-string v8, "GridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[computeVerticalScrollOffset] divide unexpected number. FirstIdx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numColumns "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    :cond_0
    :goto_0
    return v7

    .line 3705
    :cond_1
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 3706
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3707
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    .line 3708
    .local v3, itemHeight:I
    div-int v6, v1, v4

    .line 3710
    .local v6, whichRow:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    neg-int v5, v7

    .line 3717
    .local v5, prePosistion:I
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v7, v5

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 10

    .prologue
    .line 3723
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3724
    .local v1, firstIdx:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 3725
    .local v4, numColumns:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 3727
    .local v2, itemCount:I
    if-gtz v4, :cond_0

    .line 3728
    const-string v7, "GridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[computeVerticalScrollRange] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3730
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 3753
    :goto_0
    return v7

    .line 3733
    :cond_0
    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    div-int v5, v7, v4

    .line 3734
    .local v5, rowCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3735
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    .line 3737
    .local v3, itemHeight:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v3

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int v6, v7, v8

    .line 3739
    .local v6, totalHeight:I
    if-lez v5, :cond_1

    .line 3740
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    sub-int/2addr v6, v7

    .line 3749
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    if-le v6, v7, :cond_2

    .line 3750
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    sub-int v7, v6, v7

    goto :goto_0

    .line 3753
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    goto :goto_0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 2750
    const/4 v0, -0x1

    return v0
.end method

.method createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1624
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;-><init>(IJ)V

    return-object v0
.end method

.method public createResource()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->createResource()V

    .line 364
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 366
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    .line 368
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    .line 369
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 371
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v0, v2, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 373
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 381
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 382
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 384
    new-instance v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    .line 389
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->attachIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;Lcom/htc/sunny2/SceneNode;)V

    .line 390
    return-void
.end method

.method public disableLayoutRequest(Z)V
    .locals 3
    .parameter "bDisabled"

    .prologue
    .line 3651
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3652
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 3663
    :goto_0
    return-void

    .line 3656
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3658
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3659
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 3661
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3662
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enablePinOnItemScroll()V
    .locals 1

    .prologue
    .line 3523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 3524
    return-void
.end method

.method public enableRootNode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 3508
    return-void
.end method

.method protected fillDown()V
    .locals 7

    .prologue
    .line 2380
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2382
    .local v2, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2383
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_0

    .line 2384
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2387
    :cond_0
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 2388
    .local v0, bottom:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2389
    .local v3, startIdx:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    if-le v0, v4, :cond_2

    if-ge v3, v2, :cond_2

    .line 2390
    if-lt v3, v2, :cond_1

    .line 2391
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2394
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2396
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2397
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 2398
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 2400
    :cond_2
    return-void
.end method

.method protected fillLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2427
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2428
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2429
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2433
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int v2, v3, v4

    .line 2434
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2435
    if-gez v2, :cond_1

    .line 2436
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2439
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 2440
    .local v1, newLeft:I
    invoke-virtual {p0, v2, v1, v5, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2442
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2443
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v2, v3

    .line 2444
    goto :goto_0

    .line 2445
    .end local v1           #newLeft:I
    :cond_2
    return-void
.end method

.method protected fillRight()V
    .locals 7

    .prologue
    .line 2403
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2405
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2406
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2407
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2411
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2412
    .local v3, startIdx:I
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    .line 2413
    .local v2, right:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-ge v2, v4, :cond_2

    if-ge v3, v1, :cond_2

    .line 2414
    if-lt v3, v1, :cond_1

    .line 2415
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2418
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2420
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2421
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2422
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    goto :goto_0

    .line 2424
    :cond_2
    return-void
.end method

.method protected fillUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2361
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2362
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2363
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2365
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v2, v3, v4

    .line 2366
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    rsub-int/lit8 v4, v4, 0x0

    if-ge v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2367
    if-gez v2, :cond_1

    .line 2368
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2371
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v1, v3, v4

    .line 2372
    .local v1, newTop:I
    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2374
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2375
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v2, v3

    .line 2376
    goto :goto_0

    .line 2377
    .end local v1           #newTop:I
    :cond_2
    return-void
.end method

.method public freeInvisibleResource()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$1;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method public freeResource()V
    .locals 7

    .prologue
    const v6, 0x7f7fffff

    const/4 v5, 0x0

    .line 396
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->detachIRT(Lcom/htc/sunny2/SceneNode;)V

    .line 397
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 399
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->release()V

    .line 401
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->destroy(Lcom/htc/sunny2/SceneNode;)V

    .line 405
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 406
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 407
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 409
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 413
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 415
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 416
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->deInit()V

    .line 417
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 423
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 425
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_2

    .line 423
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 429
    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v6, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 430
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_1

    .line 432
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 434
    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 435
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 438
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 439
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 440
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_2

    .line 442
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 445
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 446
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 448
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->freeResource()V

    .line 449
    return-void
.end method

.method public getAnimationController()Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 1

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    return-object v0
.end method

.method public bridge synthetic getChild(I)Lcom/htc/sunny2/SceneNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/htc/sunny2/view/SView;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v1

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 484
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 486
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 2547
    const/4 v0, 0x0

    .line 2548
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2549
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2551
    :cond_0
    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 1

    .prologue
    .line 1609
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstIndexPostion()I
    .locals 6

    .prologue
    .line 536
    const v1, 0x7fffffff

    .line 538
    .local v1, posY:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 539
    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_0

    .line 547
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v1, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 553
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 555
    return v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GridView][getFirstIndexPostion] can\'t get item from mOnScreenItems "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const v1, 0x7fffffff

    goto :goto_0

    .line 553
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 1247
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1248
    :cond_0
    const/4 v0, -0x1

    .line 1250
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    goto :goto_0
.end method

.method public getGridViewItem(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2539
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1158
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1260
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1261
    :cond_0
    const/4 v0, -0x1

    .line 1263
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_0
.end method

.method protected getLevelNumberByItem(I)I
    .locals 3
    .parameter "onScreenIdx"

    .prologue
    .line 2075
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 2077
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2078
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 2081
    :cond_0
    div-int v1, p1, v0

    return v1
.end method

.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public getNumColumn()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    return v0
.end method

.method public getNumRow()I
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    return v0
.end method

.method public getOnFullScreenTransitionEndListener()Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;
    .locals 1

    .prologue
    .line 3634
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    return-object v0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 3
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 2758
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 2759
    .local v0, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 2760
    iget v1, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 2761
    return-object v0
.end method

.method public getRootNode()Lcom/htc/sunny2/SceneNode;
    .locals 1

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .locals 1

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    return-object v0
.end method

.method public getScreenItemBottom()I
    .locals 6

    .prologue
    .line 3554
    const/4 v1, 0x0

    .line 3556
    .local v1, nBottom:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3557
    .local v3, nCount:I
    if-gtz v3, :cond_0

    move v2, v1

    .line 3570
    .end local v1           #nBottom:I
    .local v2, nBottom:I
    :goto_0
    return v2

    .line 3560
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3561
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    move v2, v1

    .line 3562
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3564
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_1
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    .line 3565
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x5

    :goto_1
    move v2, v1

    .line 3570
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3567
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x4

    goto :goto_1
.end method

.method public getScreenItemTop()I
    .locals 1

    .prologue
    .line 3550
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 3

    .prologue
    .line 1230
    const/4 v0, -0x1

    .line 1231
    .local v0, id:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1232
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1233
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1235
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 1237
    :cond_0
    return v0

    .line 1233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 2515
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method protected getValidIndexDuringFastScroller(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 3643
    return p1
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1162
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public getViewItemCount()I
    .locals 2

    .prologue
    .line 2543
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChild()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected invokeOnItemScrollListener()V
    .locals 7

    .prologue
    .line 2323
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2324
    .local v0, first:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2325
    .local v2, visCount:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2326
    .local v1, totCount:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v3, :cond_0

    .line 2327
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2329
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 2330
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 2332
    :cond_1
    return-void
.end method

.method protected makeItemColumn(IIIZ)I
    .locals 12
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"

    .prologue
    .line 1109
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1110
    .local v10, total:I
    const/4 v7, 0x0

    .line 1111
    .local v7, W:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 1113
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1114
    const/4 v1, 0x0

    .line 1116
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_1
    if-nez v1, :cond_0

    .line 1123
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1125
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1127
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1128
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1132
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    sub-int/2addr p3, v3

    .line 1133
    if-ge v7, v11, :cond_1

    .line 1134
    move v7, v11

    .line 1137
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1138
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1139
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1141
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1142
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1113
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1145
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    add-int v3, p2, v7

    return v3

    .line 1118
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected makeItemRow(IIIZ)I
    .locals 12
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"

    .prologue
    .line 1063
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1064
    .local v10, total:I
    const/4 v7, 0x0

    .line 1066
    .local v7, H:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    .line 1068
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1070
    const/4 v1, 0x0

    .line 1072
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_1
    if-nez v1, :cond_0

    .line 1079
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1081
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1083
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1084
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1091
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr p2, v3

    .line 1092
    if-ge v7, v8, :cond_1

    .line 1093
    move v7, v8

    .line 1096
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1097
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1098
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1100
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1101
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1068
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1105
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    sub-int v3, p3, v7

    return v3

    .line 1074
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public notifyMediaDataChange()V
    .locals 2

    .prologue
    .line 2585
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2586
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 2587
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2588
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2589
    return-void

    .line 2587
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMediaDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2592
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 2593
    return-void
.end method

.method public notifyMediaDataInvalidate()V
    .locals 2

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2574
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2576
    :cond_0
    return-void
.end method

.method public notifyMediaDataInvalidate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2582
    :cond_0
    return-void
.end method

.method public notifyPreparatorMediaDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 2597
    return-void
.end method

.method public notifyPreparatorMediaDataChange(II)V
    .locals 3
    .parameter "index"
    .parameter "flag"

    .prologue
    .line 2600
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView$2;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;II)V

    .line 2608
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2609
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2614
    :goto_0
    return-void

    .line 2612
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyThumbnailTextureReadyIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 2617
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2618
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    .line 2619
    .local v0, viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 2620
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    .line 2621
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 2622
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 2625
    .end local v0           #viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    :cond_0
    return-void
.end method

.method protected notifyUpdatePreparator(Z)V
    .locals 12
    .parameter "bIsNewList"

    .prologue
    const/4 v11, 0x1

    .line 910
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 913
    :cond_0
    if-ne v11, p1, :cond_1

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x12c

    add-long/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->loadRange(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 925
    .local v8, preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    const/4 v7, 0x0

    .line 926
    .local v7, number:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v11, :cond_2

    .line 927
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 932
    :goto_2
    invoke-virtual {v8, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setColumnNumber(I)V

    .line 933
    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resetDecodeDirection()V

    goto :goto_0

    .line 919
    .end local v7           #number:I
    .end local v8           #preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    :catch_0
    move-exception v6

    .line 921
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "GridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GridView][notifyUpdatePreparator]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 930
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #number:I
    .restart local v8       #preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    goto :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 1980
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v1, v2, :cond_1

    .line 1982
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1983
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1996
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1997
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v3, :cond_2

    .line 1998
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    .line 2003
    :goto_1
    return v3

    .line 1987
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToCell(II)Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-result-object v0

    .line 1989
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 1992
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1993
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    goto :goto_0

    .line 2001
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 2087
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "gridBouncingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 2088
    .local v0, gridBouncingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v0, :cond_0

    .line 2090
    const/4 v2, 0x0

    .line 2107
    :goto_0
    return v2

    .line 2093
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v2, :cond_2

    .line 2094
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v4, p4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    .line 2100
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "GridFlingingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    .line 2101
    .local v1, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v1, :cond_1

    .line 2103
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2105
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v5, "GridFlingingAction"

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2106
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2097
    .end local v1           #gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v4, p3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1873
    const/4 v0, 0x0

    .line 1875
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1889
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1880
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 1709
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1711
    .local v6, tmpfocusId:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v7}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 1867
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1717
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    if-ne v6, v8, :cond_2

    .line 1719
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1720
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1721
    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1722
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1723
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1724
    const/4 v0, 0x1

    move v1, v0

    .line 1725
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1728
    .end local v1           #bResult:I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v0

    .line 1771
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1732
    .end local v1           #bResult:I
    :sswitch_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v7, v6, v7

    if-le v7, v8, :cond_3

    .line 1734
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v6, v7

    .line 1775
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v6, v7, :cond_7

    .line 1777
    const/4 v3, 0x0

    .line 1778
    .local v3, cellCoordinate:I
    const/4 v4, 0x0

    .line 1779
    .local v4, cellHeight:I
    const/4 v5, 0x0

    .line 1781
    .local v5, numRow:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1782
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_5

    .line 1784
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1786
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1788
    :cond_4
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1791
    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-le v6, v7, :cond_b

    .line 1793
    if-eqz v2, :cond_9

    .line 1795
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_8

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_8

    .line 1797
    const/4 v5, 0x1

    .line 1803
    :goto_2
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1804
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1853
    :goto_3
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1854
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1855
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_6

    .line 1857
    const/4 v5, 0x0

    .line 1858
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1859
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1860
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1861
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1864
    :cond_6
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1865
    const/4 v0, 0x1

    .end local v3           #cellCoordinate:I
    .end local v4           #cellHeight:I
    .end local v5           #numRow:I
    :cond_7
    move v1, v0

    .line 1867
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1740
    .end local v1           #bResult:I
    :sswitch_1
    if-eq v6, v8, :cond_3

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1742
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 1748
    :sswitch_2
    add-int/lit8 v7, v6, -0x1

    if-le v7, v8, :cond_3

    .line 1750
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1756
    :sswitch_3
    if-eq v6, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1758
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1764
    :sswitch_4
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1766
    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 1767
    const/4 v0, 0x1

    move v1, v0

    .line 1768
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1801
    .end local v1           #bResult:I
    .restart local v3       #cellCoordinate:I
    .restart local v4       #cellHeight:I
    .restart local v5       #numRow:I
    :cond_8
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_2

    .line 1808
    :cond_9
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_a

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_a

    .line 1810
    const/4 v5, 0x1

    .line 1816
    :goto_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1817
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1818
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto :goto_3

    .line 1814
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_4

    .line 1823
    :cond_b
    if-eqz v2, :cond_d

    .line 1825
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_c

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_c

    .line 1827
    const/4 v5, -0x1

    .line 1833
    :goto_5
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1834
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1835
    const-string v7, "fish"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OldFocus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "New: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1831
    :cond_c
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_5

    .line 1839
    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_e

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_e

    .line 1841
    const/4 v5, -0x1

    .line 1847
    :goto_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1848
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1849
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto/16 :goto_3

    .line 1845
    :cond_e
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_6

    .line 1728
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZFFFII)V
    .locals 17
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v14

    .line 741
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v13, v15, :cond_1

    .line 743
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 744
    monitor-exit v14

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v0, p5

    if-ne v13, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v0, p6

    if-eq v13, v0, :cond_3

    .line 751
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 754
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 755
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 758
    const/4 v13, 0x1

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    const/4 v13, 0x1

    move/from16 v0, p6

    if-lt v0, v13, :cond_0

    .line 762
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 766
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 771
    const-string v13, "GridView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][GridView][onLayout]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const v10, 0x7fffffff

    .line 774
    .local v10, oldFirstItemPositionX:I
    const v11, 0x7fffffff

    .line 775
    .local v11, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 776
    .local v9, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 778
    .local v12, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_6

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v10, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v11, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 782
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v13, :cond_5

    .line 783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 784
    .local v3, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_4

    .line 785
    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 786
    iget-object v13, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v14, 0x7f7fffff

    const v15, 0x7f7fffff

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 787
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 782
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 746
    .end local v3           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v7           #i:I
    .end local v9           #oldFirstIdx:I
    .end local v10           #oldFirstItemPositionX:I
    .end local v11           #oldFirstItemPositionY:I
    .end local v12           #oldLastIdx:I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 790
    .restart local v7       #i:I
    .restart local v9       #oldFirstIdx:I
    .restart local v10       #oldFirstItemPositionX:I
    .restart local v11       #oldFirstItemPositionY:I
    .restart local v12       #oldLastIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 793
    .end local v7           #i:I
    :cond_6
    const/4 v2, 0x0

    .line 795
    .local v2, bSetNewList:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    move-result-object v4

    .line 797
    .local v4, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iget-boolean v13, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v13, :cond_0

    .line 800
    iget-boolean v2, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 801
    iget v10, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 802
    iget v11, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 803
    iget v9, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    move/from16 v0, p5

    neg-int v14, v0

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-int/lit8 v15, p6, 0x2

    int-to-float v15, v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 817
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v13, :cond_e

    .line 818
    const/4 v5, 0x0

    .line 819
    .local v5, currentBase:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 820
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v5, v13, 0x0

    .line 828
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    const v13, 0x7fffffff

    if-eq v11, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_11

    if-ge v11, v5, :cond_7

    if-eqz v9, :cond_11

    .line 832
    :cond_7
    move v5, v11

    .line 841
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 843
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v5, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v14

    sub-int v5, v13, v14

    .line 844
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v13, v14, :cond_a

    move/from16 v0, p6

    neg-int v13, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v13, v14

    if-gt v5, v13, :cond_9

    .line 848
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    .line 854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 855
    .local v8, lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v8, :cond_b

    iget v13, v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v14

    sub-int/2addr v13, v14

    move/from16 v0, p6

    neg-int v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v14, v15

    if-le v13, v14, :cond_b

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 858
    .local v6, firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v14, v14, 0x0

    if-ge v13, v14, :cond_b

    .line 859
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 887
    .end local v6           #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 889
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ne v9, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v12, v13, :cond_c

    const/4 v13, 0x1

    if-ne v13, v2, :cond_d

    .line 890
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 893
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 899
    .end local v5           #currentBase:I
    .end local v8           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    if-ne v13, v14, :cond_f

    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onLayoutChangedIRT(II)V

    .line 902
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 905
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    .line 823
    .restart local v5       #currentBase:I
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/lit8 v5, v13, 0x0

    goto/16 :goto_2

    .line 834
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    const v13, 0x7fffffff

    if-eq v10, v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_8

    if-ge v10, v5, :cond_12

    if-eqz v9, :cond_8

    .line 838
    :cond_12
    move v5, v10

    goto/16 :goto_3

    .line 865
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5, v14, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v14

    add-int v5, v13, v14

    .line 866
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v13, v14, :cond_14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int v13, p5, v13

    if-lt v5, v13, :cond_13

    .line 870
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    .line 876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 877
    .restart local v8       #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v8, :cond_b

    iget v13, v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v14, p5, v14

    if-ge v13, v14, :cond_b

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToRight()V

    .line 879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 880
    .restart local v6       #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v13, v14, :cond_b

    .line 881
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToLeft(Z)V

    goto/16 :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2061
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToPosition(II)I

    move-result v1

    .line 2062
    .local v1, onScreenIdx:I
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v2, :cond_0

    .line 2064
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2065
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2069
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->performLongPress(Lcom/htc/sunny2/view/SView;II)Z

    goto :goto_0
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1348
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->onRenderOrderChanged(Z)V

    .line 1349
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 1350
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 359
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    .line 2035
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 2036
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    .line 2041
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Panning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2048
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2049
    return v2

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    goto :goto_0
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1959
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1960
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    .line 1966
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->doBounceBack()Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1975
    :cond_0
    :goto_1
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    goto :goto_0

    .line 1970
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method protected onScrollMotionIRT(II)V
    .locals 15
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2164
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v11, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return-void

    .line 2166
    :cond_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2167
    .local v8, totalCount:I
    if-eqz v8, :cond_0

    .line 2171
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v11, :cond_0

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v12, 0x7fffffff

    if-eq v11, v12, :cond_0

    .line 2175
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2176
    .local v5, oldFirstIdx:I
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2178
    .local v6, oldLastIdx:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2179
    .local v7, tmpLastIdx:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    if-gt v3, v7, :cond_9

    .line 2180
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2182
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_3

    .line 2179
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2186
    :cond_3
    iget-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2188
    .local v4, item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v9

    .line 2189
    .local v9, w:I
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v10

    .line 2191
    .local v10, y:I
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int v11, v11, p1

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2192
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int v11, v11, p2

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2194
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2195
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2196
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2197
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2199
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2200
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2204
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto :goto_2

    .line 2210
    :cond_4
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v12, v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_5

    .line 2211
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2212
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2214
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2215
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2219
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2220
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_2

    .line 2224
    :cond_5
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    div-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto :goto_2

    .line 2228
    :cond_6
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v11, v9

    const/4 v12, -0x1

    if-ge v11, v12, :cond_7

    .line 2229
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2230
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2232
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2233
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2237
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto/16 :goto_2

    .line 2239
    :cond_7
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_8

    .line 2240
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2241
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2243
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2244
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2248
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2249
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto/16 :goto_2

    .line 2253
    :cond_8
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    div-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto/16 :goto_2

    .line 2258
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v9           #w:I
    .end local v10           #y:I
    :cond_9
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 2259
    if-gez p2, :cond_f

    .line 2260
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 2276
    :cond_a
    :goto_3
    const/4 v11, -0x1

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-eq v11, v12, :cond_b

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v11, :cond_b

    .line 2277
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 2281
    :cond_b
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v11, :cond_c

    .line 2282
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_12

    .line 2283
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2290
    :cond_c
    :goto_4
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v6, v11, :cond_d

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eq v5, v11, :cond_e

    .line 2291
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2294
    :cond_e
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v11, p0, v12, v13, v14}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2296
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v11, :cond_0

    .line 2298
    const/4 v2, 0x0

    .line 2299
    .local v2, direction:I
    if-nez p1, :cond_13

    .line 2300
    move/from16 v0, p2

    int-to-float v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 2305
    :goto_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v11, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    goto/16 :goto_0

    .line 2262
    .end local v2           #direction:I
    :cond_f
    if-lez p2, :cond_a

    .line 2263
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    goto :goto_3

    .line 2267
    :cond_10
    if-gez p1, :cond_11

    .line 2268
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    goto :goto_3

    .line 2270
    :cond_11
    if-lez p1, :cond_a

    .line 2271
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    goto :goto_3

    .line 2285
    :cond_12
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_c

    .line 2286
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_4

    .line 2303
    .restart local v2       #direction:I
    :cond_13
    const/4 v11, 0x0

    move/from16 v0, p1

    int-to-float v12, v0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    goto :goto_5
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2008
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2016
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2017
    const/4 v1, 0x0

    .line 2029
    :goto_0
    return v1

    .line 2019
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToPosition(II)I

    move-result v0

    .line 2021
    .local v0, onScreenIdx:I
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v1, :cond_1

    .line 2025
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 2026
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 2029
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1389
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->onSizeChanged(IIII)V

    .line 1391
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onSizeChanged(IIII)V

    .line 1397
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 1399
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 7
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1651
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v3, v6, :cond_0

    .line 1652
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1653
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1656
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v3, v6, :cond_2

    .line 1696
    :cond_1
    :goto_0
    return v2

    .line 1663
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    if-nez v3, :cond_4

    .line 1664
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1665
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1666
    .local v1, intercepted:Z
    if-eqz v1, :cond_4

    .line 1667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1669
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    goto :goto_0

    .line 1676
    .end local v1           #intercepted:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1678
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 1681
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1683
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 1685
    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 1687
    const-string v3, "GridView"

    const-string v4, "[HTCAlbum][Gridview][onTouchEvent]: SCROLL_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1691
    :cond_6
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1694
    :cond_7
    if-eq v0, v2, :cond_1

    .line 1696
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    goto :goto_0
.end method

.method protected onUpdatePositionAnimation()V
    .locals 1

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdatePositionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3595
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->onUpdatePositionAnimation()V

    .line 3596
    :cond_0
    return-void
.end method

.method protected pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x1

    .line 1413
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1414
    .local v2, count:I
    if-nez v2, :cond_1

    move v3, v7

    .line 1430
    :cond_0
    :goto_0
    return v3

    .line 1418
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1419
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1421
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1422
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1423
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1424
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1426
    .local v0, bottom:I
    if-gt v6, p2, :cond_2

    if-gt p2, v0, :cond_2

    if-gt v4, p1, :cond_2

    if-le p1, v5, :cond_0

    .line 1418
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #bottom:I
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_3
    move v3, v7

    .line 1430
    goto :goto_0
.end method

.method public postRenderRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3498
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 3499
    :cond_0
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportScrollStateChange(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2343
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 2348
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    .line 2351
    :cond_0
    if-nez p1, :cond_1

    .line 2353
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    .line 2355
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    .line 2358
    :cond_1
    return-void
.end method

.method public resetGesture()V
    .locals 3

    .prologue
    .line 3527
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v1, :cond_1

    .line 3529
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 3530
    const/4 v0, 0x0

    .line 3534
    .local v0, renderAction:Lcom/htc/sunny2/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3535
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3540
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3541
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3543
    .end local v0           #renderAction:Lcom/htc/sunny2/RenderThreadAction;
    :cond_1
    return-void
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 729
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 730
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 731
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 734
    :cond_0
    rem-int v1, p1, v0

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method protected restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;
    .locals 15
    .parameter "currentId"
    .parameter "oldIdx"
    .parameter "bundle"

    .prologue
    .line 2717
    const-string v11, "oldFirstIdx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2718
    .local v5, oldFirstIdx:I
    const-string v11, "oldFirstItemPositionY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2720
    .local v6, oldFirstItemPositionY:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2721
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    .line 2722
    .local v8, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2724
    .local v4, h:I
    sub-int v3, p2, v5

    .line 2726
    .local v3, d:I
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v2, v3, v11

    .line 2727
    .local v2, colId:I
    if-gez v2, :cond_0

    .line 2728
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v2, v11

    .line 2731
    :cond_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v7, v3, v11

    .line 2732
    .local v7, rowId:I
    if-gez v7, :cond_1

    if-eqz v2, :cond_1

    .line 2733
    add-int/lit8 v7, v7, -0x1

    .line 2737
    :cond_1
    div-int/lit8 v11, v8, 0x2

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v12, v8

    mul-int/2addr v12, v2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int v9, v11, v12

    .line 2738
    .local v9, x:I
    div-int/lit8 v11, v4, 0x2

    rsub-int/lit8 v11, v11, 0x0

    add-int/2addr v11, v6

    sub-int/2addr v11, v4

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x1

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v13, v4

    mul-int/2addr v12, v13

    sub-int v10, v11, v12

    .line 2740
    .local v10, y:I
    new-instance v11, Lcom/htc/sunny2/view/Vector3F;

    int-to-float v12, v9

    int-to-float v13, v10

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    return-object v11
.end method

.method public resumePreparator(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1333
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    goto :goto_0

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method protected rowBestFit()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v13, 0x7f7fffff

    const/4 v2, 0x0

    .line 937
    const/4 v9, 0x0

    .line 938
    .local v9, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 939
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    .line 940
    .local v5, startY:I
    const/4 v12, 0x0

    .line 941
    .local v12, totalItemHeight:I
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 942
    .local v8, height:I
    const/4 v11, -0x1

    .line 944
    .local v11, numRow:I
    const/4 v1, 0x0

    .line 946
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    if-nez v1, :cond_0

    .line 951
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 953
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v4, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 954
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    .line 955
    .local v7, h:I
    if-ge v7, v14, :cond_1

    .line 956
    const-string v3, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GridView][rowBestFit]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "GridViewItem with illegal height="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_1
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 959
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v13, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 960
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 962
    const/4 v10, 0x0

    .line 963
    .local v10, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 964
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    shr-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    if-le v5, v3, :cond_6

    .line 965
    move v11, v10

    .line 971
    if-gez v11, :cond_2

    .line 972
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 975
    :cond_2
    if-le v14, v11, :cond_3

    .line 976
    const/4 v11, 0x1

    .line 981
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v11, v3, :cond_4

    .line 982
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 983
    const/4 v9, 0x1

    .line 986
    :cond_4
    if-lez v11, :cond_5

    .line 987
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v3, v8, v3

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v12

    add-int/lit8 v4, v11, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    mul-int/2addr v4, v6

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 988
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    if-gez v3, :cond_5

    .line 989
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 993
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #h:I
    .end local v8           #height:I
    .end local v10           #j:I
    .end local v11           #numRow:I
    .end local v12           #totalItemHeight:I
    :cond_5
    return v9

    .line 969
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v7       #h:I
    .restart local v8       #height:I
    .restart local v10       #j:I
    .restart local v11       #numRow:I
    .restart local v12       #totalItemHeight:I
    :cond_6
    add-int/2addr v12, v7

    .line 962
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 948
    .end local v7           #h:I
    .end local v10           #j:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public setGridViewItem(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "itemPrototype"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 491
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2
    .parameter "hspace"

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1326
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 1327
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1329
    return-void

    .line 1327
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "szIdentifier"

    .prologue
    .line 3488
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    .line 3489
    return-void
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
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
    .line 2559
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Z)V

    .line 2560
    return-void
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;Z)V
    .locals 2
    .parameter
    .parameter "reLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2563
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2564
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2565
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 2566
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    if-eqz p2, :cond_0

    .line 2569
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2570
    :cond_0
    return-void

    .line 2565
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    .line 2566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
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
    .line 529
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 530
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 531
    return-void
.end method

.method public setNumColumn(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1297
    if-gez p1, :cond_0

    .line 1298
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1300
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 1301
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1304
    return-void
.end method

.method public setNumRow(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1308
    if-gez p1, :cond_0

    .line 1309
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1311
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 1312
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1315
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 1293
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 1283
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 1269
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 1273
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1189
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1190
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 1192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1194
    return-void

    .line 1192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 494
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->setPadding(IIII)V

    .line 495
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 497
    monitor-exit v1

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V
    .locals 3
    .parameter "thumbPreparation"

    .prologue
    .line 2449
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 2451
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2453
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;

    const-string v1, "setPreparation"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2455
    .local v0, setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v1, v2, :cond_1

    .line 2456
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->onProcessEventIRT()V

    .line 2460
    .end local v0           #setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_0
    :goto_0
    return-void

    .line 2458
    .restart local v0       #setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlight(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1370
    const/4 v0, 0x0

    .line 1371
    .local v0, isChanged:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1372
    :try_start_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eq p1, v1, :cond_0

    .line 1373
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 1374
    const/4 v0, 0x1

    .line 1376
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1376
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1381
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlightEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 1361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1364
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1207
    const/4 v0, 0x1

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1208
    return-void
.end method

.method protected setSelection(IZ)V
    .locals 1
    .parameter "index"
    .parameter "reLayout"

    .prologue
    .line 1212
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1213
    return-void
.end method

.method public setSelection(IZI)V
    .locals 2
    .parameter "idx"
    .parameter "reLayout"
    .parameter "posY"

    .prologue
    .line 1218
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1220
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 1221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    if-eqz p2, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1227
    :cond_0
    return-void

    .line 1221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSnapShotHost(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V
    .locals 0
    .parameter "snapShotHost"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSnapShotHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 193
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2
    .parameter "vspace"

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1319
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 1320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1322
    return-void

    .line 1320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1344
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1345
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 0
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 2755
    return-void
.end method

.method public startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 3156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v0, v1, :cond_1

    .line 3157
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 3169
    :cond_0
    :goto_0
    return-void

    .line 3160
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3161
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$4;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;[I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected storeCurrentState_IRT([I)Landroid/os/Bundle;
    .locals 7
    .parameter "deleteIndex"

    .prologue
    .line 2696
    const/4 v2, -0x1

    .line 2697
    .local v2, oldFirstIdx:I
    const/4 v3, 0x1

    .line 2699
    .local v3, oldFirstItemPositionY:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2701
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2702
    .local v1, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v1, :cond_0

    .line 2703
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2704
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2710
    :goto_0
    const-string v4, "oldFirstIdx"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2711
    const-string v4, "oldFirstItemPositionY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2713
    return-object v0

    .line 2707
    :cond_0
    const-string v4, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeCurrentState_IRT mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cell=null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateFirstIdxInScrollMotionIRT(I)V
    .locals 1
    .parameter "removedIdx"

    .prologue
    .line 2310
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 2311
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2313
    :cond_0
    return-void
.end method
