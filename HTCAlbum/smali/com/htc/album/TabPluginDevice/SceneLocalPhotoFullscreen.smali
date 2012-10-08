.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "SceneLocalPhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;"
    }
.end annotation


# static fields
.field private static final DRM_FILENAME_BAR_FULLFILM_VIEW:I = 0x3

.field private static final FOOTER_BAR_LOCAL_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoFullscreen"

.field private static final RST_ON_BACK:I = 0x1

.field private static final RST_ON_BACK_BTN_PRESSED:I = 0x0

.field protected static final SW_BUTTON_OFF:I = 0x1

.field protected static final SW_BUTTON_ON:I = 0x0

.field public static final TIMER_PROGRESS_LOADING:I = 0x258


# instance fields
.field private final DEBUG:Z

.field private mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

.field protected mAnimationState:I

.field private mContinuousIndicator:Landroid/view/ViewGroup;

.field private mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mCurrentAnimState:I

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDoItemClickWhenBindAdapter:Z

.field private mDrmBackPreviosTemplate:Z

.field private mDrmDecoded:Z

.field private mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

.field private mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

.field private mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

.field private mDrmVideoRefresh:Z

.field private mEnablePaintView:Z

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

.field private mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

.field private mIsAnimateDispatcherSetListener:Z

.field private mIsForeground:Z

.field private mIsFromGridView:Z

.field private mIsPaintInitialized:Z

.field private mIsShowContinuousIndicator:Z

.field protected mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

.field private mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

.field private mOrientation:I

.field private mOrientationHasChanged:Z

.field private mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

.field private mPaintViewAttached:Z

.field protected mSWButtonState:I

.field private mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStartupIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 106
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->DEBUG:Z

    .line 107
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 108
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 112
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    .line 113
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    .line 114
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 115
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 116
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 117
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 118
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    .line 119
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

    .line 120
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    .line 121
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 122
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    .line 123
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 124
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 126
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    .line 127
    new-instance v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    .line 128
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    .line 129
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    .line 130
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    .line 139
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    .line 141
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 143
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 144
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsShowContinuousIndicator:Z

    .line 145
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    .line 146
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    .line 147
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    .line 1449
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    .line 2389
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$8;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$8;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 4529
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintViewAttached:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->swithToBurst()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doShowDrmFileNameBar(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doDeleteContinuousShot()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/HtcPaintManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doSimulateScreenTouched(IZ)V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isDRMPressed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onHandleCacheStateChanged(II)V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method private attachPaintView(Z)V
    .locals 0
    .parameter "attach"

    .prologue
    .line 4545
    return-void
.end method

.method private doDeleteContinuousShot()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2178
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2179
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 2180
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :goto_0
    return-void

    .line 2184
    :cond_0
    if-nez v1, :cond_1

    .line 2186
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Context is null"

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2190
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    .line 2191
    .local v7, position:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2193
    .local v8, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 2194
    .local v3, bucketId:Ljava/lang/String;
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2196
    .local v4, displayName:Ljava/lang/String;
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onDeleteContinuousShot]getBucketName: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onDeleteContinuousShot]getDisplayName: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    const-string v2, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    .line 2207
    .local v6, fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v2, :cond_2

    .line 2209
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 2210
    iput-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 2212
    :cond_2
    new-instance v2, Lcom/htc/album/helper/DeleteManager;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;

    invoke-direct {v5, p0, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v2, v6, v0, v5}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 2213
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/htc/album/helper/DeleteManager;->deleteContinuousShot(Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0
.end method

.method private doShowDrmFileNameBar(ZZ)V
    .locals 13
    .parameter "bIsShow"
    .parameter "bForce"

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x1

    const/16 v11, 0xc

    const/4 v10, 0x2

    const/4 v8, 0x0

    .line 1025
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-nez v6, :cond_2

    .line 1027
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1033
    .local v0, activityRef:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1038
    new-instance v6, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const/4 v7, 0x3

    const v9, 0x7f030031

    invoke-direct {v6, v7, v0, v9}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;-><init>(ILandroid/content/Context;I)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    .line 1039
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1041
    .local v5, root:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_2

    .line 1043
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1047
    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1048
    .local v4, ori:I
    if-ne v4, v10, :cond_4

    .line 1050
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1051
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1052
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v4           #ori:I
    :goto_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getRootView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v7}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    .line 1082
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1083
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1085
    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6, v12}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1056
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v0       #activityRef:Landroid/app/Activity;
    .restart local v4       #ori:I
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1057
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1058
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/16 v7, 0xc

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1061
    .end local v4           #ori:I
    :catch_0
    move-exception v1

    .line 1063
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HtcAlbum][SceneLocalPhotoFullScreen][doShowDrmFileNameBar]add DRM file name bar failed"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1070
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1089
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    if-eqz p1, :cond_7

    .line 1091
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6, v8}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1095
    :cond_7
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v3, :cond_9

    .line 1096
    .local v3, isDRMFL:Z
    :goto_2
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v6, :cond_8

    if-nez v3, :cond_8

    if-eqz p2, :cond_0

    .line 1097
    :cond_8
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6, v12}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .end local v3           #isDRMFL:Z
    :cond_9
    move v3, v8

    .line 1095
    goto :goto_2
.end method

.method private doSimulateScreenTouched(IZ)V
    .locals 17
    .parameter "position"
    .parameter "isFromOnPrepareOptionsMenu"

    .prologue
    .line 3099
    const/4 v3, 0x0

    .line 3100
    .local v3, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v3           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v3       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v3, :cond_1

    .line 3102
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]adapter is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    :cond_0
    :goto_0
    return-void

    .line 3106
    :cond_1
    const/4 v10, 0x0

    .line 3107
    .local v10, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v10       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v10, :cond_2

    .line 3109
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]image is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3113
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v14, :cond_3

    .line 3115
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]mSceneControl is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3119
    :cond_3
    const/4 v2, 0x0

    .line 3120
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3122
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]activity is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3126
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v14

    instance-of v6, v14, Lcom/htc/album/addons/SingleCollection;

    .line 3128
    .local v6, bIsShowSingle:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isControlBarShowing()Z

    move-result v4

    .line 3130
    .local v4, bControlBarShowing:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v14

    shr-int/lit8 v12, v14, 0x1

    .line 3131
    .local v12, posX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v14

    shr-int/lit8 v13, v14, 0x1

    .line 3133
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v14

    iget-object v11, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 3134
    .local v11, me:Landroid/view/MotionEvent;
    if-eqz v11, :cond_5

    .line 3136
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 3137
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 3140
    :cond_5
    const/4 v5, 0x0

    .line 3141
    .local v5, bIndicatorClicked:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_c

    .line 3143
    const/4 v5, 0x1

    .line 3154
    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3155
    .local v7, bundle:Landroid/os/Bundle;
    const-string v14, "index_id"

    move/from16 v0, p1

    invoke-virtual {v7, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3156
    const-string v14, "folder_type"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    const-string v14, "key_folder_name"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    const-string v14, "key_bucket_id"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    const-string v14, "position"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    const/4 v9, 0x0

    .line 3162
    .local v9, goPlay:Z
    if-eqz v5, :cond_7

    if-eqz v10, :cond_7

    .line 3164
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 3166
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3168
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    .line 3169
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmVideoRefresh:Z

    .line 3172
    :cond_6
    invoke-static {v2, v10, v7}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 3173
    const/4 v9, 0x1

    .line 3200
    :cond_7
    :goto_2
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-nez v14, :cond_0

    .line 3202
    const/16 v14, 0x4e3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 3203
    if-nez v4, :cond_8

    .line 3205
    const/16 v14, 0x4e3c

    const/4 v15, 0x0

    const/16 v16, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 3208
    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isInvalidateOptionsMenu()Z

    move-result v14

    if-nez v14, :cond_0

    .line 3210
    :cond_9
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_b

    if-nez v6, :cond_b

    .line 3212
    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_a

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_a

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_11

    .line 3214
    :cond_a
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->showDRMIndicator(Z)V

    .line 3224
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->toggleControlBarsVisibility()V

    .line 3226
    if-nez v4, :cond_12

    .line 3228
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    goto/16 :goto_0

    .line 3145
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #goPlay:Z
    .restart local v10       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_c
    if-eqz p2, :cond_d

    .line 3147
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3151
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isHitIndicator(II)Z

    move-result v5

    goto/16 :goto_1

    .line 3175
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v9       #goPlay:Z
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 3177
    const/4 v9, 0x1

    goto :goto_2

    .line 3179
    :cond_f
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3181
    const/4 v8, -0x1

    .line 3182
    .local v8, count:I
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 3184
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    move-object v14, v10

    .line 3185
    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v8

    .line 3192
    :goto_4
    const/4 v14, 0x1

    if-le v8, v14, :cond_7

    .line 3194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    invoke-static {v2, v10, v14, v7}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 3195
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 3189
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v8

    goto :goto_4

    .line 3219
    .end local v8           #count:I
    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_11
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    goto :goto_3

    .line 3232
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 3234
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    goto/16 :goto_0

    .line 3238
    :cond_13
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    goto/16 :goto_0
.end method

.method private findPosFromList(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 4119
    const/4 v2, -0x1

    .line 4120
    .local v2, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4122
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4123
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4124
    add-int/lit8 v2, v2, 0x1

    .line 4126
    :cond_0
    if-ne v2, p1, :cond_1

    .line 4131
    .end local v0           #i:I
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return v0

    .line 4120
    .restart local v0       #i:I
    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4130
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullScreen]Not match the item from list: oldPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 4131
    goto :goto_1
.end method

.method private getStartupIndex()I
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4039
    const/4 v6, 0x0

    .line 4040
    .local v6, photoPos:I
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 4042
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    move v7, v6

    .line 4114
    .end local v6           #photoPos:I
    .local v7, photoPos:I
    :goto_0
    return v7

    .line 4045
    .end local v7           #photoPos:I
    .restart local v6       #photoPos:I
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4046
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 4048
    .local v4, intentData:Landroid/net/Uri;
    const-string v10, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4052
    :cond_1
    const-string v10, "position"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4054
    .local v9, strPos:Ljava/lang/String;
    if-nez v9, :cond_3

    .line 4056
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "itemIndex"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4057
    :goto_1
    const-string v10, "SceneLocalPhotoFullscreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneLoaclPhotoFullscreen][getStartupIndex]key item index Pos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 4058
    .end local v6           #photoPos:I
    .restart local v7       #photoPos:I
    goto :goto_0

    .end local v7           #photoPos:I
    .restart local v6       #photoPos:I
    :cond_2
    move v6, v11

    .line 4056
    goto :goto_1

    .line 4061
    :cond_3
    const/4 v8, 0x0

    .line 4064
    .local v8, pos:I
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4065
    const-string v10, "SceneLocalPhotoFullscreen"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]strPos:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    if-eqz v8, :cond_4

    .line 4069
    invoke-direct {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->findPosFromList(I)I

    move-result v8

    .line 4072
    :cond_4
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-lt v8, v10, :cond_5

    .line 4073
    const/4 v8, 0x0

    .line 4081
    :cond_5
    :goto_2
    move v6, v8

    .line 4083
    const-string v10, "position"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 4108
    .end local v8           #pos:I
    .end local v9           #strPos:Ljava/lang/String;
    :goto_3
    if-gez v6, :cond_6

    .line 4109
    const/4 v6, 0x0

    .line 4111
    :cond_6
    const-string v10, "SceneLocalPhotoFullscreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getStartupIndex] poistion:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4112
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_7

    .line 4113
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v11, "itemIndex"

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    move v7, v6

    .line 4114
    .end local v6           #photoPos:I
    .restart local v7       #photoPos:I
    goto/16 :goto_0

    .line 4075
    .end local v7           #photoPos:I
    .restart local v6       #photoPos:I
    .restart local v8       #pos:I
    .restart local v9       #strPos:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4077
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "itemIndex"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 4078
    :goto_4
    const-string v10, "SceneLocalPhotoFullscreen"

    const-string v11, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]NumberFormatException"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v8, v11

    .line 4077
    goto :goto_4

    .line 4085
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v8           #pos:I
    .end local v9           #strPos:Ljava/lang/String;
    :cond_9
    const-string v10, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4088
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4089
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->queryPosByUri(Landroid/net/Uri;)I

    move-result v6

    :goto_5
    goto :goto_3

    :cond_a
    move v6, v11

    goto :goto_5

    .line 4091
    :cond_b
    const-string v10, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v12, v10, :cond_f

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v12, v10, :cond_c

    const-string v10, "null"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v12, v10, :cond_f

    .line 4095
    :cond_c
    const-string v10, "camera_last_file_path"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4096
    .local v5, path:Ljava/lang/String;
    if-nez v5, :cond_d

    .line 4097
    .local v2, fileUri:Landroid/net/Uri;
    :goto_6
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->queryPosByUri(Landroid/net/Uri;)I

    move-result v6

    .line 4098
    :goto_7
    goto/16 :goto_3

    .line 4096
    .end local v2           #fileUri:Landroid/net/Uri;
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_6

    .restart local v2       #fileUri:Landroid/net/Uri;
    :cond_e
    move v6, v11

    .line 4097
    goto :goto_7

    .line 4099
    .end local v2           #fileUri:Landroid/net/Uri;
    .end local v5           #path:Ljava/lang/String;
    :cond_f
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4101
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    goto/16 :goto_3

    .line 4105
    :cond_10
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "itemIndex"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_8
    goto/16 :goto_3

    :cond_11
    move v6, v11

    goto :goto_8
.end method

.method private isCurrentItemCanShow3D()Z
    .locals 6

    .prologue
    .line 3480
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 3481
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3482
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_3

    .line 3484
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 3485
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 3487
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 3488
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 3490
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3492
    const/4 v4, 0x1

    .line 3509
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 3497
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3502
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3507
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCurrentItemVideo()Z
    .locals 6

    .prologue
    .line 3514
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 3515
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3516
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_3

    .line 3518
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 3519
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 3521
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 3522
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 3524
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3526
    const/4 v4, 0x1

    .line 3543
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 3531
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3536
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3541
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isDRMPressed(I)Z
    .locals 8
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 3288
    const/4 v0, 0x0

    .line 3289
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v0       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 3291
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenPressed]adapter is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    :cond_0
    :goto_0
    return v1

    .line 3295
    :cond_1
    const/4 v2, 0x0

    .line 3296
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 3298
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenPressed]image is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3302
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3305
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    shr-int/lit8 v4, v6, 0x1

    .line 3306
    .local v4, posX:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 3308
    .local v5, posY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v6

    iget-object v3, v6, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 3309
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_3

    .line 3311
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 3312
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 3315
    :cond_3
    const/4 v1, 0x0

    .line 3316
    .local v1, bIndicatorPressed:Z
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-eqz v6, :cond_4

    .line 3318
    const/4 v1, 0x1

    goto :goto_0

    .line 3322
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isHitIndicator(II)Z

    move-result v1

    goto :goto_0
.end method

.method private isHitIndicator(II)Z
    .locals 20
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v18

    div-int/lit8 v17, v18, 0x5

    .line 3378
    .local v17, wSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v18

    div-int/lit8 v7, v18, 0x5

    .line 3379
    .local v7, hSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 3380
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v13, v0

    .line 3382
    .local v13, left:I
    sub-int v18, p1, v13

    mul-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/4 v10, 0x1

    .line 3383
    .local v10, hitX:Z
    :goto_0
    sub-int v18, p2, v16

    mul-int/lit8 v19, v7, 0x2

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v7, :cond_4

    const/4 v11, 0x1

    .line 3385
    .local v11, hitY:Z
    :goto_1
    const/4 v12, 0x0

    .line 3386
    .local v12, isDrm:Z
    const/4 v8, 0x0

    .line 3387
    .local v8, hitDrmX:Z
    const/4 v9, 0x0

    .line 3390
    .local v9, hitDrmY:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 3397
    :goto_2
    if-eqz v12, :cond_0

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 3400
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 3401
    .local v15, screenw:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 3403
    .local v14, screenh:I
    div-int/lit8 v18, v15, 0x2

    sget v19, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    div-int/lit8 v19, v19, 0x2

    sub-int v4, v18, v19

    .line 3404
    .local v4, drmLeft:I
    div-int/lit8 v18, v14, 0x2

    sget v19, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    sget v19, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_Y_OFFSET:I

    add-int v5, v18, v19

    .line 3405
    .local v5, drmTop:I
    sget v6, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    .line 3406
    .local v6, drmWidth:I
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    .line 3408
    .local v3, drmHeight:I
    sub-int v18, p1, v4

    if-lez v18, :cond_5

    sub-int v18, p1, v4

    move/from16 v0, v18

    if-ge v0, v6, :cond_5

    const/4 v8, 0x1

    .line 3409
    :goto_3
    sub-int v18, p2, v5

    if-lez v18, :cond_6

    sub-int v18, p2, v5

    move/from16 v0, v18

    if-ge v0, v3, :cond_6

    const/4 v9, 0x1

    .line 3412
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v14           #screenh:I
    .end local v15           #screenw:I
    :cond_0
    :goto_4
    if-eqz v10, :cond_1

    if-nez v11, :cond_2

    :cond_1
    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    :cond_2
    const/16 v18, 0x1

    :goto_5
    return v18

    .line 3382
    .end local v8           #hitDrmX:Z
    .end local v9           #hitDrmY:Z
    .end local v10           #hitX:Z
    .end local v11           #hitY:Z
    .end local v12           #isDrm:Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3383
    .restart local v10       #hitX:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 3408
    .restart local v2       #display:Landroid/view/Display;
    .restart local v3       #drmHeight:I
    .restart local v4       #drmLeft:I
    .restart local v5       #drmTop:I
    .restart local v6       #drmWidth:I
    .restart local v8       #hitDrmX:Z
    .restart local v9       #hitDrmY:Z
    .restart local v11       #hitY:Z
    .restart local v12       #isDrm:Z
    .restart local v14       #screenh:I
    .restart local v15       #screenw:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 3409
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 3412
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v14           #screenh:I
    .end local v15           #screenw:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_5

    .line 3392
    :catch_0
    move-exception v18

    goto :goto_2
.end method

.method private onCamera()V
    .locals 4

    .prologue
    .line 2290
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2291
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 2292
    .local v2, folderType:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2294
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 2306
    :goto_0
    return-void

    .line 2298
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    .line 2300
    .local v0, bVideo:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 2304
    :goto_1
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 2300
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 8
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 2400
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2401
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 2402
    .local v3, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2403
    .local v4, selectedItemPosition:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2405
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v5

    .line 2407
    .local v5, shareIntent:Landroid/content/Intent;
    const-string v6, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2409
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2411
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4, v5}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2427
    :goto_0
    return-void

    .line 2417
    :cond_1
    const/4 v0, 0x0

    .line 2418
    .local v0, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2420
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2424
    :cond_2
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullScreens][onClickShareItemSelected]: get activity NG !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCrop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2233
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2234
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2235
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2237
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v6}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2244
    :goto_0
    return-void

    .line 2241
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7f00

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "selectDMR"

    .prologue
    .line 4001
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 4035
    :cond_0
    :goto_0
    return-void

    .line 4003
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 4005
    .local v4, selectedPos:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 4007
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4008
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_0

    .line 4010
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    .line 4012
    .local v7, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4014
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 4016
    const-string v1, "folder_type"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    const-string v1, "key_folder_name"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    const-string v1, "key_bucket_id"

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 4022
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4025
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4027
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4032
    :cond_3
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, p1, v1, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    goto :goto_0
.end method

.method private onDelete()V
    .locals 4

    .prologue
    .line 2104
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 2106
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onDelete] mMainView or mAdapter is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :goto_0
    return-void

    .line 2109
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2110
    .local v0, position:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2111
    .local v1, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 2113
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onDelete] selectedImg is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2117
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2120
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDeleteContinuousShot()V

    goto :goto_0

    .line 2124
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-nez v2, :cond_4

    .line 2126
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onDelete] mDeleteMgr is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    :cond_4
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method private onDeleteContinuousShot()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 2135
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2136
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 2137
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    const-string v3, ""

    .line 2142
    .local v3, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2144
    .local v4, position:I
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2145
    .local v5, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5, v10, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    .line 2146
    .local v2, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    .line 2147
    .local v6, totalCount:I
    invoke-interface {v5, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    .line 2149
    const v7, 0x7f0a015a

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x2040214

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x2040174

    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;

    invoke-direct {v9, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20401ee

    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;

    invoke-direct {v9, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 2172
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v1, :cond_0

    .line 2173
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private onDisplay()V
    .locals 5

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x1398

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 2314
    return-void

    .line 2310
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEffects()V
    .locals 5

    .prologue
    .line 2248
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2249
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2250
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2252
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2258
    :goto_0
    return-void

    .line 2256
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method private onFavorite()V
    .locals 4

    .prologue
    .line 2089
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2090
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 2091
    return-void
.end method

.method private onHandleCacheStateChanged(II)V
    .locals 13
    .parameter "stateBefore"
    .parameter "stateAfter"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4158
    if-ne p1, p2, :cond_1

    .line 4202
    :cond_0
    :goto_0
    return-void

    .line 4160
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_0

    .line 4162
    const-string v4, "SceneLocalPhotoFullscreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: index: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    const/4 v0, 0x2

    if-eq v0, p2, :cond_2

    if-nez p2, :cond_3

    .line 4168
    :cond_2
    const/16 v0, 0x272e

    const/16 v3, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 4170
    :cond_3
    if-ne p2, v12, :cond_0

    .line 4173
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 4174
    const/16 v0, 0x272f

    invoke-virtual {p0, v0, v2, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 4176
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    .line 4177
    .local v10, nCount:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->getCurrentPaint()I

    move-result v1

    .line 4179
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-eq v0, v1, :cond_4

    if-ne v10, v1, :cond_5

    .line 4181
    :cond_4
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: skip1 index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4185
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move v4, v3

    move v6, v5

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V

    .line 4187
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4188
    .local v9, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v9, v1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4189
    .local v11, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v11, :cond_6

    .line 4191
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: skip2 index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4194
    :cond_6
    invoke-virtual {v11}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v11}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    .line 4196
    :cond_7
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: skip3 index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4200
    :cond_8
    invoke-virtual {v11, v12}, Lcom/htc/album/PaintManager/PaintViewItem;->setPrepared(Z)V

    goto/16 :goto_0
.end method

.method private onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 5
    .parameter "nIndex"
    .parameter "itemInfo"
    .parameter "iimage"

    .prologue
    const/4 v4, 0x0

    .line 4482
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v1, :cond_0

    .line 4514
    :goto_0
    return-void

    .line 4484
    :cond_0
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalFullFilmViewTemplate][onPrepareNextPenableViewPort]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4487
    .local v0, handler:Landroid/os/Handler;
    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    .line 4489
    const/16 v1, 0x272e

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 4490
    const/16 v1, 0x272f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 4496
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p1, :cond_2

    .line 4498
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->requestViewStrokeGroup(I)V

    goto :goto_0

    .line 4503
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 4505
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPaintingView(Z)V

    goto :goto_0

    .line 4509
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/PaintManager/HtcPaintManager;->requestViewStrokeGroup(I)V

    .line 4510
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/album/PaintManager/HtcPaintManager;->doPrepareNextViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 4511
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->updatePenableViewPortChange()V

    .line 4512
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPaintingView(Z)V

    goto :goto_0
.end method

.method private onPrint()V
    .locals 5

    .prologue
    .line 2345
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2346
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2349
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2350
    .local v1, tempIntent:Landroid/content/Intent;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2352
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2354
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 2358
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRotateLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2276
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2277
    .local v3, pos:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2278
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3, v6}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2286
    :goto_0
    return-void

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    const/16 v6, 0x10e

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager;->launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V

    goto :goto_0
.end method

.method private onRotateRight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2262
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2263
    .local v3, pos:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2264
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v6}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2272
    :goto_0
    return-void

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    const/16 v6, 0x5a

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager;->launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V

    goto :goto_0
.end method

.method private onSaveAs2D()V
    .locals 5

    .prologue
    .line 2223
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2224
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2225
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2229
    :cond_0
    return-void
.end method

.method private onScrollStateChange(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3949
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3950
    .local v2, scrollState:I
    if-nez v2, :cond_7

    .line 3952
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateIDLE()V

    .line 3959
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_3

    .line 3961
    :cond_1
    if-eqz v2, :cond_2

    if-ne v5, v2, :cond_3

    .line 3964
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 3965
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v3, :cond_3

    .line 3967
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScrollState(II)Z

    move-result v3

    if-ne v4, v3, :cond_3

    .line 3969
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 3975
    .end local v1           #nIndex:I
    :cond_3
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v3

    if-ne v4, v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v3, :cond_6

    .line 3977
    if-eqz v2, :cond_4

    if-ne v5, v2, :cond_6

    .line 3981
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 3982
    .restart local v1       #nIndex:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v3, :cond_5

    .line 3984
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScrollState(II)Z

    move-result v3

    if-ne v4, v3, :cond_5

    .line 3986
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 3989
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 3990
    .local v0, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    if-eqz v0, :cond_6

    .line 3992
    invoke-interface {v0, v2, v1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->setPaintScrollState(II)V

    .line 3997
    .end local v0           #iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    .end local v1           #nIndex:I
    :cond_6
    return-void

    .line 3954
    :cond_7
    if-ne v2, v5, :cond_0

    .line 3956
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateScroll()V

    goto :goto_0
.end method

.method private onShare()V
    .locals 6

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2319
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2320
    .local v4, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2321
    .local v2, pos:I
    if-nez v4, :cond_0

    .line 2332
    :goto_0
    return-void

    .line 2322
    :cond_0
    invoke-virtual {v4, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2324
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2326
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 2330
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    goto :goto_0
.end method

.method private onShowOnMap()V
    .locals 4

    .prologue
    .line 2365
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2366
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2367
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2368
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2369
    return-void
.end method

.method private onSlideShow()V
    .locals 4

    .prologue
    .line 2336
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2337
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2338
    .local v2, pos:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2339
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v1, :cond_0

    .line 2340
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 2341
    :cond_0
    return-void
.end method

.method private onTrim()V
    .locals 4

    .prologue
    .line 2095
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2096
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_0

    .line 2100
    :goto_0
    return-void

    .line 2098
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2099
    .local v0, act:Landroid/app/Activity;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showContinuousShotIndicator(Z)V
    .locals 4
    .parameter "bIsShow"

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, removeMssageId:I
    const/4 v1, 0x0

    .line 877
    .local v1, sendMssageId:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 878
    const/16 v0, 0x4e4b

    .line 879
    const/16 v1, 0x4e4a

    .line 885
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 886
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 887
    return-void

    .line 882
    :cond_0
    const/16 v0, 0x4e4a

    .line 883
    const/16 v1, 0x4e4b

    goto :goto_0
.end method

.method private showContinuousShotIndicator_inUIThread(Z)V
    .locals 13
    .parameter "bIsShow"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 890
    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_0

    .line 899
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/album/addons/SingleCollection;

    if-nez v6, :cond_0

    .line 905
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    if-eq v6, v11, :cond_6

    .line 907
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 908
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iput v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    .line 920
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v6

    if-nez v6, :cond_3

    .line 921
    :cond_2
    const/4 p1, 0x0

    .line 924
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 925
    .local v5, root:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 926
    .local v0, activityRef:Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 928
    if-ne p1, v9, :cond_5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v6, :cond_5

    .line 929
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030016

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 930
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$3;

    invoke-direct {v7, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v6

    if-nez v6, :cond_8

    .line 939
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 940
    .local v2, footer:Landroid/view/View;
    if-eqz v2, :cond_4

    .line 941
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 942
    .local v4, ori:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 943
    .local v1, continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne v4, v9, :cond_7

    .line 944
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v6

    invoke-virtual {v1, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 945
    invoke-virtual {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 957
    .end local v1           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    .end local v4           #ori:I
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 960
    :cond_5
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsShowContinuousIndicator:Z

    if-eq p1, v6, :cond_0

    .line 1000
    if-ne v9, p1, :cond_9

    .line 1001
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1006
    :goto_3
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsShowContinuousIndicator:Z

    goto/16 :goto_0

    .line 912
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    goto/16 :goto_1

    .line 948
    .restart local v0       #activityRef:Landroid/app/Activity;
    .restart local v1       #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #footer:Landroid/view/View;
    .restart local v4       #ori:I
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    :cond_7
    invoke-virtual {v1, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 949
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 954
    .end local v1           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    .end local v4           #ori:I
    :cond_8
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1004
    :cond_9
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3
.end method

.method private showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "position"
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    .line 3331
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 3334
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->setDrmStateToNonCheck()V

    .line 3336
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 3337
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 3363
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDrmFileNameBar(ZZ)V
    .locals 2
    .parameter "bIsShow"
    .parameter "bForce"

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1021
    return-void
.end method

.method private showEdit(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, editBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1810
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[showEdit] + "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1813
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[showEdit]can\'t get context"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :cond_1
    :goto_0
    return-void

    .line 1817
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1819
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_3

    .line 1821
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[showEdit]can\'t get image"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1825
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 1831
    const-string v4, "video/x-wmv-drm"

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1832
    .local v3, isWMDrm:Z
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    move v2, v0

    .line 1837
    .local v2, isDRM:Z
    :goto_1
    if-nez v2, :cond_7

    .line 1849
    .local v0, canShowEdit:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 1851
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1853
    const/16 v4, 0x16

    const v5, 0x7f0a0125

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1855
    :cond_5
    const/16 v4, 0x17

    const v5, 0x7f0a0126

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1856
    const/16 v4, 0x18

    const v5, 0x7f0a0127

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1857
    const/16 v4, 0x19

    const v5, 0x7f0a0128

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1858
    const/16 v4, 0x1a

    const v5, 0x7f0a0129

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0

    .end local v0           #canShowEdit:Z
    .end local v2           #isDRM:Z
    :cond_6
    move v2, v6

    .line 1832
    goto :goto_1

    .restart local v2       #isDRM:Z
    :cond_7
    move v0, v6

    .line 1837
    goto :goto_2
.end method

.method private showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1963
    .local p1, moreBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v13, "SceneLocalPhotoFullscreen"

    const-string v14, "[showMore] + "

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1966
    :cond_0
    const-string v13, "SceneLocalPhotoFullscreen"

    const-string v14, "[showMore]can\'t get context"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :goto_0
    return-void

    .line 1969
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1970
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1972
    .local v9, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v9, :cond_2

    .line 1974
    const-string v13, "SceneLocalPhotoFullscreen"

    const-string v14, "[showMore]can\'t get image"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1978
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 1984
    const-string v13, "video/x-wmv-drm"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1985
    .local v12, isWMDrm:Z
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v9

    check-cast v13, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object v7, v13

    .line 1986
    .local v7, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz v12, :cond_6

    :cond_3
    const/4 v10, 0x1

    .line 1987
    .local v10, isDRM:Z
    :goto_2
    if-eqz v12, :cond_7

    const/4 v6, 0x1

    .line 1988
    .local v6, drmType:I
    :goto_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_9

    const/4 v11, 0x1

    .line 1992
    .local v11, isDRMFL:Z
    :goto_4
    if-eqz v10, :cond_a

    move v3, v11

    .line 1993
    .local v3, canShowSetAs:Z
    :goto_5
    if-eqz v10, :cond_b

    move v4, v11

    .line 1995
    .local v4, canShowSlideShow:Z
    :goto_6
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v13, :cond_c

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .line 1997
    .local v2, canShowSelectPlayer:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_d

    if-eqz v9, :cond_d

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_d

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_d

    if-nez v12, :cond_d

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v1, 0x1

    .line 2007
    .local v1, canShowPrint:Z
    :goto_8
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2010
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v13, :cond_4

    if-eqz v2, :cond_4

    .line 2012
    const/16 v13, 0xf

    const/4 v14, 0x0

    const v15, 0x7f0a00be

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2016
    :cond_4
    const/16 v13, 0x1c

    const/4 v14, 0x0

    const v15, 0x7f0a012a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2017
    const/16 v13, 0xb

    const/4 v14, 0x0

    const v15, 0x7f0a012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 1985
    .end local v1           #canShowPrint:Z
    .end local v2           #canShowSelectPlayer:Z
    .end local v3           #canShowSetAs:Z
    .end local v4           #canShowSlideShow:Z
    .end local v6           #drmType:I
    .end local v7           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v10           #isDRM:Z
    .end local v11           #isDRMFL:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1986
    .restart local v7       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1987
    .restart local v10       #isDRM:Z
    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    goto :goto_3

    .line 1988
    .restart local v6       #drmType:I
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 1992
    .restart local v11       #isDRMFL:Z
    :cond_a
    const/4 v3, 0x1

    goto :goto_5

    .line 1993
    .restart local v3       #canShowSetAs:Z
    :cond_b
    const/4 v4, 0x1

    goto :goto_6

    .line 1995
    .restart local v4       #canShowSlideShow:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 1997
    .restart local v2       #canShowSelectPlayer:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 2026
    .restart local v1       #canShowPrint:Z
    :cond_e
    if-eqz v3, :cond_f

    .line 2028
    const/4 v13, 0x7

    const/4 v14, 0x0

    const v15, 0x7f0a012e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2031
    :cond_f
    if-eqz v4, :cond_10

    .line 2033
    const/16 v13, 0xd

    const/4 v14, 0x0

    const v15, 0x7f0a0118

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2037
    :cond_10
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v13, :cond_11

    if-eqz v2, :cond_11

    .line 2039
    const/16 v13, 0xf

    const/4 v14, 0x0

    const v15, 0x7f0a00be

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2042
    :cond_11
    if-eqz v1, :cond_12

    .line 2044
    const/16 v13, 0x12

    const/4 v14, 0x0

    const v15, 0x7f0a0119

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2047
    :cond_12
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v8

    .line 2048
    .local v8, hasGPSInfo:Z
    sget-boolean v13, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v13, :cond_13

    if-eqz v8, :cond_13

    .line 2050
    const/16 v13, 0x1b

    const/4 v14, 0x0

    const v15, 0x7f0a011a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2053
    :cond_13
    if-eqz v10, :cond_14

    .line 2055
    const/16 v13, 0xc

    const/4 v14, 0x0

    const v15, 0x7f0a012c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2058
    :cond_14
    const/16 v13, 0xb

    const/4 v14, 0x0

    const v15, 0x7f0a012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1743
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1746
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :goto_0
    return-void

    .line 1749
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1750
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1752
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1754
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1758
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    goto :goto_0
.end method

.method private showTabletEdit(Landroid/view/SubMenu;)V
    .locals 11
    .parameter "editMenu"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1763
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[showTabletEdit] + "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    if-nez p1, :cond_1

    .line 1766
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[showTabletEdit]can\'t get editMenu"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1771
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_2

    .line 1773
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[showTabletEdit]can\'t get image"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_2
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 1783
    const-string v7, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1784
    .local v6, isWMDrm:Z
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v3

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object v2, v7

    .line 1785
    .local v2, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v6, :cond_6

    :cond_3
    move v4, v9

    .line 1786
    .local v4, isDRM:Z
    :goto_2
    if-eqz v6, :cond_7

    move v1, v9

    .line 1787
    .local v1, drmType:I
    :goto_3
    if-ne v1, v9, :cond_9

    move v5, v9

    .line 1789
    .local v5, isDRMFL:Z
    :goto_4
    if-nez v4, :cond_a

    move v0, v9

    .line 1791
    .local v0, canShowEdit:Z
    :goto_5
    if-eqz v0, :cond_0

    .line 1793
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1795
    const/16 v7, 0x16

    const v8, 0x7f0a0125

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1797
    :cond_4
    const/16 v7, 0x17

    const v8, 0x7f0a0126

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1798
    const/16 v7, 0x18

    const v8, 0x7f0a0127

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1800
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v7

    if-gt v7, v9, :cond_0

    .line 1802
    const/16 v7, 0x19

    const v8, 0x7f0a0128

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1803
    const/16 v7, 0x1a

    const v8, 0x7f0a0129

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1784
    .end local v0           #canShowEdit:Z
    .end local v1           #drmType:I
    .end local v2           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v4           #isDRM:Z
    .end local v5           #isDRMFL:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_6
    move v4, v10

    .line 1785
    goto :goto_2

    .line 1786
    .restart local v4       #isDRM:Z
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    goto :goto_3

    .restart local v1       #drmType:I
    :cond_9
    move v5, v10

    .line 1787
    goto :goto_4

    .restart local v5       #isDRMFL:Z
    :cond_a
    move v0, v10

    .line 1789
    goto :goto_5
.end method

.method private showTabletMore(Landroid/view/Menu;)V
    .locals 23
    .parameter "moreMenu"

    .prologue
    .line 1864
    const-string v19, "SceneLocalPhotoFullscreen"

    const-string v20, "[showTabletMore] + "

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    if-nez p1, :cond_0

    .line 1867
    const-string v19, "SceneLocalPhotoFullscreen"

    const-string v20, "[showTabletMore]can\'t get moreMenu"

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :goto_0
    return-void

    .line 1870
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1872
    .local v14, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v14, :cond_1

    .line 1874
    const-string v19, "SceneLocalPhotoFullscreen"

    const-string v20, "[showTabletMore]can\'t get image"

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1884
    :cond_1
    const-string v19, "video/x-wmv-drm"

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1885
    .local v17, isWMDrm:Z
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v19, v14

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v12, v19

    .line 1886
    .local v12, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-nez v19, :cond_2

    if-eqz v17, :cond_4

    :cond_2
    const/4 v15, 0x1

    .line 1887
    .local v15, isDRM:Z
    :goto_2
    if-eqz v17, :cond_5

    const/4 v11, 0x1

    .line 1888
    .local v11, drmType:I
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    const/16 v16, 0x1

    .line 1890
    .local v16, isDRMFL:Z
    :goto_4
    if-eqz v15, :cond_8

    move/from16 v8, v16

    .line 1891
    .local v8, canShowSetAs:Z
    :goto_5
    if-eqz v15, :cond_9

    move/from16 v9, v16

    .line 1893
    .local v9, canShowSlideShow:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 1894
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-static {v10}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v14, :cond_a

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    if-nez v17, :cond_a

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v7, 0x1

    .line 1899
    .local v7, canShowPrint:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v5, v0, Lcom/htc/album/addons/SingleCollection;

    .line 1900
    .local v5, bViewSingle:Z
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v19, :cond_b

    if-nez v15, :cond_b

    if-nez v5, :cond_b

    const/4 v6, 0x1

    .line 1908
    .local v6, canShowDLNA:Z
    :goto_8
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1910
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f0a0115

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1911
    const/16 v19, 0x0

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const v22, 0x7f0a012a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1913
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1914
    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    const v22, 0x7f0a012c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1921
    :goto_9
    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x0

    const v22, 0x7f0a012b

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1885
    .end local v5           #bViewSingle:Z
    .end local v6           #canShowDLNA:Z
    .end local v7           #canShowPrint:Z
    .end local v8           #canShowSetAs:Z
    .end local v9           #canShowSlideShow:Z
    .end local v10           #context:Landroid/content/Context;
    .end local v11           #drmType:I
    .end local v12           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v15           #isDRM:Z
    .end local v16           #isDRMFL:Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1886
    .restart local v12       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1887
    .restart local v15       #isDRM:Z
    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v11

    goto/16 :goto_3

    :cond_6
    const/4 v11, -0x1

    goto/16 :goto_3

    .line 1888
    .restart local v11       #drmType:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1890
    .restart local v16       #isDRMFL:Z
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 1891
    .restart local v8       #canShowSetAs:Z
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_6

    .line 1894
    .restart local v9       #canShowSlideShow:Z
    .restart local v10       #context:Landroid/content/Context;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1900
    .restart local v5       #bViewSingle:Z
    .restart local v7       #canShowPrint:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1917
    .restart local v6       #canShowDLNA:Z
    :cond_c
    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    const v22, 0x7f0a0112

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 1918
    .local v18, item:Landroid/view/MenuItem;
    invoke-static {v10}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_d

    const/16 v19, 0x1

    :goto_a
    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_9

    :cond_d
    const/16 v19, 0x0

    goto :goto_a

    .line 1925
    .end local v18           #item:Landroid/view/MenuItem;
    :cond_e
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f0a0115

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1927
    if-eqz v8, :cond_f

    .line 1929
    const/16 v19, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    const v22, 0x7f0a012e

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1932
    :cond_f
    if-eqz v9, :cond_10

    .line 1934
    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v21, 0x0

    const v22, 0x7f0a0118

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1937
    :cond_10
    if-eqz v6, :cond_11

    .line 1939
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1942
    :cond_11
    if-eqz v7, :cond_12

    .line 1944
    const/16 v19, 0x0

    const/16 v20, 0x12

    const/16 v21, 0x0

    const v22, 0x7f0a0119

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1947
    :cond_12
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v13

    .line 1948
    .local v13, hasGPSInfo:Z
    sget-boolean v19, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v19, :cond_13

    if-eqz v13, :cond_13

    .line 1950
    const/16 v19, 0x0

    const/16 v20, 0x1b

    const/16 v21, 0x0

    const v22, 0x7f0a011a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1953
    :cond_13
    if-eqz v15, :cond_14

    .line 1955
    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    const v22, 0x7f0a012c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1958
    :cond_14
    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x0

    const v22, 0x7f0a012b

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private showTabletShare(Landroid/view/Menu;)V
    .locals 4
    .parameter "shareMenu"

    .prologue
    .line 1723
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showTabletShare] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1726
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showTabletShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :goto_0
    return-void

    .line 1729
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1730
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1732
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1734
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showTabletShare]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1738
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method private swithToBurst()V
    .locals 10

    .prologue
    .line 1692
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[swithToBurst] + "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 1694
    .local v2, c:Lcom/htc/album/modules/collection/Collection;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v6

    .line 1696
    .local v6, position:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1697
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "folder_type"

    const-string v8, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1701
    .local v5, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 1702
    .local v4, displayName:Ljava/lang/String;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, bucketId:Ljava/lang/String;
    const-string v7, "SceneLocalPhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[switchToBurst]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v7, "SceneLocalPhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[switchToBurst]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    move-object v3, v0

    .line 1706
    .local v3, combName:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1707
    const-string v7, "key_bucket_id"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :cond_0
    const-string v7, "key_BurstShot_CoverFilePath"

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 1712
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1714
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 1717
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v8, "SceneLocalPhotoBurstShot"

    const/4 v9, 0x0

    invoke-interface {v7, v1, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 1718
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[swithToBurst] - "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 5

    .prologue
    .line 341
    const/4 v1, 0x1

    .line 342
    .local v1, bResult:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 345
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, szAction:Ljava/lang/String;
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const/4 v1, 0x0

    .line 356
    .end local v3           #szAction:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v2

    .line 353
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exclusionEditTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 3548
    const/high16 v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method public exclusionShowHideTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 3553
    const/high16 v0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 3898
    const/4 v0, 0x3

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3683
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3684
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 3686
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullScreen][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    :cond_0
    :goto_0
    return-object v2

    .line 3690
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 3691
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 3694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3696
    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3666
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3667
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 3669
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullScreen][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3677
    :cond_0
    :goto_0
    return-object v2

    .line 3673
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 3674
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 3677
    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 4135
    const/4 v0, 0x1

    return v0
.end method

.method protected isSelectedImageDRM()Z
    .locals 6

    .prologue
    .line 4554
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 4555
    .local v2, index:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4556
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 4557
    const/4 v3, 0x1

    .line 4564
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v2           #index:I
    :goto_0
    return v3

    .line 4559
    :catch_0
    move-exception v0

    .line 4561
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSelectedImageDRM] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 8

    .prologue
    .line 737
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 739
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 740
    .local v5, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 741
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    invoke-direct {v7, p0, v5, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 771
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v7, "SceneLocalFolder"

    invoke-interface {v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 772
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 773
    .local v2, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 775
    .local v3, intent:Landroid/content/Intent;
    const/16 v4, 0xff

    .line 776
    .local v4, mediaType:I
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 778
    .local v1, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-static {v2, v1, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 780
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mediaType:I
    :cond_0
    return-void

    .line 776
    .restart local v2       #context:Landroid/content/Context;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #mediaType:I
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    .line 1118
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    .line 3756
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult] + "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    .line 3848
    :goto_0
    return-void

    .line 3760
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 3761
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    .line 3847
    :goto_1
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult] - "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3767
    :sswitch_0
    const-string v6, "data"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3768
    .local v5, strUri:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 3774
    .end local v5           #strUri:Ljava/lang/String;
    :sswitch_1
    const-string v6, "data"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3775
    .restart local v5       #strUri:Ljava/lang/String;
    const-string v6, "data2"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3777
    .local v4, strData:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 3779
    :cond_1
    const-string v6, "SceneLocalPhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LocalGridview3DTemplate][onActivityResult][CommonMessageID.MSG_INTENT_TRIMAPP] adpater,data1,data2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3786
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(Z)V

    goto :goto_1

    .line 3822
    .end local v4           #strData:Ljava/lang/String;
    .end local v5           #strUri:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto :goto_1

    .line 3826
    :sswitch_3
    const-string v6, "DMR"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3827
    .local v3, selectDMR:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 3828
    if-eqz v3, :cond_3

    .line 3830
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 3834
    :cond_3
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[LocalGridview3DTemplate][onActivityResult]: MSG_PICK_DMR DMR is null."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3840
    .end local v3           #selectDMR:Ljava/lang/String;
    :sswitch_4
    const-string v7, "itemIndex"

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3841
    .local v2, newIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3842
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "last_viewed_photo_index"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3843
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v7, 0x0

    const-string v8, "SceneLocalPhotoThumbnail"

    invoke-interface {v6, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3761
    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_3
        0x13ba -> :sswitch_1
        0x13bb -> :sswitch_0
        0x7f00 -> :sswitch_2
        0x7f08 -> :sswitch_2
        0x330010 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 11
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3855
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v10, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult_CROP_NONE] + "

    invoke-static {v7, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3858
    .local v2, extras:Landroid/os/Bundle;
    const-string v7, "filePath"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3859
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3861
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "image/jpeg"

    invoke-static {v7, v1, v10}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 3864
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3865
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 3872
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 3873
    .local v3, itemCount:I
    add-int/lit8 v4, v3, -0x1

    .line 3884
    .local v4, pos:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 3885
    .local v6, type:Ljava/lang/String;
    const-string v7, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    move v5, v9

    .line 3886
    .local v5, shouldStayOnOriginalImage:Z
    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    if-nez v5, :cond_2

    .line 3889
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(Z)V

    .line 3890
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 3891
    invoke-direct {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 3893
    :cond_2
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult_CROP_NONE] - "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    return-void

    .end local v5           #shouldStayOnOriginalImage:Z
    :cond_3
    move v5, v8

    .line 3885
    goto :goto_0
.end method

.method public onAnimationBegin()V
    .locals 3

    .prologue
    .line 4340
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4342
    .local v0, nIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformBegin(I)V

    .line 4344
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4346
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4348
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 4351
    :cond_0
    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4354
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4356
    .local v0, nIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformEnd(I)V

    .line 4358
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    if-ne v1, v2, :cond_0

    .line 4360
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4362
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 4365
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 1537
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onAnimationEnd(I)V

    .line 1538
    packed-switch p1, :pswitch_data_0

    .line 1551
    :cond_0
    :goto_0
    return-void

    .line 1542
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1543
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    goto :goto_0

    .line 1538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationSwitched()V
    .locals 2

    .prologue
    .line 4368
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4370
    .local v0, nIndex:I
    return-void
.end method

.method public onBack()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 858
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->doRequestForceSave(Z)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 860
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 864
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostBack()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 799
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 813
    :goto_0
    return v3

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->doRequestForceSave(Z)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 807
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostBackPressed()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 618
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 621
    invoke-direct {p0, v5, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 623
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getStartupIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    .line 625
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullscreen][onBindAdapter] Start Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 629
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 630
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 631
    .local v1, fragment:Landroid/app/Fragment;
    new-instance v3, Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v3, v1, v2, v4}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 634
    if-nez v1, :cond_2

    .line 636
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onBindAdapter]fragment is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-static {v0, v6, v7}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v2, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 651
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v2, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 656
    :cond_1
    const/16 v2, 0x2724

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 657
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 658
    return-void

    .line 640
    :cond_2
    new-instance v3, Lcom/htc/album/helper/ImageProcessManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v3, v1, v2, v4}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 641
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    goto :goto_0
.end method

.method public onBubbleDismissed()V
    .locals 3

    .prologue
    .line 2078
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 2079
    return-void
.end method

.method public onBubblePopped()V
    .locals 1

    .prologue
    .line 2068
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 2069
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2432
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2433
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 2434
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    .line 2435
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v4, :cond_0

    .line 2437
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 2438
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v4}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 2439
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v4}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 2443
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 2444
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2445
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2446
    .local v2, footer:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2447
    .local v0, continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_1

    .line 2448
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_3

    .line 2449
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2450
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2462
    .end local v0           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2463
    .local v3, ori:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2465
    if-ne v3, v6, :cond_4

    .line 2467
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2468
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2469
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    .end local v3           #ori:I
    :cond_2
    :goto_1
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onConfigurationChanged]: ..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    return-void

    .line 2453
    .restart local v0       #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #footer:Landroid/view/View;
    :cond_3
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2454
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2473
    .end local v0           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    .restart local v3       #ori:I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2474
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2475
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2483
    .end local v3           #ori:I
    :catch_0
    move-exception v1

    .line 2485
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onConfigurationChanged]change DRM file name bar orientation failed."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1570
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1572
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1574
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShare(I)V

    .line 1688
    :goto_0
    return-void

    .line 1578
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1674
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1583
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisplay()V

    goto :goto_0

    .line 1588
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1593
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCamera()V

    goto :goto_0

    .line 1599
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1604
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSaveAs2D()V

    goto :goto_0

    .line 1609
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCrop()V

    goto :goto_0

    .line 1614
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEffects()V

    goto :goto_0

    .line 1619
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateRight()V

    goto :goto_0

    .line 1624
    :pswitch_a
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateLeft()V

    goto :goto_0

    .line 1629
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSetAs()V

    goto :goto_0

    .line 1634
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onFavorite()V

    goto :goto_0

    .line 1639
    :pswitch_d
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTrim()V

    goto :goto_0

    .line 1644
    :pswitch_e
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSlideShow()V

    goto :goto_0

    .line 1649
    :pswitch_f
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrint()V

    goto :goto_0

    .line 1654
    :pswitch_10
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShowOnMap()V

    goto :goto_0

    .line 1659
    :pswitch_11
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDetails()V

    goto :goto_0

    .line 1664
    :pswitch_12
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onProtectionInfo()V

    goto :goto_0

    .line 1669
    :pswitch_13
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 1679
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showEdit(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1684
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_2
        :pswitch_15
        :pswitch_f
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_10
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 7
    .parameter "nAnimState"

    .prologue
    const/4 v6, 0x0

    .line 1492
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1493
    .local v0, animationBundle:Landroid/os/Bundle;
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    .line 1496
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 1497
    .local v3, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 1498
    .local v2, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1499
    .local v1, idx:I
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1500
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$5;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;ILcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1523
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1533
    :cond_0
    :goto_1
    return-object v0

    .line 1518
    :cond_1
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1519
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1520
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[SceneLocalPhotoFullscreen] [onCreateAnimation] wait texture ready time: 0"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1525
    :pswitch_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1527
    const/16 v4, 0x4e4a

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 1528
    const/16 v4, 0x4e4b

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 1523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 5
    .parameter "id"

    .prologue
    .line 3577
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateFooterBar] + "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3578
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3580
    :cond_0
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateFooterBar]can\'t get context"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    const/4 v2, 0x0

    .line 3593
    :cond_1
    :goto_0
    return-object v2

    .line 3583
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3585
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 3586
    .local v2, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableRightFooter()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 3588
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 3589
    .local v1, footer:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_1

    .line 3590
    check-cast v1, Lcom/htc/widget/HtcFooter;

    .end local v1           #footer:Landroid/view/ViewGroup;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 319
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 322
    if-nez v0, :cond_0

    .line 324
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 368
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 369
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 370
    const-string v8, "SceneLocalPhotoFullscreen"

    const-string v10, "[HTCAlbum][SceneLocalPhotoFullscreen][onCreateScene] -: Activity is null"

    invoke-static {v8, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 442
    :cond_0
    :goto_0
    return-object v4

    .line 374
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 375
    .local v2, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 376
    .local v3, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 377
    .local v5, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v8

    invoke-direct {v4, v2, v8, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 378
    .local v4, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v8, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v8, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 379
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v6, inValue:Landroid/os/Bundle;
    const-string v8, "TEXTURE_MAX_COUNT"

    const/16 v10, 0x24

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string v8, "CACHE_SET"

    const/16 v10, 0xc

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string v8, "FULL_MEM_CAHCE_SIZE"

    const/4 v10, 0x3

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isFileCachable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 384
    const-string v8, "FULL_FILE_CAHCE_SIZE"

    const/16 v10, 0xa

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    :cond_2
    const-string v8, "FULL_FILM_FLAG"

    invoke-virtual {v6, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 390
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_3

    const-string v8, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 392
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->raisePriorityOnce()V

    .line 395
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    instance-of v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v8, :cond_4

    const-string v8, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 398
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    check-cast v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getInitBackgroundCallback()Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    move-result-object v8

    invoke-virtual {v10, v2, v6, v8}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;)V

    .line 403
    :goto_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 404
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 405
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v8, p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    .line 406
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 407
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;

    invoke-direct {v8, p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 408
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;

    invoke-direct {v8, p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 409
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 410
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V

    .line 413
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 418
    iput-boolean v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    .line 420
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 431
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 432
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_5

    .line 434
    const-string v8, "SceneLocalPhotoFullscreen"

    const-string v9, "[HTCAlbum][SceneLocalPhotoFullscreen][onCreateScene] -: ActionBar is null"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_4
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v2, v6}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 438
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_5
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 517
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 496
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 497
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 498
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 499
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 501
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 505
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 511
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 512
    return-void
.end method

.method protected onDetails()V
    .locals 7

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 2374
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/album/addons/SingleCollection;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 2376
    .local v5, isViewSingle:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    .line 2380
    return-void

    .line 2374
    .end local v5           #isViewSingle:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 330
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 331
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 334
    if-nez v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x1

    return v0
.end method

.method public final onEnterFullscreenMode()V
    .locals 1

    .prologue
    .line 1434
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars()V

    goto :goto_0
.end method

.method public onEnterImage(I)V
    .locals 7
    .parameter "nIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4283
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4284
    .local v1, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    if-nez v1, :cond_1

    .line 4316
    :cond_0
    :goto_0
    return-void

    .line 4286
    :cond_1
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4287
    .local v2, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v2, :cond_0

    .line 4291
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 4293
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->isPaintable(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4295
    invoke-static {v0, v6, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 4296
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 4298
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPenMenu(Z)V

    .line 4299
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 4303
    :cond_2
    invoke-static {v0, v6, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 4304
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 4305
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 4309
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->requestInkCachePaint(I)V

    .line 4313
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->requestInkCacheData(I)V

    goto :goto_0
.end method

.method public onEnterImageIHT(II)I
    .locals 20
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 2496
    move/from16 v14, p1

    .line 2498
    .local v14, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2502
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_2

    .line 2504
    const-string v17, "video/x-wmv-drm"

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2505
    .local v13, isWMDrm:Z
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v8

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v6, v17

    .line 2506
    .local v6, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_0
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v13, :cond_7

    :cond_0
    const/4 v11, 0x1

    .line 2507
    .local v11, isDRM:Z
    :goto_1
    if-eqz v13, :cond_8

    const/4 v5, 0x1

    .line 2508
    .local v5, drmType:I
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_a

    const/4 v12, 0x1

    .line 2509
    .local v12, isDRMFL:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    if-eqz v11, :cond_1

    .line 2511
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2512
    .local v4, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    move-object/from16 v17, v0

    const v18, 0x7f090065

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 2513
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 2515
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 2519
    .end local v4           #displayName:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v17

    if-nez v17, :cond_2

    .line 2520
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 2525
    .end local v5           #drmType:I
    .end local v6           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v8           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v11           #isDRM:Z
    .end local v12           #isDRMFL:Z
    .end local v13           #isWMDrm:Z
    :cond_2
    const/4 v8, 0x0

    .line 2526
    .restart local v8       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    .end local v8           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2530
    .restart local v8       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const/16 v17, 0x1

    sget-boolean v18, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-object/from16 v17, v0

    new-instance v18, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual/range {v17 .. v18}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setListener(Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;)V

    .line 2533
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    .line 2536
    :cond_4
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v17

    if-nez v17, :cond_c

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 2538
    .local v3, activity:Landroid/app/Activity;
    if-eqz v3, :cond_c

    .line 2539
    const/4 v15, 0x0

    .line 2540
    .local v15, shouldSet:Z
    move/from16 v10, p1

    .line 2541
    .local v10, indexNext:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 2543
    const/4 v15, 0x1

    .line 2544
    move/from16 v10, p2

    .line 2546
    :cond_5
    move/from16 v16, v15

    .line 2547
    .local v16, shouldSetIndex:Z
    move v9, v10

    .line 2549
    .local v9, index:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 2550
    .local v7, handler:Landroid/os/Handler;
    if-nez v7, :cond_b

    move v9, v14

    .line 2696
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #handler:Landroid/os/Handler;
    .end local v9           #index:I
    .end local v10           #indexNext:I
    .end local v15           #shouldSet:Z
    .end local v16           #shouldSetIndex:Z
    :goto_4
    return v9

    .line 2505
    .restart local v13       #isWMDrm:Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2506
    .restart local v6       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2507
    .restart local v11       #isDRM:Z
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v5

    goto/16 :goto_2

    :cond_9
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 2508
    .restart local v5       #drmType:I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 2553
    .end local v5           #drmType:I
    .end local v6           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v11           #isDRM:Z
    .end local v13           #isWMDrm:Z
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v7       #handler:Landroid/os/Handler;
    .restart local v9       #index:I
    .restart local v10       #indexNext:I
    .restart local v15       #shouldSet:Z
    .restart local v16       #shouldSetIndex:Z
    :cond_b
    new-instance v17, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v3, v2, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/app/Activity;ZI)V

    const-wide/16 v18, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 2595
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #handler:Landroid/os/Handler;
    .end local v9           #index:I
    .end local v10           #indexNext:I
    .end local v15           #shouldSet:Z
    .end local v16           #shouldSetIndex:Z
    :cond_c
    move/from16 v0, p2

    if-ne v14, v0, :cond_e

    .line 2597
    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    :cond_d
    :goto_5
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v17, :cond_10

    move v9, v14

    .line 2620
    goto :goto_4

    .line 2601
    :cond_e
    move/from16 v14, p2

    .line 2602
    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v17

    if-nez v17, :cond_f

    .line 2607
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 2611
    :cond_f
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 2613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setIndex(I)V

    goto :goto_5

    .line 2623
    :cond_10
    move/from16 v0, p2

    if-ne v14, v0, :cond_11

    .line 2625
    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move v9, v14

    .line 2696
    goto/16 :goto_4

    .line 2629
    :cond_11
    move/from16 v14, p2

    .line 2630
    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 522
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 526
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 527
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 528
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 530
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->defaultControlBarOn()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->createFooterBar(IZ)V

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    invoke-static {v2}, Lcom/htc/opensense2/album/util/DrmManager;->registerRenewRightListener(Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;)V

    .line 536
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 537
    return-void
.end method

.method public onImageRotated(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x1

    .line 4320
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v2, :cond_1

    .line 4332
    :cond_0
    :goto_0
    return-void

    .line 4322
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4323
    .local v0, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4324
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v1, :cond_0

    .line 4326
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformPaintPanZoom(ZZ)V

    .line 4328
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 4329
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 4330
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 693
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 694
    .local v0, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-virtual {v0, v4, v4, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    .line 695
    invoke-virtual {v0, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    .line 698
    const/4 v4, 0x1

    invoke-direct {p0, v5, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 699
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v4, :cond_0

    .line 701
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 702
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 703
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 704
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 708
    .end local v2           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 710
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 711
    .restart local v1       #parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 712
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 714
    :cond_1
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 717
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 718
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    .line 721
    :cond_3
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v4, :cond_4

    .line 722
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    check-cast v3, Landroid/view/ViewGroup;

    .line 723
    .local v3, viewGroup:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->getPaintLayout()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 725
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->onDestroy()V

    .line 726
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 729
    .end local v3           #viewGroup:Landroid/view/ViewGroup;
    :cond_4
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->unregisterRenewRightListener()V

    .line 730
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 733
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3904
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    move v1, v2

    .line 3943
    :goto_0
    return v1

    .line 3906
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 3907
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 3908
    goto :goto_0

    .line 3910
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 3943
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0

    .line 3913
    :sswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3914
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    .line 3915
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 3916
    invoke-direct {p0, v2, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3917
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    move v1, v3

    .line 3918
    goto :goto_0

    :sswitch_1
    move v1, v3

    .line 3932
    goto :goto_0

    .line 3934
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateChange(Landroid/os/Message;)V

    move v1, v3

    .line 3935
    goto :goto_0

    .line 3937
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    move v1, v3

    .line 3938
    goto :goto_0

    .line 3940
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    move v1, v3

    .line 3941
    goto :goto_0

    .line 3910
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e3c -> :sswitch_0
        0x4e48 -> :sswitch_1
        0x4e4a -> :sswitch_3
        0x4e4b -> :sswitch_4
        0x4f4f -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 361
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 362
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 1

    .prologue
    .line 4587
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isSelectedImageDRM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4591
    :goto_0
    return-void

    .line 4590
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNoTVToPlay()V

    goto :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 6

    .prologue
    .line 784
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNotifyUpdateComplete()V

    .line 786
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneLocalFolder"

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 787
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 788
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 790
    .local v2, intent:Landroid/content/Intent;
    const/16 v3, 0xff

    .line 791
    .local v3, mediaType:I
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 793
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-static {v1, v0, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 795
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mediaType:I
    :cond_0
    return-void

    .line 791
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mediaType:I
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1281
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1283
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1285
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullScreen][onOptionsItemSelected]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 1409
    :goto_0
    return v2

    .line 1289
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1290
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1292
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1294
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullScreen][onOptionsItemSelected]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 1295
    goto :goto_0

    .line 1298
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const/16 v3, 0x3039

    if-ne v2, v3, :cond_3

    .line 1300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShare(I)V

    move v2, v5

    .line 1301
    goto :goto_0

    .line 1304
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v2, v5

    .line 1409
    goto :goto_0

    .line 1309
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisplay()V

    goto :goto_1

    .line 1314
    :sswitch_1
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_1

    .line 1318
    :sswitch_2
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_1

    .line 1323
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDelete()V

    goto :goto_1

    .line 1328
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCamera()V

    goto :goto_1

    .line 1334
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    goto :goto_1

    .line 1339
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSaveAs2D()V

    goto :goto_1

    .line 1344
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCrop()V

    goto :goto_1

    .line 1349
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEffects()V

    goto :goto_1

    .line 1354
    :sswitch_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateRight()V

    goto :goto_1

    .line 1359
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateLeft()V

    goto :goto_1

    .line 1364
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSetAs()V

    goto :goto_1

    .line 1369
    :sswitch_c
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onFavorite()V

    goto :goto_1

    .line 1374
    :sswitch_d
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTrim()V

    goto :goto_1

    .line 1379
    :sswitch_e
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSlideShow()V

    goto :goto_1

    .line 1384
    :sswitch_f
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrint()V

    goto :goto_1

    .line 1389
    :sswitch_10
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShowOnMap()V

    goto :goto_1

    .line 1394
    :sswitch_11
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDetails()V

    goto :goto_1

    .line 1399
    :sswitch_12
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onProtectionInfo()V

    goto :goto_1

    .line 1404
    :sswitch_13
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_1

    .line 1304
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x7 -> :sswitch_b
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xd -> :sswitch_e
        0xe -> :sswitch_d
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x12 -> :sswitch_f
        0x13 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x18 -> :sswitch_8
        0x19 -> :sswitch_9
        0x1a -> :sswitch_a
        0x1b -> :sswitch_10
        0x1c -> :sswitch_c
        0x29 -> :sswitch_13
        0x7f0a0161 -> :sswitch_1
        0x7f0a0162 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPaintDataReady(I)V
    .locals 11
    .parameter "nIndex"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    .line 4395
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v0, :cond_1

    .line 4404
    :cond_0
    :goto_0
    return-void

    .line 4397
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4398
    .local v9, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v9, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4399
    .local v10, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v10, :cond_0

    .line 4401
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][PaintUpdateListener]: onPaintDataReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p1, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPenAlpha(ILcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 4403
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v10}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 465
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 471
    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->onPause()V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 482
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 483
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 1464
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPhaseInScreenControl(I)V

    .line 1471
    return-void

    .line 1468
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 1452
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPhaseOutScreenControl(I)V

    .line 1459
    return-void

    .line 1456
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPostBack()V
    .locals 4

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onLastViewItemUpdate()V

    .line 868
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v1, 0x0

    const-string v2, "SceneLocalPhotoThumbnail"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 872
    :cond_0
    return-void
.end method

.method protected onPostBackPressed()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v4

    .line 819
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 821
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v3

    .line 825
    .local v3, bIsFullScreen:Z
    if-nez v3, :cond_1

    .line 826
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisableTransitionAnimation(Z)V

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onLastViewItemUpdate()V

    .line 829
    const-string v5, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 831
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v7, 0x0

    const-string v8, "SceneLocalPhotoThumbnail"

    invoke-interface {v5, v7, v8, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 854
    :cond_2
    :goto_0
    return-void

    .line 835
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 838
    const/4 v2, 0x0

    .line 839
    .local v2, bFromCamera:Z
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 842
    .local v1, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "preview_mode"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_4

    move v2, v6

    .line 848
    :goto_1
    if-eqz v2, :cond_2

    .line 850
    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[HTCAlbum][SceneLocalPhotoFullscreen][onPostBackPressed]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/16 v5, 0x68

    invoke-static {v1, v5}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 842
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 844
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onPrepareAnimation(I)Z
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 1477
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v2, "SceneLocalPhotoThumbnail"

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    .line 1478
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    if-nez v1, :cond_0

    .line 1479
    const/4 v0, 0x0

    .line 1481
    :cond_0
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onPrepareAnimation]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/16 v1, 0x4e3c

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 1487
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 1129
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1131
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1134
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/addons/SingleCollection;

    if-nez v3, :cond_0

    .line 1136
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1138
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 1146
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1148
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_1

    .line 1150
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1151
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1153
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, displayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const v4, 0x7f090065

    invoke-virtual {v3, v4, v0}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 1157
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doSimulateScreenTouched(IZ)V

    .line 1159
    const/4 v3, 0x0

    return v3

    .line 1142
    .end local v2           #position:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPreparePhoneOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onPreparePhoneOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f0a00fa

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1234
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1236
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][onPreparePhoneOptionsMenu]can\'t get context"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1241
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1243
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1244
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1246
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][onPreparePhoneOptionsMenu]can\'t get image"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    :cond_2
    const/4 v3, 0x0

    .line 1252
    .local v3, item:Landroid/view/MenuItem;
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v4, :cond_3

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1254
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v4, :cond_5

    .line 1256
    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1257
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1268
    :cond_3
    :goto_1
    const v4, 0x7f0a0111

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1269
    if-eqz v3, :cond_4

    .line 1270
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1271
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1275
    :cond_4
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0

    .line 1262
    :cond_5
    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1263
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 21
    .parameter "menu"

    .prologue
    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    if-nez v17, :cond_1

    .line 1166
    :cond_0
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[HtcAlbum][SceneLocalPhotoFullScreen][onPrepareTabletOptionsMenu]can\'t get context"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :goto_0
    return-void

    .line 1170
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1171
    .local v7, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1173
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v8, :cond_2

    .line 1175
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[HtcAlbum][SceneLocalPhotoFullScreen][onPrepareTabletOptionsMenu]can\'t get image"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1183
    :cond_2
    const-string v17, "video/x-wmv-drm"

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1184
    .local v11, isWMDrm:Z
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v11, :cond_8

    :cond_3
    const/4 v9, 0x1

    .line 1185
    .local v9, isDRM:Z
    :goto_1
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v17

    if-eqz v17, :cond_9

    if-nez v11, :cond_9

    const/4 v10, 0x1

    .line 1186
    .local v10, isSharable:Z
    :goto_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    if-eqz v17, :cond_a

    if-nez v9, :cond_a

    const/4 v6, 0x1

    .line 1187
    .local v6, canShowTrim:Z
    :goto_3
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    if-nez v17, :cond_b

    if-nez v9, :cond_b

    const/4 v5, 0x1

    .line 1189
    .local v5, canShowEdit:Z
    :goto_4
    if-eqz v10, :cond_4

    .line 1191
    const/16 v17, 0x0

    const v18, 0x7f090087

    const/16 v19, 0x0

    const v20, 0x7f0a0114

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 1193
    .local v13, itemShare:Landroid/view/MenuItem;
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showTabletShare(Landroid/view/Menu;)V

    .line 1195
    const v17, 0x7f090087

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 1196
    if-eqz v13, :cond_4

    .line 1197
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1198
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1202
    .end local v13           #itemShare:Landroid/view/MenuItem;
    :cond_4
    if-eqz v6, :cond_5

    .line 1204
    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    const v20, 0x7f0a012d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    .line 1205
    .local v14, itemTrim:Landroid/view/MenuItem;
    if-eqz v14, :cond_5

    .line 1206
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1207
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Trim_Dark_Rest(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1211
    .end local v14           #itemTrim:Landroid/view/MenuItem;
    :cond_5
    if-eqz v5, :cond_6

    .line 1213
    const/16 v17, 0x0

    const v18, 0x7f09007c

    const/16 v19, 0x0

    const v20, 0x7f0a0124

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v16

    .line 1214
    .local v16, subMenu:Landroid/view/SubMenu;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showTabletEdit(Landroid/view/SubMenu;)V

    .line 1216
    const v17, 0x7f09007c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 1217
    .local v15, menuItem:Landroid/view/MenuItem;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1218
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1221
    .end local v15           #menuItem:Landroid/view/MenuItem;
    .end local v16           #subMenu:Landroid/view/SubMenu;
    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x0

    const v20, 0x7f0a0111

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    .line 1222
    .local v12, itemCamera:Landroid/view/MenuItem;
    if-eqz v12, :cond_7

    .line 1223
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1224
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1229
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showTabletMore(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1184
    .end local v5           #canShowEdit:Z
    .end local v6           #canShowTrim:Z
    .end local v9           #isDRM:Z
    .end local v10           #isSharable:Z
    .end local v12           #itemCamera:Landroid/view/MenuItem;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1185
    .restart local v9       #isDRM:Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1186
    .restart local v10       #isSharable:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1187
    .restart local v6       #canShowTrim:Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method protected onProtectionInfo()V
    .locals 4

    .prologue
    .line 2384
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2385
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2386
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2387
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 12
    .parameter "footer"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3599
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar] + "

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3600
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3602
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get context"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    :goto_0
    return-void

    .line 3605
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3606
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3608
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v7, :cond_2

    .line 3610
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get image"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3614
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 3616
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3618
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0115

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 3619
    const/16 v3, 0xb

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Info_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a012b

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_0

    .line 3626
    :cond_3
    const-string v0, "video/x-wmv-drm"

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 3627
    .local v10, isWMDrm:Z
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v10, :cond_7

    :cond_4
    move v8, v5

    .line 3628
    .local v8, isDRM:Z
    :goto_1
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v10, :cond_8

    move v9, v5

    .line 3629
    .local v9, isSharable:Z
    :goto_2
    if-eqz v9, :cond_5

    .line 3631
    invoke-virtual {p1, v1, v2, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3633
    :cond_5
    invoke-virtual {p1, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3635
    .local v6, delBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3637
    if-nez v8, :cond_6

    .line 3639
    const/16 v0, 0xe

    invoke-virtual {p1, v1, v2, v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3654
    :cond_6
    :goto_3
    const/16 v0, 0x11

    invoke-virtual {p1, v1, v2, v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v11

    check-cast v11, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3655
    .local v11, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    goto/16 :goto_0

    .end local v6           #delBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v8           #isDRM:Z
    .end local v9           #isSharable:Z
    .end local v11           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_7
    move v8, v2

    .line 3627
    goto :goto_1

    .restart local v8       #isDRM:Z
    :cond_8
    move v9, v2

    .line 3628
    goto :goto_2

    .line 3648
    .restart local v6       #delBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v9       #isSharable:Z
    :cond_9
    if-nez v8, :cond_6

    .line 3650
    const/16 v0, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_3
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 6
    .parameter "header"

    .prologue
    .line 3558
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_1

    .line 3560
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3561
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_0

    .line 3572
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-void

    .line 3565
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 3566
    .local v1, displayName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const v5, 0x7f090065

    invoke-virtual {v4, v5, v1}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 3569
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3570
    .local v0, context:Landroid/content/Context;
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v3

    check-cast v3, Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 3571
    .local v3, output:Lcom/htc/album/modules/ui/widget/HeaderButton;
    invoke-static {v0}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 448
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onResume()V

    .line 449
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->onResume()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 457
    :cond_1
    return-void
.end method

.method public onScrollStateIDLE()V
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 3010
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 3011
    return-void
.end method

.method public onScrollStateScroll()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3016
    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 3017
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 3019
    invoke-direct {p0, v9, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3022
    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3023
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const-string v6, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3024
    .local v5, isWMDrm:Z
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object v1, v3

    .line 3025
    .local v1, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_0
    if-eqz v5, :cond_4

    move v0, v8

    .line 3026
    .local v0, drmType:I
    :goto_1
    if-ne v0, v8, :cond_6

    move v4, v8

    .line 3027
    .local v4, isDRMFL:Z
    :goto_2
    if-nez v4, :cond_0

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-eqz v6, :cond_1

    .line 3029
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3037
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v4           #isDRMFL:Z
    .end local v5           #isWMDrm:Z
    :cond_1
    :goto_3
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v6

    if-ne v8, v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_2

    .line 3039
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 3040
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v6, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPenMenu(Z)V

    .line 3041
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 3042
    invoke-direct {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 3043
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v6, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    .line 3047
    :cond_2
    return-void

    .line 3024
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #isWMDrm:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3025
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v1       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .restart local v0       #drmType:I
    :cond_6
    move v4, v9

    .line 3026
    goto :goto_2

    .line 3032
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v5           #isWMDrm:Z
    :catch_0
    move-exception v2

    .line 3034
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SceneLocalPhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HtcAlbum][SceneLocalFullscreen][onScrollStateScroll]err "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    .line 609
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 610
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    .line 611
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 612
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideFullFilmView()V

    .line 613
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 13
    .parameter "bundle"

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 551
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 552
    .local v5, pref:Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    const-string v7, "key_BurstShot_datasetchanged"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v9, v7, :cond_0

    .line 553
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 555
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 556
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "key_BurstShot_datasetchanged"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 557
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 560
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 571
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v6

    .line 572
    .local v6, selectedItemIndex:I
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    .line 573
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 574
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 575
    .local v4, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 577
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[HTCAlbum][SceneLocalPhotoFullScreen][onSendToForeground]Do item click for DRM."

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    .line 579
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v7, v8, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    .line 581
    :cond_1
    iput-boolean v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 583
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 584
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v7

    if-nez v7, :cond_2

    .line 585
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 586
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v3

    .line 589
    .local v3, footer:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 590
    .local v1, continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 591
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_3

    .line 592
    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v7

    invoke-virtual {v1, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 593
    invoke-virtual {v1, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 603
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #footer:Landroid/view/View;
    :cond_2
    :goto_0
    invoke-direct {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    .line 604
    return-void

    .line 596
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #footer:Landroid/view/View;
    :cond_3
    invoke-virtual {v1, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 597
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method protected onSetAs()V
    .locals 4

    .prologue
    .line 2083
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2084
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    .line 2085
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 1558
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1562
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onStop()V

    .line 489
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->onDismissAllFragmentDialog()V

    .line 491
    :cond_0
    return-void
.end method

.method public onStrokeDataReady(I)V
    .locals 8
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4374
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v3, :cond_1

    .line 4392
    :cond_0
    :goto_0
    return-void

    .line 4376
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 4377
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4379
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 4380
    .local v2, nIndexSelected:I
    if-eq p1, v2, :cond_2

    .line 4382
    const-string v3, "SceneLocalPhotoFullscreen"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][FullscreenZoomListener][PaintUpdateListener]: onStrokeDataReady skip: "

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4386
    :cond_2
    const-string v3, "SceneLocalPhotoFullscreen"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][FullscreenZoomListener][PaintUpdateListener]: onStrokeDataReady: "

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4388
    invoke-direct {p0, p1, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 4389
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 4390
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v6}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    goto :goto_0
.end method

.method public onTVReadyToPlay()V
    .locals 1

    .prologue
    .line 4577
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isSelectedImageDRM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4581
    :goto_0
    return-void

    .line 4580
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTransformBegin(I)V
    .locals 11
    .parameter "nIndex"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4407
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v0, :cond_1

    .line 4429
    :cond_0
    :goto_0
    return-void

    .line 4409
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][onTransformBegin]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4411
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, p1, v7}, Lcom/htc/album/PaintManager/HtcPaintManager;->reRoutePaintSave(IZ)Z

    .line 4415
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4416
    .local v9, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v9, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4417
    .local v10, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v10, :cond_0

    .line 4419
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p1, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPenAlpha(ILcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 4420
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v10}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    move v1, p1

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V

    .line 4425
    invoke-direct {p0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 4426
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v7}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    .line 4427
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    invoke-direct {p0, v0, v8, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method public onTransformEnd(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x1

    .line 4432
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v2, :cond_1

    .line 4445
    :cond_0
    :goto_0
    return-void

    .line 4434
    :cond_1
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullscreenZoomListener][onTransformEnd]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4438
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 4439
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4441
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformPaintPanZoom(ZZ)V

    .line 4442
    invoke-direct {p0, p1, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 4443
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 4444
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v2, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    goto :goto_0
.end method

.method public onTransformPaintPanZoom(ZZ)V
    .locals 12
    .parameter "bIsPanZoom"
    .parameter "bIsRotate"

    .prologue
    const/4 v11, 0x1

    .line 4449
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 4450
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4451
    .local v0, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v0, v3}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4452
    .local v4, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v4, :cond_1

    .line 4478
    :cond_0
    :goto_0
    return-void

    .line 4454
    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v5

    .line 4455
    .local v5, viewPort:Lcom/htc/album/PaintManager/PaintViewPort3D;
    if-eqz v5, :cond_0

    .line 4457
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v2

    .line 4458
    .local v2, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-eqz v2, :cond_0

    .line 4460
    invoke-virtual {v5}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixbegin()V

    .line 4461
    iget v6, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v7, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v8, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v9, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    add-int/2addr v8, v9

    iget v9, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v10, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setRectangle(IIII)V

    .line 4465
    if-ne v11, p2, :cond_2

    .line 4467
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4468
    .local v1, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setRotation(F)V

    .line 4471
    .end local v1           #iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    iget v6, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    invoke-virtual {v5, v6}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setScale(F)V

    .line 4472
    iget v6, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v7, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setTranslation(II)V

    .line 4473
    invoke-virtual {v5, p2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixEnd(Z)V

    .line 4474
    if-ne v11, p2, :cond_0

    .line 4476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTransformPaintPanZoom"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/album/PaintManager/PaintViewPort3D;->printfMatrix(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 665
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 668
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPaintUpdateListener(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V

    .line 671
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPaintDrawListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousShotDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 681
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_4

    .line 682
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 683
    :cond_4
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 686
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdatePaintTextLayer(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 4337
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 3660
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 4570
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "SceneLocalPhotoFullscreen"

    return-object v0
.end method

.method public setPaintManager(Lcom/htc/album/PaintManager/HtcPaintManager;)V
    .locals 2
    .parameter "htcPaintManager"

    .prologue
    .line 4517
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4519
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 4520
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][LocalFullFilmViewTemplate][setPaintManager]: enable..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    :goto_0
    return-void

    .line 4524
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    .line 4525
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][LocalFullFilmViewTemplate][setPaintManager]: disable..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
