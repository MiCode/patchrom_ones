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

    .line 1690
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 3583
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$5;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    .line 3621
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3622
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3623
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
    .line 1924
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1926
    .local v6, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 1928
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1931
    iget-object v0, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    if-eqz v0, :cond_1

    .line 1936
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onItemClickIRT(ILcom/htc/sunny2/SceneNode;)V

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iget-object v2, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    int-to-long v4, v1

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;->onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V

    .line 1942
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1943
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

    .line 1447
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v1, nIndex:I
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_3

    .line 1449
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1450
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    const-string v2, "GridView"

    const-string v3, "[HTCAlbum][Gridview][KeyPress]: dispatchUnpress "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1458
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-ne v2, v1, :cond_2

    .line 1462
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1466
    :cond_2
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1471
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPressed(Z)V

    .line 1472
    return-void
.end method

.method private doBounceBack()Z
    .locals 10

    .prologue
    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, bResult:Z
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 1567
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1480
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

    .line 1481
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1483
    .end local v1           #bResult:I
    :cond_3
    const/4 v2, 0x0

    .line 1484
    .local v2, distanceToAligned:I
    const v4, 0x7fffffff

    .line 1486
    .local v4, maxDistanceToTop:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1487
    .local v5, screenItemFirst:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1495
    .local v6, screenItemLast:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1500
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-lt v7, v8, :cond_4

    .line 1502
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v4

    .line 1508
    :cond_4
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_7

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v8, v8

    if-ge v7, v8, :cond_7

    .line 1510
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v7, v7

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v7, v8

    .line 1540
    :cond_5
    :goto_1
    if-gez v2, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_6

    .line 1542
    move v2, v4

    .line 1552
    :cond_6
    if-nez v2, :cond_b

    move v1, v0

    .line 1555
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1513
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

    .line 1516
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

    .line 1521
    :cond_8
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-gt v7, v8, :cond_9

    .line 1523
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I

    move-result v7

    rsub-int/lit8 v4, v7, 0x0

    .line 1525
    :cond_9
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v7, :cond_a

    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v7, v8, :cond_a

    .line 1527
    iget v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v7, v8

    goto :goto_1

    .line 1530
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

    .line 1533
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

    .line 1558
    :cond_b
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v8, "GridFlingingAction"

    invoke-virtual {v7, p0, v8}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v3

    .line 1559
    .local v3, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v3, :cond_c

    .line 1561
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1564
    :cond_c
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v8}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v7, v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1565
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v8, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v9, "gridBouncingAction"

    invoke-direct {v8, p0, p0, v9}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1566
    const/4 v0, 0x1

    move v1, v0

    .line 1567
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method private doFocusScroll(III)Z
    .locals 8
    .parameter "coordinate"
    .parameter "gridHeight"
    .parameter "numRow"

    .prologue
    .line 1883
    const/4 v0, 0x0

    .line 1884
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 1885
    .local v3, distanceToAligned:I
    const/4 v2, 0x0

    .line 1887
    .local v2, diffDistance:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v0

    .line 1918
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1891
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1893
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v5, v5

    if-le p1, v5, :cond_4

    .line 1895
    neg-int v5, p1

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v5, v6

    .line 1902
    :cond_2
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, p2

    mul-int/2addr v5, p3

    add-int v3, v5, v2

    .line 1905
    :cond_3
    if-nez v3, :cond_5

    move v1, v0

    .line 1906
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1897
    .end local v1           #bResult:I
    :cond_4
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_2

    .line 1899
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    neg-int v2, v5

    goto :goto_1

    .line 1909
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v6, "GridFlingingAction"

    invoke-virtual {v5, p0, v6}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v4

    .line 1910
    .local v4, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v4, :cond_6

    .line 1911
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v5, v4}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1914
    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1915
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v6}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1916
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v7, "gridBouncingAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1917
    const/4 v0, 0x1

    move v1, v0

    .line 1918
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 2507
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2508
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 2509
    monitor-exit v2

    .line 2522
    :goto_0
    return-object v1

    .line 2512
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le p1, v3, :cond_2

    .line 2513
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 2523
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2516
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2518
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_3

    .line 2519
    monitor-exit v2

    goto :goto_0

    .line 2522
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

    .line 1621
    const/4 v0, 0x0

    .line 1623
    .local v0, handled:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    if-eqz v2, :cond_0

    .line 1624
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;->onItemLongClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)Z

    move-result v0

    .line 1626
    :cond_0
    if-nez v0, :cond_1

    .line 1627
    int-to-long v2, p3

    invoke-virtual {p0, p2, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1628
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v2, p0}, Lcom/htc/sunny2/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 1630
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1631
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->performHapticFeedback(I)Z

    .line 1633
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 1628
    goto :goto_0
.end method

.method private pinToBottom()V
    .locals 5

    .prologue
    .line 2100
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v3, v4, :cond_0

    .line 2102
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2103
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_1

    .line 2110
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2105
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v0, v3, v4

    .line 2106
    .local v0, bottom:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int v2, v3, v4

    .line 2108
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
    .line 2137
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_1

    .line 2138
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2139
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2140
    .local v1, left:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 2141
    .local v3, viewLeft:I
    if-gt v1, v3, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 2142
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v4, v1

    .line 2144
    .local v2, offset:I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2147
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
    .line 2128
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v2, v3, :cond_0

    .line 2129
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2130
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2132
    .local v1, offset:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2134
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(Z)V
    .locals 6
    .parameter "alignTop"

    .prologue
    .line 2113
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_0

    .line 2114
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2115
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    .line 2125
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2117
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2118
    .local v2, top:I
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v3, v4, 0x0

    .line 2119
    .local v3, viewTop:I
    if-lt v2, v3, :cond_2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 2120
    :cond_2
    add-int/lit8 v4, v2, 0x0

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int v1, v4, v5

    .line 2122
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

    .line 1422
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1423
    .local v2, count:I
    if-nez v2, :cond_0

    move-object v1, v7

    .line 1442
    :goto_0
    return-object v1

    .line 1427
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1428
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1429
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_2

    .line 1427
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1433
    :cond_2
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1434
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1435
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1436
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1438
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

    .line 1442
    goto :goto_0
.end method

.method private startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 59
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 2753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 2756
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2757
    if-eqz p3, :cond_2

    .line 2758
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2759
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3093
    :cond_2
    :goto_0
    return-void

    .line 2765
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    .line 2766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    if-nez v4, :cond_4

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 2772
    :cond_4
    if-eqz p3, :cond_5

    .line 2773
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 2777
    :cond_5
    const/4 v13, -0x1

    .line 2778
    .local v13, anchorIdx:I
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 2779
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v33

    .line 2780
    .local v33, index:I
    if-gez v33, :cond_7

    .line 2781
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2814
    :cond_6
    :goto_1
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2816
    .local v37, mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .local v30, i:I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_d

    .line 2817
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 2784
    .end local v30           #i:I
    .end local v37           #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2785
    const/16 v51, -0x1

    .line 2786
    .local v51, tmpIdx:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v36, v0

    .line 2787
    .local v36, lenDeleteArray:I
    add-int/lit8 v32, v33, 0x1

    .local v32, id:I
    :goto_3
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_8

    .line 2788
    aget v51, p1, v32

    .line 2789
    sub-int v4, v51, v13

    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    .line 2790
    add-int/lit8 v13, v13, 0x1

    .line 2795
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v13, v4, :cond_a

    move/from16 v0, v51

    if-ne v13, v0, :cond_a

    .line 2796
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2793
    :cond_9
    move/from16 v13, v51

    .line 2787
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 2798
    :cond_a
    move/from16 v0, v51

    if-ne v13, v0, :cond_6

    .line 2799
    add-int/lit8 v32, v33, -0x1

    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v32

    if-le v0, v4, :cond_b

    .line 2800
    aget v51, p1, v32

    .line 2801
    sub-int v4, v13, v51

    const/4 v6, 0x1

    if-le v4, v6, :cond_c

    .line 2802
    add-int/lit8 v13, v13, -0x1

    .line 2808
    :cond_b
    move/from16 v0, v51

    if-ne v13, v0, :cond_6

    .line 2809
    const/4 v13, -0x1

    goto :goto_1

    .line 2805
    :cond_c
    move/from16 v13, v51

    .line 2799
    add-int/lit8 v32, v32, -0x1

    goto :goto_4

    .line 2819
    .end local v32           #id:I
    .end local v36           #lenDeleteArray:I
    .end local v51           #tmpIdx:I
    .restart local v30       #i:I
    .restart local v37       #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_1
    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v30, v4, -0x1

    :goto_5
    const/4 v4, -0x1

    move/from16 v0, v30

    if-le v0, v4, :cond_e

    .line 2820
    aget v4, p1, v30

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2819
    add-int/lit8 v30, v30, -0x1

    goto :goto_5

    .line 2823
    :catch_0
    move-exception v27

    .line 2825
    .local v27, e:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2826
    if-eqz p3, :cond_2

    .line 2827
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2832
    .end local v27           #e:Ljava/lang/Exception;
    :cond_e
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2833
    .local v25, deleteCell:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_12

    .line 2834
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v30

    if-gt v0, v4, :cond_11

    .line 2835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2836
    .local v15, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v15, :cond_f

    .line 2837
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startDataSetChangeAnimation_IRT] mOnScreenItems with null cell at idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    :goto_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 2841
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v23

    .line 2842
    .local v23, delIdx:I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_10

    .line 2843
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2847
    :cond_10
    invoke-virtual {v15}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2848
    iget-object v4, v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v6, 0x7f7fffff

    const v7, 0x7f7fffff

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2849
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_7

    .line 2852
    .end local v15           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v23           #delIdx:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 2855
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2856
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2857
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v4, v6, :cond_13

    .line 2858
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2860
    :cond_13
    const v4, 0x7fffffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2861
    const/16 v50, 0x0

    .line 2864
    .local v50, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_14

    .line 2865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v10, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    move-result-object v50

    .line 2868
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_15

    .line 2869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 2872
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_1d

    .line 2873
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v20, v4, 0x0

    .line 2875
    .local v20, currentH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v6, "oldFirstIdx"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 2876
    .local v43, oldFirstIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v6, "oldFirstItemPositionY"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 2878
    .local v44, oldFirstItemPositionY:I
    const v4, 0x7fffffff

    move/from16 v0, v44

    if-eq v0, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v43

    if-ne v4, v0, :cond_17

    move/from16 v0, v44

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    if-eqz v43, :cond_17

    .line 2881
    :cond_16
    move/from16 v20, v44

    .line 2884
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v29, v0

    .line 2887
    .local v29, height:I
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v6, v1, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v20, v4, v6

    .line 2888
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_19

    move/from16 v0, v29

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    move/from16 v0, v20

    if-gt v0, v4, :cond_18

    .line 2892
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_1a

    move/from16 v0, v29

    neg-int v4, v0

    move/from16 v0, v20

    if-le v0, v4, :cond_1a

    .line 2893
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v6, v1, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v20, v4, v6

    .line 2899
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    if-nez v4, :cond_1b

    .line 2900
    move/from16 v0, v29

    neg-int v4, v0

    move/from16 v0, v20

    if-le v0, v4, :cond_1b

    .line 2901
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 2902
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 2907
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_1c

    .line 2908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6, v7, v10}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2911
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2913
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 2916
    .end local v20           #currentH:I
    .end local v29           #height:I
    .end local v43           #oldFirstIdx:I
    .end local v44           #oldFirstItemPositionY:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v47

    .line 2921
    .local v47, onScreenSize:I
    if-lez v47, :cond_1f

    .line 2922
    const/16 v46, -0x1

    .line 2923
    .local v46, oldVisibleY:I
    :cond_1e
    :goto_8
    move/from16 v0, v46

    int-to-float v4, v0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lez v4, :cond_1f

    .line 2924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v32, v0

    .line 2926
    .restart local v32       #id:I
    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v45

    .line 2927
    .local v45, oldIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2929
    .restart local v15       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v15}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v28

    .line 2931
    .local v28, h:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v49

    .line 2932
    .local v49, pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v49

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v4

    div-int/lit8 v6, v28, 0x2

    add-int v46, v4, v6

    .line 2934
    const/4 v4, 0x0

    move/from16 v0, v46

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1e

    .line 2935
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v34

    .line 2936
    .local v34, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    move-object/from16 v0, v34

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    const/4 v6, 0x0

    move-object/from16 v0, v34

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    goto :goto_8

    .line 2941
    .end local v15           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v28           #h:I
    .end local v32           #id:I
    .end local v34           #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v45           #oldIdx:I
    .end local v46           #oldVisibleY:I
    .end local v49           #pos:Lcom/htc/sunny2/view/Vector3F;
    :cond_1f
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2942
    .local v22, del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v24, v0

    .line 2944
    .local v24, delView:Lcom/htc/sunny2/view/SView;
    new-instance v17, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2945
    .local v17, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v6, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2946
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 2947
    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v10, 0x3f80

    invoke-direct {v4, v6, v7, v10}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunny2/view/Vector3F;

    const v7, 0x3e99999a

    const v10, 0x3e99999a

    const/high16 v12, 0x3f80

    invoke-direct {v6, v7, v10, v12}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2948
    const/high16 v4, 0x437f

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getAlpha()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2950
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2951
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_9

    .line 2954
    .end local v17           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v22           #del:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v24           #delView:Lcom/htc/sunny2/view/SView;
    :cond_20
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 2955
    .local v39, moveDown:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 2956
    .local v40, moveUp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 2958
    .local v11, renderOrder:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-lez v47, :cond_26

    .line 2960
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v41

    .line 2961
    .local v41, nMappingCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v32, v0

    .restart local v32       #id:I
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v32

    if-gt v0, v4, :cond_26

    .line 2963
    move/from16 v0, v41

    move/from16 v1, v32

    if-gt v0, v1, :cond_22

    .line 2961
    :cond_21
    :goto_b
    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    .line 2966
    :cond_22
    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v45

    .line 2967
    .restart local v45       #oldIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2968
    .restart local v15       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v0, v15, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v54, v0

    .line 2970
    .local v54, view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v49

    .line 2971
    .restart local v49       #pos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v49

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v4

    move/from16 v55, v0

    .line 2972
    .local v55, x:I
    move-object/from16 v0, v49

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v0, v4

    move/from16 v56, v0

    .line 2974
    .local v56, y:I
    invoke-virtual/range {v54 .. v54}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v35

    .line 2975
    .local v35, last:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v0, v55

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v56

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_21

    .line 2976
    :cond_23
    new-instance v17, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2977
    .restart local v17       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v6, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2978
    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v55

    int-to-float v6, v0

    move/from16 v0, v56

    int-to-float v7, v0

    const/4 v10, 0x0

    invoke-direct {v4, v6, v7, v10}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2979
    sget-object v4, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 2981
    invoke-virtual/range {v54 .. v54}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v11, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2983
    new-instance v14, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v54

    move-object/from16 v3, v17

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;ILcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2984
    .local v14, anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v35

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v0, v56

    int-to-float v6, v0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v26

    .line 2985
    .local v26, down:I
    if-gez v26, :cond_24

    .line 2986
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x3

    sub-int v4, v4, v32

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2987
    move-object/from16 v0, v39

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 2989
    :cond_24
    if-ltz v26, :cond_25

    .line 2990
    add-int/lit8 v4, v32, 0x3

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 2991
    move-object/from16 v0, v40

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 2994
    :cond_25
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "What\'s up?"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3000
    .end local v14           #anim:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v15           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v17           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v26           #down:I
    .end local v32           #id:I
    .end local v35           #last:Lcom/htc/sunny2/view/Vector3F;
    .end local v41           #nMappingCount:I
    .end local v45           #oldIdx:I
    .end local v49           #pos:Lcom/htc/sunny2/view/Vector3F;
    .end local v54           #view:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v55           #x:I
    .end local v56           #y:I
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v18

    .line 3001
    .local v18, cooperateIdx:I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_2a

    .line 3002
    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x96

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v5, v18

    .line 3018
    .end local v18           #cooperateIdx:I
    .local v5, cooperateIdx:I
    :cond_27
    :goto_c
    const/16 v38, 0x1

    .line 3020
    .local v38, move:I
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v26

    .line 3021
    .restart local v26       #down:I
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v53

    .line 3022
    .local v53, up:I
    move/from16 v0, v26

    move/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 3023
    .local v19, count:I
    const/16 v42, 0x0

    .line 3024
    .local v42, offset:I
    const/16 v52, 0x0

    .local v52, u:I
    add-int/lit8 v21, v26, -0x1

    .local v21, d:I
    :goto_d
    move/from16 v0, v52

    move/from16 v1, v19

    if-ge v0, v1, :cond_2e

    .line 3025
    mul-int/lit8 v4, v38, 0x1e

    add-int/lit8 v42, v4, 0x78

    .line 3026
    const/16 v16, 0x0

    .line 3028
    .local v16, cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    const/4 v4, -0x1

    move/from16 v0, v21

    if-le v0, v4, :cond_28

    .line 3029
    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v16, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3030
    .restart local v16       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v42

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3031
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3032
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveDown id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    :cond_28
    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_29

    .line 3036
    move-object/from16 v0, v40

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    check-cast v16, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;

    .line 3037
    .restart local v16       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    move/from16 v0, v42

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3038
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3039
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveUp id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    :cond_29
    if-nez v16, :cond_2c

    .line 3024
    :goto_e
    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_d

    .line 3005
    .end local v5           #cooperateIdx:I
    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .end local v19           #count:I
    .end local v21           #d:I
    .end local v26           #down:I
    .end local v38           #move:I
    .end local v42           #offset:I
    .end local v52           #u:I
    .end local v53           #up:I
    .restart local v18       #cooperateIdx:I
    :cond_2a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v23

    .line 3006
    .restart local v23       #delIdx:I
    if-gez v23, :cond_2b

    .line 3007
    move/from16 v48, v18

    .line 3008
    .local v48, oriIdx:I
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3009
    .end local v18           #cooperateIdx:I
    .restart local v5       #cooperateIdx:I
    const/4 v4, -0x1

    if-ne v5, v4, :cond_27

    .line 3010
    const-string v4, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startDataSetChangeAnimation_IRT] Can\'t get current id, original="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3014
    .end local v5           #cooperateIdx:I
    .end local v48           #oriIdx:I
    .restart local v18       #cooperateIdx:I
    :cond_2b
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x96

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v4, p0

    move/from16 v5, v18

    invoke-virtual/range {v4 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v5, v18

    .end local v18           #cooperateIdx:I
    .restart local v5       #cooperateIdx:I
    goto/16 :goto_c

    .line 3044
    .end local v23           #delIdx:I
    .restart local v16       #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    .restart local v19       #count:I
    .restart local v21       #d:I
    .restart local v26       #down:I
    .restart local v38       #move:I
    .restart local v42       #offset:I
    .restart local v52       #u:I
    .restart local v53       #up:I
    :cond_2c
    move-object/from16 v0, v16

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->id:I

    if-ne v5, v4, :cond_2d

    .line 3045
    move/from16 v0, v42

    int-to-long v6, v0

    const-wide/16 v8, 0x96

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3048
    :cond_2d
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;->clear()V

    .line 3050
    add-int/lit8 v38, v38, 0x1

    goto :goto_e

    .line 3053
    .end local v16           #cha:Lcom/htc/sunny2/widget/gridview/GridView$DataChangeAnima;
    :cond_2e
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->clear()V

    .line 3054
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->clear()V

    .line 3056
    move-object/from16 v9, v50

    .line 3057
    .local v9, release1:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    move-object/from16 v8, v25

    .line 3058
    .local v8, deleteCell2:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridView$3;

    move-object/from16 v7, p0

    move/from16 v10, v47

    move-object/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/htc/sunny2/widget/gridview/GridView$3;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;ILandroid/util/SparseArray;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    mul-int/lit8 v7, v38, 0x1e

    add-int/lit8 v7, v7, 0x78

    add-int/lit16 v7, v7, 0x96

    int-to-long v0, v7

    move-wide/from16 v57, v0

    move-wide/from16 v0, v57

    invoke-virtual {v4, v6, v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3579
    :cond_0
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
    .line 1584
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1585
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1587
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1585
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1590
    :cond_0
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1574
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1575
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1577
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1575
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1580
    :cond_0
    return v1
.end method

.method protected checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    .locals 10
    .parameter "oldFirstIdx"
    .parameter "oldFirstItemPositionX"
    .parameter "oldFirstItemPositionY"

    .prologue
    .line 547
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 548
    .local v1, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iput p2, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 549
    iput p3, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 550
    iput p1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 552
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 553
    :try_start_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    .line 554
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 555
    .local v0, bRefresh:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 556
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 558
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 559
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 560
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    if-eqz v4, :cond_5

    .line 562
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 580
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_1

    .line 581
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 584
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 602
    .end local v0           #bRefresh:Z
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v6, 0x1

    if-ge v4, v6, :cond_c

    .line 603
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 604
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    .line 605
    monitor-exit v5

    .line 710
    :goto_3
    return-object v1

    .line 554
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    .restart local v0       #bRefresh:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_6

    .line 567
    if-eqz v0, :cond_7

    .line 568
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 575
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_0

    .line 576
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    goto :goto_1

    .line 708
    .end local v0           #bRefresh:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 570
    .restart local v0       #bRefresh:Z
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 571
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    goto :goto_4

    .line 586
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

    .line 587
    :cond_9
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 588
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v4, :cond_a

    .line 589
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;

    .line 592
    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_b

    .line 593
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 596
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    goto :goto_2

    .line 608
    :cond_c
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v4, v6, :cond_d

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_d

    .line 609
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 610
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 613
    :cond_d
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v4, v6, :cond_e

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_e

    .line 614
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 615
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 618
    :cond_e
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_f

    .line 619
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 620
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 623
    :cond_f
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    if-eq v4, v6, :cond_10

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    const/high16 v6, -0x8000

    if-eq v4, v6, :cond_10

    .line 624
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 625
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 628
    :cond_10
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    if-eq v4, v6, :cond_11

    .line 629
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    .line 630
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 631
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_11

    .line 632
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onLayoutOrientationChange(Landroid/content/Context;I)V

    .line 636
    :cond_11
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    .line 637
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 641
    :cond_12
    const/4 v2, 0x0

    .line 642
    .local v2, isColumnNumChange:Z
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 643
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->columnBestFit()Z

    move-result v2

    .line 649
    :goto_5
    const/4 v4, 0x1

    if-ne v4, v2, :cond_13

    .line 650
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v4, :cond_13

    .line 651
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 655
    :cond_13
    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    if-ne v4, v6, :cond_14

    .line 656
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 657
    const v4, 0x7fffffff

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 658
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 661
    :cond_14
    const/4 v4, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    if-eq v4, v6, :cond_1a

    .line 662
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 663
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 666
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-gez v4, :cond_15

    .line 667
    if-ltz p1, :cond_18

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_18

    .line 668
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 676
    :cond_15
    :goto_6
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lez v4, :cond_19

    .line 677
    const/4 v4, 0x0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 678
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 682
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_16

    .line 683
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 684
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 685
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 692
    :cond_16
    :goto_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 707
    :goto_8
    const v4, 0x7fffffff

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 708
    monitor-exit v5

    goto/16 :goto_3

    .line 646
    :cond_17
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->rowBestFit()Z

    move-result v2

    goto :goto_5

    .line 671
    :cond_18
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_6

    .line 689
    :cond_19
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_7

    .line 696
    :cond_1a
    const/4 v3, -0x1

    .line 697
    .local v3, last:I
    if-ltz p1, :cond_1b

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v4, :cond_1b

    .line 698
    move v3, p1

    .line 704
    :goto_9
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 701
    :cond_1b
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 510
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
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

    .line 514
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    return-void

    .line 516
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 520
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

    .line 518
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

    .line 985
    const/4 v7, 0x0

    .line 986
    .local v7, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 990
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 991
    .local v4, startX:I
    const/4 v10, 0x0

    .line 992
    .local v10, totalItemWidth:I
    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 993
    .local v12, width:I
    const/4 v9, -0x1

    .line 995
    .local v9, numColumn:I
    const/4 v1, 0x0

    .line 997
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

    .line 1001
    :goto_0
    if-nez v1, :cond_0

    .line 1002
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1004
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v5, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1006
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1008
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 1009
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v13, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 1010
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 1012
    if-ge v11, v14, :cond_1

    .line 1013
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

    .line 1015
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int/2addr v4, v3

    .line 1016
    const/4 v8, 0x0

    .line 1017
    .local v8, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr v4, v3

    .line 1018
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v12

    shr-int/lit8 v5, v11, 0x2

    add-int/2addr v3, v5

    if-le v4, v3, :cond_6

    .line 1019
    move v9, v8

    .line 1025
    if-gez v9, :cond_2

    .line 1026
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1029
    :cond_2
    if-le v14, v9, :cond_3

    .line 1030
    const/4 v9, 0x1

    .line 1035
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v9, v3, :cond_4

    .line 1036
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 1037
    const/4 v7, 0x1

    .line 1040
    :cond_4
    if-lez v9, :cond_5

    .line 1041
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

    .line 1042
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    if-gez v3, :cond_5

    .line 1043
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1047
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v8           #j:I
    .end local v9           #numColumn:I
    .end local v10           #totalItemWidth:I
    .end local v11           #w:I
    .end local v12           #width:I
    :cond_5
    return v7

    .line 1023
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v8       #j:I
    .restart local v9       #numColumn:I
    .restart local v10       #totalItemWidth:I
    .restart local v11       #w:I
    .restart local v12       #width:I
    :cond_6
    add-int/2addr v10, v11

    .line 1016
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 999
    .end local v8           #j:I
    .end local v11           #w:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 2738
    const/4 v0, -0x1

    return v0
.end method

.method createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1612
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
    .line 3626
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3627
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 3638
    :goto_0
    return-void

    .line 3631
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 3633
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3634
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 3636
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 3637
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
    .line 3501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 3502
    return-void
.end method

.method public enableRootNode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 3486
    return-void
.end method

.method protected fillDown()V
    .locals 7

    .prologue
    .line 2368
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2370
    .local v2, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2371
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_0

    .line 2372
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

    .line 2375
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

    .line 2376
    .local v0, bottom:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2377
    .local v3, startIdx:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    if-le v0, v4, :cond_2

    if-ge v3, v2, :cond_2

    .line 2378
    if-lt v3, v2, :cond_1

    .line 2379
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

    .line 2382
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2384
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2385
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

    .line 2386
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 2388
    :cond_2
    return-void
.end method

.method protected fillLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2415
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2416
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2417
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

    .line 2421
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int v2, v3, v4

    .line 2422
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2423
    if-gez v2, :cond_1

    .line 2424
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

    .line 2427
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 2428
    .local v1, newLeft:I
    invoke-virtual {p0, v2, v1, v5, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2430
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2431
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v2, v3

    .line 2432
    goto :goto_0

    .line 2433
    .end local v1           #newLeft:I
    :cond_2
    return-void
.end method

.method protected fillRight()V
    .locals 7

    .prologue
    .line 2391
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2393
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2394
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2395
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

    .line 2399
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2400
    .local v3, startIdx:I
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    .line 2401
    .local v2, right:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    if-ge v2, v4, :cond_2

    if-ge v3, v1, :cond_2

    .line 2402
    if-lt v3, v1, :cond_1

    .line 2403
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

    .line 2406
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2408
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2409
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2410
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    goto :goto_0

    .line 2412
    :cond_2
    return-void
.end method

.method protected fillUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2349
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2350
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2351
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

    .line 2353
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v2, v3, v4

    .line 2354
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    rsub-int/lit8 v4, v4, 0x0

    if-ge v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2355
    if-gez v2, :cond_1

    .line 2356
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

    .line 2359
    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v1, v3, v4

    .line 2360
    .local v1, newTop:I
    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2362
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2363
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v2, v3

    .line 2364
    goto :goto_0

    .line 2365
    .end local v1           #newTop:I
    :cond_2
    return-void
.end method

.method public freeInvisibleResource()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$1;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 506
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
    .line 3490
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

    .line 478
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-object v1

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 481
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 483
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 2535
    const/4 v0, 0x0

    .line 2536
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2537
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2539
    :cond_0
    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 1

    .prologue
    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstIndexPostion()I
    .locals 4

    .prologue
    .line 533
    const v0, 0x7fffffff

    .line 535
    .local v0, posY:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 541
    :cond_0
    monitor-exit v2

    .line 543
    return v0

    .line 541
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1236
    :cond_0
    const/4 v0, -0x1

    .line 1238
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
    .line 2527
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1146
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1248
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1249
    :cond_0
    const/4 v0, -0x1

    .line 1251
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
    .line 2063
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 2065
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2066
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 2069
    :cond_0
    div-int v1, p1, v0

    return v1
.end method

.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public getNumColumn()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    return v0
.end method

.method public getNumRow()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    return v0
.end method

.method public getOnFullScreenTransitionEndListener()Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;
    .locals 1

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;

    return-object v0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 3
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 2746
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 2747
    .local v0, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 2748
    iget v1, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 2749
    return-object v0
.end method

.method public getRootNode()Lcom/htc/sunny2/SceneNode;
    .locals 1

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    return-object v0
.end method

.method public getScreenItemBottom()I
    .locals 6

    .prologue
    .line 3532
    const/4 v1, 0x0

    .line 3534
    .local v1, nBottom:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3535
    .local v3, nCount:I
    if-gtz v3, :cond_0

    move v2, v1

    .line 3548
    .end local v1           #nBottom:I
    .local v2, nBottom:I
    :goto_0
    return v2

    .line 3538
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3539
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    move v2, v1

    .line 3540
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3542
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

    .line 3543
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x5

    :goto_1
    move v2, v1

    .line 3548
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 3545
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
    .line 3528
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 3

    .prologue
    .line 1218
    const/4 v0, -0x1

    .line 1219
    .local v0, id:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1220
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1221
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1223
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 1225
    :cond_0
    return v0

    .line 1221
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
    .line 2503
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
    .line 3618
    return p1
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1150
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public getViewItemCount()I
    .locals 2

    .prologue
    .line 2531
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invokeOnItemScrollListener()V
    .locals 7

    .prologue
    .line 2311
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2312
    .local v0, first:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2313
    .local v2, visCount:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2314
    .local v1, totCount:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v3, :cond_0

    .line 2315
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2317
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 2318
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 2320
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
    .line 1097
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1098
    .local v10, total:I
    const/4 v7, 0x0

    .line 1099
    .local v7, W:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 1101
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1102
    const/4 v1, 0x0

    .line 1104
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

    .line 1110
    :goto_1
    if-nez v1, :cond_0

    .line 1111
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1113
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1115
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1116
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1120
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    sub-int/2addr p3, v3

    .line 1121
    if-ge v7, v11, :cond_1

    .line 1122
    move v7, v11

    .line 1125
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1127
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1129
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1130
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1101
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1133
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    add-int v3, p2, v7

    return v3

    .line 1106
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
    .line 1051
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1052
    .local v10, total:I
    const/4 v7, 0x0

    .line 1054
    .local v7, H:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    .line 1056
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    .line 1058
    const/4 v1, 0x0

    .line 1060
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

    .line 1066
    :goto_1
    if-nez v1, :cond_0

    .line 1067
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 1069
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1071
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1072
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1079
    .local v8, h:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr p2, v3

    .line 1080
    if-ge v7, v8, :cond_1

    .line 1081
    move v7, v8

    .line 1084
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1085
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    .line 1086
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1088
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    .line 1089
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1056
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1093
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_4
    sub-int v3, p3, v7

    return v3

    .line 1062
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public notifyMediaDataChange()V
    .locals 2

    .prologue
    .line 2573
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2574
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 2575
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2576
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2577
    return-void

    .line 2575
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
    .line 2580
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 2581
    return-void
.end method

.method public notifyMediaDataInvalidate()V
    .locals 2

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2564
    :cond_0
    return-void
.end method

.method public notifyMediaDataInvalidate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 2568
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 2570
    :cond_0
    return-void
.end method

.method public notifyPreparatorMediaDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 2585
    return-void
.end method

.method public notifyPreparatorMediaDataChange(II)V
    .locals 3
    .parameter "index"
    .parameter "flag"

    .prologue
    .line 2588
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView$2;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;II)V

    .line 2596
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2597
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2602
    :goto_0
    return-void

    .line 2600
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyThumbnailTextureReadyIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 2605
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 2606
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    .line 2607
    .local v0, viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 2608
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    .line 2609
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 2610
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 2613
    .end local v0           #viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    :cond_0
    return-void
.end method

.method protected notifyUpdatePreparator(Z)V
    .locals 12
    .parameter "bIsNewList"

    .prologue
    const/4 v11, 0x1

    .line 898
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 901
    :cond_0
    if-ne v11, p1, :cond_1

    .line 905
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

    .line 912
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 913
    .local v8, preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    const/4 v7, 0x0

    .line 914
    .local v7, number:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v11, :cond_2

    .line 915
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 920
    :goto_2
    invoke-virtual {v8, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setColumnNumber(I)V

    .line 921
    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resetDecodeDirection()V

    goto :goto_0

    .line 907
    .end local v7           #number:I
    .end local v8           #preparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    :catch_0
    move-exception v6

    .line 909
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

    .line 918
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

    .line 1968
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v1, v2, :cond_1

    .line 1970
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1971
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1984
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1985
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v3, :cond_2

    .line 1986
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    .line 1991
    :goto_1
    return v3

    .line 1975
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 1976
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

    .line 1977
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 1980
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1981
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    goto :goto_0

    .line 1989
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

    .line 2075
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "gridBouncingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 2076
    .local v0, gridBouncingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v0, :cond_0

    .line 2078
    const/4 v2, 0x0

    .line 2095
    :goto_0
    return v2

    .line 2081
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v2, :cond_2

    .line 2082
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v4, p4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    .line 2088
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v4, "GridFlingingAction"

    invoke-virtual {v3, p0, v4}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    .line 2089
    .local v1, gridFlingingAction:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v1, :cond_1

    .line 2091
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2093
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v5, "GridFlingingAction"

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2094
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2085
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
    .line 1861
    const/4 v0, 0x0

    .line 1863
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1877
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1868
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

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 1697
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1699
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

    .line 1855
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1705
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    if-ne v6, v8, :cond_2

    .line 1707
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1708
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1709
    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1710
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1711
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1712
    const/4 v0, 0x1

    move v1, v0

    .line 1713
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1716
    .end local v1           #bResult:I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v0

    .line 1759
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1720
    .end local v1           #bResult:I
    :sswitch_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v7, v6, v7

    if-le v7, v8, :cond_3

    .line 1722
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v6, v7

    .line 1763
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v6, v7, :cond_7

    .line 1765
    const/4 v3, 0x0

    .line 1766
    .local v3, cellCoordinate:I
    const/4 v4, 0x0

    .line 1767
    .local v4, cellHeight:I
    const/4 v5, 0x0

    .line 1769
    .local v5, numRow:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1770
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_5

    .line 1772
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1774
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1776
    :cond_4
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1779
    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-le v6, v7, :cond_b

    .line 1781
    if-eqz v2, :cond_9

    .line 1783
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_8

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_8

    .line 1785
    const/4 v5, 0x1

    .line 1791
    :goto_2
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1792
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1841
    :goto_3
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1842
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1843
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_6

    .line 1845
    const/4 v5, 0x0

    .line 1846
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1847
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1848
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 1849
    iget-object v7, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemPress()V

    .line 1852
    :cond_6
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 1853
    const/4 v0, 0x1

    .end local v3           #cellCoordinate:I
    .end local v4           #cellHeight:I
    .end local v5           #numRow:I
    :cond_7
    move v1, v0

    .line 1855
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1728
    .end local v1           #bResult:I
    :sswitch_1
    if-eq v6, v8, :cond_3

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1730
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 1736
    :sswitch_2
    add-int/lit8 v7, v6, -0x1

    if-le v7, v8, :cond_3

    .line 1738
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1744
    :sswitch_3
    if-eq v6, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 1746
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1752
    :sswitch_4
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1754
    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 1755
    const/4 v0, 0x1

    move v1, v0

    .line 1756
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 1789
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

    .line 1796
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

    .line 1798
    const/4 v5, 0x1

    .line 1804
    :goto_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1805
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1806
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto :goto_3

    .line 1802
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_4

    .line 1811
    :cond_b
    if-eqz v2, :cond_d

    .line 1813
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_c

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_c

    .line 1815
    const/4 v5, -0x1

    .line 1821
    :goto_5
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1822
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 1823
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

    .line 1819
    :cond_c
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_5

    .line 1827
    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_e

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_e

    .line 1829
    const/4 v5, -0x1

    .line 1835
    :goto_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1836
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 1837
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto/16 :goto_3

    .line 1833
    :cond_e
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_6

    .line 1716
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
    .line 728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v14

    .line 729
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v13, v15, :cond_1

    .line 731
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 732
    monitor-exit v14

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v0, p5

    if-ne v13, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v0, p6

    if-eq v13, v0, :cond_3

    .line 739
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 742
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    .line 743
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 746
    const/4 v13, 0x1

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    const/4 v13, 0x1

    move/from16 v0, p6

    if-lt v0, v13, :cond_0

    .line 750
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 754
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 759
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

    .line 761
    const v10, 0x7fffffff

    .line 762
    .local v10, oldFirstItemPositionX:I
    const v11, 0x7fffffff

    .line 763
    .local v11, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 764
    .local v9, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 766
    .local v12, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_6

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v10, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v11, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 770
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v13, :cond_5

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 772
    .local v3, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_4

    .line 773
    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 774
    iget-object v13, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v14, 0x7f7fffff

    const v15, 0x7f7fffff

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 775
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 770
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 734
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

    .line 778
    .restart local v7       #i:I
    .restart local v9       #oldFirstIdx:I
    .restart local v10       #oldFirstItemPositionX:I
    .restart local v11       #oldFirstItemPositionY:I
    .restart local v12       #oldLastIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 781
    .end local v7           #i:I
    :cond_6
    const/4 v2, 0x0

    .line 783
    .local v2, bSetNewList:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    move-result-object v4

    .line 785
    .local v4, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    iget-boolean v13, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v13, :cond_0

    .line 788
    iget-boolean v2, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 789
    iget v10, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 790
    iget v11, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 791
    iget v9, v4, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 803
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

    .line 805
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v13, :cond_e

    .line 806
    const/4 v5, 0x0

    .line 807
    .local v5, currentBase:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 808
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v5, v13, 0x0

    .line 816
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

    .line 820
    :cond_7
    move v5, v11

    .line 829
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 831
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

    .line 832
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

    .line 836
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    .line 842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 843
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

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 846
    .local v6, firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v14, v14, 0x0

    if-ge v13, v14, :cond_b

    .line 847
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop(Z)V

    .line 875
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

    .line 877
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ne v9, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v12, v13, :cond_c

    const/4 v13, 0x1

    if-ne v13, v2, :cond_d

    .line 878
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 881
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 887
    .end local v5           #currentBase:I
    .end local v8           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    if-ne v13, v14, :cond_f

    .line 889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onLayoutChangedIRT(II)V

    .line 890
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mIsConfigChange:Z

    .line 893
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    .line 811
    .restart local v5       #currentBase:I
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/lit8 v5, v13, 0x0

    goto/16 :goto_2

    .line 822
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

    .line 826
    :cond_12
    move v5, v10

    goto/16 :goto_3

    .line 853
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

    .line 854
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

    .line 858
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 865
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

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToRight()V

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 868
    .restart local v6       #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_b

    iget v13, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-le v13, v14, :cond_b

    .line 869
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToLeft(Z)V

    goto/16 :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2049
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

    .line 2050
    .local v1, onScreenIdx:I
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v2, :cond_0

    .line 2052
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2053
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2057
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
    .line 1336
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->onRenderOrderChanged(Z)V

    .line 1337
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 1338
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1341
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

    .line 2023
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 2024
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    .line 2029
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Panning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2036
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2037
    return v2

    .line 2027
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

    .line 1947
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1948
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    .line 1954
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->doBounceBack()Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1963
    :cond_0
    :goto_1
    return-void

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    goto :goto_0

    .line 1958
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
    .line 2152
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v11, :cond_1

    .line 2295
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2155
    .local v8, totalCount:I
    if-eqz v8, :cond_0

    .line 2159
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v11, :cond_0

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v12, 0x7fffffff

    if-eq v11, v12, :cond_0

    .line 2163
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2164
    .local v5, oldFirstIdx:I
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2166
    .local v6, oldLastIdx:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2167
    .local v7, tmpLastIdx:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    if-gt v3, v7, :cond_9

    .line 2168
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2170
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v1, :cond_3

    .line 2167
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2174
    :cond_3
    iget-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2176
    .local v4, item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v9

    .line 2177
    .local v9, w:I
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v10

    .line 2179
    .local v10, y:I
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int v11, v11, p1

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2180
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int v11, v11, p2

    iput v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2182
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2183
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2184
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2185
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2187
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2188
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2192
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto :goto_2

    .line 2198
    :cond_4
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v12, v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_5

    .line 2199
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2200
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2202
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2203
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2207
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2208
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_2

    .line 2212
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

    .line 2216
    :cond_6
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v11, v9

    const/4 v12, -0x1

    if-ge v11, v12, :cond_7

    .line 2217
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2218
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2220
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2221
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2225
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto/16 :goto_2

    .line 2227
    :cond_7
    iget v11, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_8

    .line 2228
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2229
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2231
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2232
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2236
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v11, v3, :cond_2

    .line 2237
    add-int/lit8 v11, v3, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto/16 :goto_2

    .line 2241
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

    .line 2246
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .end local v9           #w:I
    .end local v10           #y:I
    :cond_9
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 2247
    if-gez p2, :cond_f

    .line 2248
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    .line 2264
    :cond_a
    :goto_3
    const/4 v11, -0x1

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-eq v11, v12, :cond_b

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v11, :cond_b

    .line 2265
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    .line 2269
    :cond_b
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v11, :cond_c

    .line 2270
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_12

    .line 2271
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2278
    :cond_c
    :goto_4
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v6, v11, :cond_d

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eq v5, v11, :cond_e

    .line 2279
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2282
    :cond_e
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    iget v14, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v11, p0, v12, v13, v14}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 2284
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v11, :cond_0

    .line 2286
    const/4 v2, 0x0

    .line 2287
    .local v2, direction:I
    if-nez p1, :cond_13

    .line 2288
    move/from16 v0, p2

    int-to-float v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 2293
    :goto_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v11, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    goto/16 :goto_0

    .line 2250
    .end local v2           #direction:I
    :cond_f
    if-lez p2, :cond_a

    .line 2251
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    goto :goto_3

    .line 2255
    :cond_10
    if-gez p1, :cond_11

    .line 2256
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillRight()V

    goto :goto_3

    .line 2258
    :cond_11
    if-lez p1, :cond_a

    .line 2259
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillLeft()V

    goto :goto_3

    .line 2273
    :cond_12
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_c

    .line 2274
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_4

    .line 2291
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
    .line 1996
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2005
    const/4 v1, 0x0

    .line 2017
    :goto_0
    return v1

    .line 2007
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

    .line 2009
    .local v0, onScreenIdx:I
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v1, :cond_1

    .line 2013
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 2014
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->FocusItemClick(I)V

    .line 2017
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
    .line 1377
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->onSizeChanged(IIII)V

    .line 1379
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onSizeChanged(IIII)V

    .line 1385
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    .line 1387
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

    .line 1639
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    if-eq v3, v6, :cond_0

    .line 1640
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1641
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFocusItemId:I

    .line 1644
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

    .line 1684
    :cond_1
    :goto_0
    return v2

    .line 1651
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    if-nez v3, :cond_4

    .line 1652
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1653
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1654
    .local v1, intercepted:Z
    if-eqz v1, :cond_4

    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1657
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    goto :goto_0

    .line 1664
    .end local v1           #intercepted:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1666
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 1669
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1671
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 1673
    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 1675
    const-string v3, "GridView"

    const-string v4, "[HTCAlbum][Gridview][onTouchEvent]: SCROLL_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 1679
    :cond_6
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 1682
    :cond_7
    if-eq v0, v2, :cond_1

    .line 1684
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    goto :goto_0
.end method

.method protected onUpdatePositionAnimation()V
    .locals 1

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onUpdatePositionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3573
    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->onUpdatePositionAnimation()V

    .line 3574
    :cond_0
    return-void
.end method

.method public pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x1

    .line 1401
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1402
    .local v2, count:I
    if-nez v2, :cond_1

    move v3, v7

    .line 1418
    :cond_0
    :goto_0
    return v3

    .line 1406
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1407
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1409
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 1410
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1411
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1412
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1414
    .local v0, bottom:I
    if-gt v6, p2, :cond_2

    if-gt p2, v0, :cond_2

    if-gt v4, p1, :cond_2

    if-le p1, v5, :cond_0

    .line 1406
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

    .line 1418
    goto :goto_0
.end method

.method public postRenderRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3476
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 3477
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
    .line 2331
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 2336
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    .line 2339
    :cond_0
    if-nez p1, :cond_1

    .line 2341
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    .line 2343
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    .line 2346
    :cond_1
    return-void
.end method

.method public resetGesture()V
    .locals 3

    .prologue
    .line 3505
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v1, :cond_1

    .line 3507
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    .line 3508
    const/4 v0, 0x0

    .line 3512
    .local v0, renderAction:Lcom/htc/sunny2/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3513
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3518
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3519
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 3521
    .end local v0           #renderAction:Lcom/htc/sunny2/RenderThreadAction;
    :cond_1
    return-void
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 717
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 718
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 719
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 722
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
    .line 2705
    const-string v11, "oldFirstIdx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2706
    .local v5, oldFirstIdx:I
    const-string v11, "oldFirstItemPositionY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2708
    .local v6, oldFirstItemPositionY:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2709
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    .line 2710
    .local v8, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2712
    .local v4, h:I
    sub-int v3, p2, v5

    .line 2714
    .local v3, d:I
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v2, v3, v11

    .line 2715
    .local v2, colId:I
    if-gez v2, :cond_0

    .line 2716
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v2, v11

    .line 2719
    :cond_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v7, v3, v11

    .line 2720
    .local v7, rowId:I
    if-gez v7, :cond_1

    if-eqz v2, :cond_1

    .line 2721
    add-int/lit8 v7, v7, -0x1

    .line 2725
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

    .line 2726
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

    .line 2728
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
    .line 1320
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1321
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    goto :goto_0

    .line 1325
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

    .line 925
    const/4 v9, 0x0

    .line 926
    .local v9, isChange:Z
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    .line 927
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    .line 928
    .local v5, startY:I
    const/4 v12, 0x0

    .line 929
    .local v12, totalItemHeight:I
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 930
    .local v8, height:I
    const/4 v11, -0x1

    .line 932
    .local v11, numRow:I
    const/4 v1, 0x0

    .line 934
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

    .line 938
    :goto_0
    if-nez v1, :cond_0

    .line 939
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 941
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v4, v2

    move v6, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 942
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    .line 943
    .local v7, h:I
    if-ge v7, v14, :cond_1

    .line 944
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

    .line 946
    :cond_1
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 947
    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v13, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 948
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 950
    const/4 v10, 0x0

    .line 951
    .local v10, j:I
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 952
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    shr-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    if-le v5, v3, :cond_6

    .line 953
    move v11, v10

    .line 959
    if-gez v11, :cond_2

    .line 960
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 963
    :cond_2
    if-le v14, v11, :cond_3

    .line 964
    const/4 v11, 0x1

    .line 969
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    if-eq v11, v3, :cond_4

    .line 970
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 971
    const/4 v9, 0x1

    .line 974
    :cond_4
    if-lez v11, :cond_5

    .line 975
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

    .line 976
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    if-gez v3, :cond_5

    .line 977
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 981
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #h:I
    .end local v8           #height:I
    .end local v10           #j:I
    .end local v11           #numRow:I
    .end local v12           #totalItemHeight:I
    :cond_5
    return v9

    .line 957
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v7       #h:I
    .restart local v8       #height:I
    .restart local v10       #j:I
    .restart local v11       #numRow:I
    .restart local v12       #totalItemHeight:I
    :cond_6
    add-int/2addr v12, v7

    .line 950
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 936
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
    .line 487
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 488
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2
    .parameter "hspace"

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1314
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 1315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1317
    return-void

    .line 1315
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
    .line 3466
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHostIdentifier:Ljava/lang/String;

    .line 3467
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
    .line 2547
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Z)V

    .line 2548
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
    .line 2551
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2552
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2553
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    .line 2554
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2556
    if-eqz p2, :cond_0

    .line 2557
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 2558
    :cond_0
    return-void

    .line 2553
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    .line 2554
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
    .line 526
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 527
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 528
    return-void
.end method

.method public setNumColumn(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1285
    if-gez p1, :cond_0

    .line 1286
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1288
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    .line 1289
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1292
    return-void
.end method

.method public setNumRow(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1296
    if-gez p1, :cond_0

    .line 1297
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1299
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumRow:I

    .line 1300
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1303
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 1281
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 1271
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 1257
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 1261
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1177
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1178
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewOrientation:I

    .line 1180
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1182
    return-void

    .line 1180
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
    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->setPadding(IIII)V

    .line 492
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 494
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
    .line 2437
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    .line 2439
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2441
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;

    const-string v1, "setPreparation"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2443
    .local v0, setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v1, v2, :cond_1

    .line 2444
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->onProcessEventIRT()V

    .line 2448
    .end local v0           #setPreparation:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_0
    :goto_0
    return-void

    .line 2446
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
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, isChanged:Z
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1360
    :try_start_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eq p1, v1, :cond_0

    .line 1361
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 1362
    const/4 v0, 0x1

    .line 1364
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1368
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1373
    :cond_1
    :goto_0
    return-void

    .line 1364
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1369
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    .line 1370
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlightEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 1349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1195
    const/4 v0, 0x1

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1196
    return-void
.end method

.method protected setSelection(IZ)V
    .locals 1
    .parameter "index"
    .parameter "reLayout"

    .prologue
    .line 1200
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(IZI)V

    .line 1201
    return-void
.end method

.method public setSelection(IZI)V
    .locals 2
    .parameter "idx"
    .parameter "reLayout"
    .parameter "posY"

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1207
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1208
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 1209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    if-eqz p2, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1215
    :cond_0
    return-void

    .line 1209
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
    .line 1306
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1307
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 1308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    .line 1310
    return-void

    .line 1308
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
    .line 1331
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->resetGesture()V

    .line 1332
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1333
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 0
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 2743
    return-void
.end method

.method public startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 3134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v0, v1, :cond_1

    .line 3135
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 3147
    :cond_0
    :goto_0
    return-void

    .line 3138
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3139
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
    .line 2684
    const/4 v2, -0x1

    .line 2685
    .local v2, oldFirstIdx:I
    const/4 v3, 0x1

    .line 2687
    .local v3, oldFirstItemPositionY:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2689
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2690
    .local v1, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v1, :cond_0

    .line 2691
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2692
    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2698
    :goto_0
    const-string v4, "oldFirstIdx"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2699
    const-string v4, "oldFirstItemPositionY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2701
    return-object v0

    .line 2695
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
    .line 2298
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 2299
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2301
    :cond_0
    return-void
.end method
