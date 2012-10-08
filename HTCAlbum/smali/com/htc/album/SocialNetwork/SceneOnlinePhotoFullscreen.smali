.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIONBTN_CUST1:I = -0x1

.field private static final ACTIONBTN_CUST2:I = -0x2

.field private static final COMMENT_BAR_ONLINE_FULLFILM_VIEW:I = 0x1003

.field private static final FOOTER_BAR_ONLINE_FULLFILM_VIEW:I = 0x1001

.field private static final HEADER_BAR_ONLINE_FULLFILM_VIEW:I = 0x1002

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoFullscreen"

.field private static final TAG_BAR_ONLINE_FULLFILM_VIEW:I = 0x1004


# instance fields
.field protected mAnimationState:I

.field private mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

.field private mCommentCount:I

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

.field private mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

.field private mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

.field protected mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mHideAllControlView:Z

.field private mIsDelete:Z

.field private mIsDeleteAll:Z

.field private mIsFooterbarVisible:Z

.field private mIsNewAdapter:Z

.field private mIsPluginDelete:Z

.field private mLoadingText:Ljava/lang/String;

.field private mNoPhotoList:Z

.field private mOldDmr:Ljava/lang/String;

.field protected mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

.field private mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

.field protected mOrientationHasChanged:Z

.field protected mPrevPosition:I

.field protected mPrevScrollState:I

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;

.field protected mServiceType:Ljava/lang/String;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

.field private mTagManager:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    .line 90
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    .line 91
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 92
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    .line 93
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    .line 94
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 95
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    .line 96
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 97
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    .line 98
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 99
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    .line 100
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 101
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 102
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 103
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 104
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mHideAllControlView:Z

    .line 105
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    .line 106
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    .line 107
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    .line 109
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    .line 110
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    .line 122
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    .line 124
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 127
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOldDmr:Ljava/lang/String;

    .line 389
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    .line 1477
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isPhotoFullSize(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isHitIndicator(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V
    .locals 10
    .parameter "moreBtn"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1608
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 1610
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "flag_genuine"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v8, v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "my_live_album"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v8, v6, :cond_0

    .line 1613
    const/16 v6, 0xa

    const v7, 0x7f0a0124

    invoke-virtual {p1, v6, v9, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1621
    :cond_0
    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1622
    .local v0, bShowCaption:Z
    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1624
    .local v1, bShowTag:Z
    const/4 v4, 0x0

    .line 1625
    .local v4, showHideCaption:I
    if-eqz v1, :cond_1

    const v5, 0x7f0a011e

    .line 1627
    .local v5, showHideTag:I
    :goto_0
    if-eqz v1, :cond_2

    const/16 v3, 0x1e

    .line 1628
    .local v3, idshowHideTag:I
    :goto_1
    if-eqz v1, :cond_3

    const/16 v2, 0x21

    .line 1630
    .local v2, idshowHideCaption:I
    :goto_2
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1631
    if-eqz v0, :cond_4

    const v4, 0x7f0a0121

    .line 1635
    :goto_3
    invoke-virtual {p1, v2, v9, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1636
    invoke-virtual {p1, v3, v9, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1637
    return-void

    .line 1625
    .end local v2           #idshowHideCaption:I
    .end local v3           #idshowHideTag:I
    .end local v5           #showHideTag:I
    :cond_1
    const v5, 0x7f0a011d

    goto :goto_0

    .line 1627
    .restart local v5       #showHideTag:I
    :cond_2
    const/16 v3, 0x1d

    goto :goto_1

    .line 1628
    .restart local v3       #idshowHideTag:I
    :cond_3
    const/16 v2, 0x20

    goto :goto_2

    .line 1631
    .restart local v2       #idshowHideCaption:I
    :cond_4
    const v4, 0x7f0a0120

    goto :goto_3

    .line 1633
    :cond_5
    if-eqz v0, :cond_6

    const v4, 0x7f0a0123

    :goto_4
    goto :goto_3

    :cond_6
    const v4, 0x7f0a0122

    goto :goto_4
.end method

.method private enableProgressLoading(ZI)V
    .locals 3
    .parameter "bShow"
    .parameter "iResID"

    .prologue
    .line 2491
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2492
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->prepareLoadingText(I)V

    .line 2494
    :cond_0
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][enableProgressLoading]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 2496
    return-void
.end method

.method private getFirstValidPos()I
    .locals 1

    .prologue
    .line 2601
    const/4 v0, 0x0

    return v0
.end method

.method private getSharedPreferencesWithBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "shareKey"

    .prologue
    .line 2560
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2561
    .local v0, preference:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hideAllControlBars()V
    .locals 0

    .prologue
    .line 749
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    .line 750
    return-void
.end method

.method private hideAllControlView()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mHideAllControlView:Z

    .line 744
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    .line 745
    return-void
.end method

.method private hideTag()V
    .locals 2

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-nez v0, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2317
    :cond_0
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoFullscreen][hideTag]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    goto :goto_0
.end method

.method private isHitIndicator(II)Z
    .locals 10
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 832
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x5

    .line 833
    .local v5, wSection:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x5

    .line 834
    .local v0, hSection:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v6

    .line 835
    .local v4, top:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v3, v6

    .line 837
    .local v3, left:I
    sub-int v6, p1, v3

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v5, :cond_0

    move v1, v7

    .line 838
    .local v1, hitX:Z
    :goto_0
    sub-int v6, p2, v4

    mul-int/lit8 v9, v0, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_1

    move v2, v7

    .line 840
    .local v2, hitY:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v7

    .end local v1           #hitX:Z
    .end local v2           #hitY:Z
    :cond_0
    move v1, v8

    .line 837
    goto :goto_0

    .restart local v1       #hitX:Z
    :cond_1
    move v2, v8

    .line 838
    goto :goto_1

    .restart local v2       #hitY:Z
    :cond_2
    move v7, v8

    .line 840
    goto :goto_2
.end method

.method private isPhotoFullSize(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 869
    const/4 v1, 0x0

    .line 870
    .local v1, bResult:Z
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 871
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    if-eqz v0, :cond_0

    .line 873
    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoIntegrity(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 874
    const/4 v1, 0x1

    .line 877
    :cond_0
    return v1
.end method

.method private launchDMRPicker()V
    .locals 6

    .prologue
    .line 2623
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2625
    .local v1, itemPosition:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2627
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2629
    const/4 v2, 0x3

    const/16 v3, 0x1398

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 2636
    :cond_0
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 9
    .parameter "newDMR"

    .prologue
    .line 2569
    const-string v1, "SceneOnlinePhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SenseOnlineFullScreen][onDMRChanged]: DMR: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 2597
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2574
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 2576
    .local v7, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2578
    .local v4, itemPosition:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2579
    .local v3, strFolderName:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2580
    const-string v3, ""

    .line 2582
    :cond_2
    const/4 v1, -0x1

    if-eq v4, v1, :cond_0

    .line 2585
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v8

    .line 2587
    .local v8, nPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v8, :cond_0

    .line 2589
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2591
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCOnlinePhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0

    .line 2595
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCOnlinePhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private onDropListShareItemSelected(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1471
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onDropListShareItemSelected]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    :goto_0
    return-void

    .line 1475
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0
.end method

.method private onErrorNoList(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, isPhotoListSizeChanged:Z
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    if-nez v2, :cond_0

    .line 774
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    .line 775
    const/4 v0, 0x1

    .line 778
    :cond_0
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    if-eq v4, v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    if-ne v4, v2, :cond_2

    .line 780
    :cond_1
    invoke-direct {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 781
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 782
    .local v1, nBundle:Landroid/os/Bundle;
    const-string v2, "refresh_by_delete_all"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-interface {v2, v1, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 788
    .end local v1           #nBundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 787
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncList(Landroid/os/Message;Z)V

    goto :goto_0
.end method

.method private onItemSelected(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/16 v3, 0x4e3c

    .line 754
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 755
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v0

    .line 756
    .local v0, bControlBarShowing:Z
    if-nez v0, :cond_0

    .line 757
    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->toggleControlBarsVisibility()V

    .line 760
    return-void
.end method

.method private onOpenSenseControlButtonClick(I)Z
    .locals 16
    .parameter "nBtnId"

    .prologue
    .line 1896
    const/4 v3, 0x0

    .line 1897
    .local v3, bResult:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v13, :cond_0

    move v4, v3

    .line 1941
    .end local v3           #bResult:Z
    .local v4, bResult:I
    :goto_0
    return v4

    .line 1900
    .end local v4           #bResult:I
    .restart local v3       #bResult:Z
    :cond_0
    const/4 v10, 0x0

    .line 1901
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v12

    .local v12, size:I
    :goto_1
    if-ge v8, v12, :cond_1

    .line 1903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v13, v8}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v5

    .line 1905
    .local v5, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    .line 1907
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v13, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v11

    .line 1908
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v13, v11}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v1

    .line 1909
    .local v1, aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v1, :cond_2

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v14, v5, v11, v13}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 1910
    const/4 v3, 0x1

    .end local v1           #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v5           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v11           #pos:I
    :cond_1
    move v4, v3

    .line 1941
    .restart local v4       #bResult:I
    goto :goto_0

    .line 1909
    .end local v4           #bResult:I
    .restart local v1       #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v5       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v11       #pos:I
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 1913
    .end local v1           #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v11           #pos:I
    :cond_3
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v10

    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    check-cast v10, Ljava/util/ArrayList;

    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v10, :cond_6

    .line 1915
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1917
    .local v2, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 1919
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v14, v15}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 1921
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v14}, Lcom/htc/album/helper/ShareMenuManager;->getPluginButtonID()I

    move-result v14

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v13}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 1926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1927
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v13}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v7

    .line 1928
    .local v7, footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v14}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    .line 1930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v13, v6, v2}, Lcom/htc/album/helper/ShareMenuManager;->onSocialPluginShareClick(Landroid/content/Context;Lcom/htc/opensense/album/plugin/CommandBarButton;)V

    .line 1933
    .end local v6           #context:Landroid/content/Context;
    .end local v7           #footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_5
    const/4 v3, 0x1

    .line 1901
    .end local v2           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method private onPreparePhoneOptionsMenu4DLNA(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1331
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1347
    .local v0, context:Landroid/content/Context;
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1986
    const v0, 0x7f0a0137

    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 1987
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v1, 0x4e28

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1988
    return-void
.end method

.method private onShare(I)V
    .locals 9
    .parameter "selection"

    .prologue
    .line 1966
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1967
    .local v1, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1968
    .local v2, nIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1969
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_0

    .line 1982
    :goto_0
    return-void

    .line 1971
    :cond_0
    const/4 v4, 0x0

    .line 1972
    .local v4, szUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1973
    .local v3, szLink:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1975
    .local v5, szWebLink:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 1976
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 1977
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v4

    .line 1979
    :goto_1
    const-string v6, "SceneOnlinePhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneOnlinePhotoFullscreen][onShare]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v6, v1, p1, v5}, Lcom/htc/album/helper/ShareMenuManager;->onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v3

    .line 1977
    goto :goto_1
.end method

.method private onShowCaption(IZ)V
    .locals 6
    .parameter "nIndex"
    .parameter "bEnable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2142
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2148
    :cond_2
    if-nez p2, :cond_3

    .line 2150
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_0

    .line 2153
    :cond_3
    const/4 v0, 0x0

    .line 2154
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v1, ""

    .line 2156
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, p1, :cond_4

    .line 2158
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onShowCaption]: diff index..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_0

    .line 2162
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2164
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_0

    .line 2167
    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2169
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2172
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isInDetail()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2173
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2184
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 2186
    :cond_7
    const-string v1, ""

    .line 2187
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    .line 2194
    :goto_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v3, 0x7f090063

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setText(ILjava/lang/String;)V

    goto :goto_0

    .line 2175
    :cond_8
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2177
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isInDetail()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2178
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2181
    :cond_9
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2191
    :cond_a
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_2
.end method

.method private onSyncList(Landroid/os/Message;Z)V
    .locals 6
    .parameter "message"
    .parameter "isNoPhoto"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, isPhotoListSizeChanged:Z
    const/4 v0, 0x0

    .line 793
    .local v0, hasListUpdate:Z
    if-ne v5, p2, :cond_4

    .line 795
    const/4 v1, 0x1

    .line 809
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    if-eqz v2, :cond_6

    .line 811
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    .line 812
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 813
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 824
    :cond_2
    :goto_1
    if-ne v5, v1, :cond_3

    .line 826
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    .line 828
    :cond_3
    return-void

    .line 797
    :cond_4
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    if-ne v5, v2, :cond_5

    .line 799
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    .line 800
    const/4 v1, 0x1

    goto :goto_0

    .line 802
    :cond_5
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v5, v2, :cond_0

    .line 804
    const/4 v0, 0x1

    goto :goto_0

    .line 815
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 817
    invoke-direct {p0, v4, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 818
    if-nez v1, :cond_7

    if-eqz v0, :cond_2

    .line 819
    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange()V

    goto :goto_1
.end method

.method private onToggleCaption(Z)V
    .locals 4
    .parameter "bUpdateMode"

    .prologue
    const/4 v2, 0x1

    .line 2115
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2138
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v1, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    :cond_2
    if-ne v2, p1, :cond_3

    .line 2126
    const-string v3, "showCaption"

    const-string v1, "showCaption"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    .line 2129
    :cond_3
    const-string v1, "showCaption"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2130
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShowCaption(IZ)V

    .line 2132
    if-ne v2, p1, :cond_0

    .line 2134
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 2126
    .end local v0           #bEnable:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onUICmdDelete(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 726
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 737
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    .line 740
    :goto_0
    return-void

    .line 729
    :pswitch_0
    const v0, 0x7f0a0010

    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 732
    :pswitch_1
    invoke-direct {p0, v1, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 733
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    .line 734
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUpdateTags(IZ)V
    .locals 5
    .parameter "nIndex"
    .parameter "bEnable"

    .prologue
    .line 2226
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    .line 2310
    :goto_0
    return-void

    .line 2229
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableTagsPlugin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2231
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2235
    :cond_1
    if-nez p2, :cond_2

    .line 2237
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: exit..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2241
    :cond_2
    const/4 v0, 0x0

    .line 2246
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    if-eq p1, v3, :cond_3

    .line 2248
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: diff index..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2254
    :cond_3
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    if-eqz v3, :cond_4

    .line 2256
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: scrolling..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2262
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2264
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: zoomed..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2277
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2279
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMediaQuality()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 2281
    :cond_6
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: not HQ"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2287
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 2288
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-nez v1, :cond_8

    .line 2290
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: no item"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2294
    :cond_8
    if-eqz v1, :cond_9

    iget v3, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 2296
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: not 1.0"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2301
    :cond_9
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    .line 2302
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2304
    :cond_a
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: no tag"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2308
    :cond_b
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showTag(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private prepareLoadingText(I)V
    .locals 2
    .parameter "iResID"

    .prologue
    .line 2500
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 2507
    :goto_0
    return-void

    .line 2501
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2503
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2504
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    goto :goto_0

    .line 2506
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter "shareKey"
    .parameter "enable"

    .prologue
    .line 2543
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2544
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2546
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2549
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v2, v2, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    .line 2551
    const-string v2, "showTag"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2552
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2553
    :cond_1
    const-string v2, "showCaption"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2554
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    goto :goto_0
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
    .line 1813
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1816
    :cond_0
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    :cond_1
    :goto_0
    return-void

    .line 1820
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1821
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    move-result v1

    .line 1825
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 1827
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[showShare]can\'t show share bubble"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showTag(Ljava/util/ArrayList;)V
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2322
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/16 v20, 0x0

    .line 2323
    .local v20, nPhotoX:I
    const/16 v21, 0x0

    .line 2324
    .local v21, nPhotoY:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v19

    .line 2325
    .local v19, nPhotoW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v18

    .line 2326
    .local v18, nPhotoH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v14

    .line 2327
    .local v14, currentItemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-eqz v14, :cond_0

    .line 2329
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    move/from16 v20, v0

    .line 2330
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    move/from16 v21, v0

    .line 2331
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    move/from16 v19, v0

    .line 2332
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    move/from16 v18, v0

    .line 2335
    :cond_0
    if-eqz v19, :cond_1

    if-nez v18, :cond_2

    .line 2337
    :cond_1
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][showTag]: no photo"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    :goto_0
    return-void

    .line 2341
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v23

    .line 2342
    .local v23, nScreenW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v22

    .line 2345
    .local v22, nScreenH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    .line 2346
    .local v13, activity:Landroid/app/Activity;
    const-string v4, "window"

    invoke-virtual {v13, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 2347
    .local v15, display:Landroid/view/Display;
    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v22

    .line 2348
    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v23

    .line 2352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v4, :cond_3

    .line 2354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeAllViews()V

    .line 2355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager;->clearTagGroup()V

    .line 2356
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 2358
    :cond_3
    new-instance v4, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {v4, v13}, Lcom/htc/album/TagUtils/TagViewManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 2359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Lcom/htc/album/TagUtils/TagViewManager;->setReferenceTagGroup(Landroid/widget/RelativeLayout;)V

    .line 2363
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    .line 2364
    .local v24, newPhoto:Landroid/graphics/Point;
    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_4

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 2367
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->countPhotoSize(IIII)Landroid/graphics/Point;

    move-result-object v24

    .line 2369
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .line 2370
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 2374
    :cond_5
    sub-int v4, v23, v19

    div-int/lit8 v20, v4, 0x2

    .line 2375
    sub-int v4, v22, v18

    div-int/lit8 v21, v4, 0x2

    .line 2377
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2378
    .local v25, param:Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v23

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2379
    move/from16 v0, v22

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->init(IIII)Z

    .line 2385
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 2387
    .local v17, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    goto :goto_1

    .line 2391
    .end local v17           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Lcom/htc/album/TagUtils/TagViewManager;->addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 2396
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2400
    :cond_7
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][showTag]:... "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 2486
    const/4 v0, 0x1

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 1738
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x3

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2075
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 2079
    :goto_0
    return-object v0

    .line 2077
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2079
    .local v0, szSecondTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2065
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 2069
    :goto_0
    return-object v0

    .line 2067
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    .local v0, szPrimanyTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkConnectionActive()Z
    .locals 7

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 564
    .local v2, fragment:Lcom/htc/app/mf/MfFragment;
    if-nez v2, :cond_0

    move v1, v0

    .line 575
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 567
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    instance-of v4, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 569
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 570
    .local v3, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 571
    const/4 v0, 0x1

    .end local v3           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_1
    :goto_1
    move v1, v0

    .line 575
    .restart local v1       #bResult:I
    goto :goto_0

    .line 573
    .end local v1           #bResult:I
    .restart local v3       #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_2
    const/16 v4, 0x272c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    .line 1309
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 271
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 321
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 322
    .local v1, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "OnActivityResult: pass to data plugin"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 327
    .end local v1           #plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    :cond_1
    return-void

    .line 279
    .restart local v0       #activity:Landroid/app/Activity;
    :pswitch_0
    invoke-static {v0, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOldDmr:Ljava/lang/String;

    .line 281
    const-string v3, "DMR"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, selectDMR:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "directmode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 289
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "directmode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    :cond_2
    if-eqz v2, :cond_0

    .line 294
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1398
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 469
    packed-switch p1, :pswitch_data_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0

    .line 475
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 476
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBack()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 203
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v4, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v1

    .line 208
    .local v1, bIsFullScreen:Z
    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDisableTransitionAnimation(Z)V

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onLastViewItemUpdate()V

    .line 213
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    if-ne v6, v4, :cond_3

    .line 215
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 216
    .local v3, nBundle:Landroid/os/Bundle;
    const-string v4, "refresh_by_delete"

    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneOnlinePhotoThumbnail"

    invoke-interface {v4, v3, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 222
    .end local v3           #nBundle:Landroid/os/Bundle;
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 226
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 229
    .restart local v3       #nBundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneOnlinePhotoThumbnail"

    invoke-interface {v4, v3, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 232
    .end local v3           #nBundle:Landroid/os/Bundle;
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 198
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 331
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 334
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 335
    .local v2, index:I
    if-ne v2, v5, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoIndex()I

    move-result v2

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 341
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 342
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 344
    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V

    invoke-direct {v4, v1, v3, v5}, Lcom/htc/album/helper/OnlineDeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 347
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "index_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v4, 0x4e35

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 350
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 3

    .prologue
    .line 1961
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 1962
    return-void
.end method

.method public onBubblePopped()V
    .locals 1

    .prologue
    .line 1951
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 1952
    return-void
.end method

.method public onComment()V
    .locals 5

    .prologue
    .line 2084
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2086
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2087
    .local v3, nIndex:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2088
    .local v1, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2089
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2091
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2092
    .local v2, bundle:Landroid/os/Bundle;
    invoke-static {v1, v0, v2}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1742
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1743
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1744
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlView()V

    .line 1760
    return-void

    .line 1748
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1749
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1750
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1751
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1754
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1755
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1756
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
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
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v2, 0x1

    .line 1764
    const/4 v0, 0x0

    .line 1765
    .local v0, bResult:Z
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1768
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 1770
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1771
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0

    .line 1776
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1805
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1779
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1782
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    goto :goto_0

    .line 1785
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 1788
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    goto :goto_0

    .line 1791
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1795
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0

    .line 1799
    :sswitch_7
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    goto :goto_0

    .line 1802
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->launchDMRPicker()V

    goto :goto_0

    .line 1776
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_4
        0x10 -> :sswitch_8
        0x13 -> :sswitch_1
        0x1d -> :sswitch_7
        0x1e -> :sswitch_7
        0x20 -> :sswitch_6
        0x21 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 446
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    .line 447
    const-string v1, "SceneOnlinePhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onCreateAnimation]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 449
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 451
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1587
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1589
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 1590
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v10

    check-cast v10, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1591
    .local v10, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v3, 0x2

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0115

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1592
    .local v7, deleteBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/16 v3, 0x9

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a011b

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1593
    .local v6, commentBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v9

    check-cast v9, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1594
    .local v9, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1603
    .end local v0           #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_1
    :goto_0
    return-object v0

    .line 1596
    .restart local v0       #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_2
    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 1598
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v8

    .line 1599
    .local v8, footer:Landroid/view/ViewGroup;
    instance-of v2, v8, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_1

    .line 1600
    check-cast v8, Lcom/htc/widget/HtcFooter;

    .end local v8           #footer:Landroid/view/ViewGroup;
    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 2043
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v2, :cond_0

    .line 2045
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 2046
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2049
    .end local v0           #dlg:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 7

    .prologue
    .line 598
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 600
    .local v1, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 601
    .local v3, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v0, v5, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 602
    .local v2, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v5, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 603
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v4, inValue:Landroid/os/Bundle;
    const-string v5, "TEXTURE_MAX_COUNT"

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    const-string v5, "FULL_FILM_FLAG"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v0, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 607
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 608
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 609
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 610
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 611
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 612
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 614
    return-object v2
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 620
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDelete()V
    .locals 5

    .prologue
    .line 2017
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-eqz v4, :cond_0

    .line 2019
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2021
    .local v2, nIndex:I
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_1

    .line 2023
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2024
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    .line 2026
    .local v3, photoID:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2028
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2029
    .local v1, msg:Landroid/os/Message;
    const v4, 0x10300001

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2030
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2031
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4, v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onUIHandlerMessage(Landroid/os/Message;)V

    .line 2039
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #nIndex:I
    .end local v3           #photoID:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2036
    .restart local v2       #nIndex:I
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v4, v2}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteSingleMedia(I)V

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 2054
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v2, :cond_0

    .line 2056
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 2057
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2060
    .end local v0           #dlg:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEdit()V
    .locals 7

    .prologue
    .line 1992
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1994
    .local v3, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1995
    .local v2, nIndex:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1996
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2008
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2009
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "photo_list"

    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2010
    const-string v4, "index_id"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2011
    const-string v4, "scene_identifier"

    const-string v5, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "ScenePhotoTagEditor"

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 2014
    return-void
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterImageIHT(II)I
    .locals 5
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 845
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: begin"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    move v0, p1

    .line 849
    .local v0, nIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    .line 851
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: no 3D barrier"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 865
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 855
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    if-ne v0, p2, :cond_1

    .line 857
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :goto_1
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: end "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 865
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0

    .line 861
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_1
    move v0, p2

    .line 862
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1498
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    if-nez v4, :cond_0

    .line 1500
    new-instance v4, Lcom/htc/album/SocialNetwork/LiveTagBar;

    const/16 v5, 0x1004

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f03003c

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/album/SocialNetwork/LiveTagBar;-><init>(ILandroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    .line 1501
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1502
    .local v3, root:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_0

    .line 1503
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1506
    .end local v3           #root:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 1508
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1518
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v4, :cond_3

    .line 1520
    new-instance v4, Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v5, 0x1003

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f030030

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;-><init>(ILandroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    .line 1521
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1522
    .restart local v3       #root:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_3

    .line 1524
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1526
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v5, 0x7f090062

    invoke-virtual {v4, v5}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1527
    .local v1, commentBarLayout:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 1529
    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DESCRIPTION_MIN_HEIGHT_DIMEN:I

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 1530
    const v4, 0x7f020009

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1533
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v5, 0x7f090063

    invoke-virtual {v4, v5}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1534
    .local v2, commentBarText:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 1536
    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DESCRIPTION_MAX_HEIGHT_DIMEN:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 1537
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1540
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1542
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1558
    :goto_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1562
    .end local v1           #commentBarLayout:Landroid/widget/RelativeLayout;
    .end local v2           #commentBarText:Landroid/widget/TextView;
    .end local v3           #root:Landroid/widget/RelativeLayout;
    :cond_3
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    .line 1563
    return-void

    .line 1514
    :cond_4
    const/16 v4, 0x1001

    invoke-virtual {p0, v4, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    goto/16 :goto_0

    .line 1546
    .restart local v1       #commentBarLayout:Landroid/widget/RelativeLayout;
    .restart local v2       #commentBarText:Landroid/widget/TextView;
    .restart local v3       #root:Landroid/widget/RelativeLayout;
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1547
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_6

    .line 1548
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1549
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1550
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1553
    :cond_6
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1554
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1555
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method public onLeaveScene()V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1570
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    .line 1571
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 1572
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 669
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 722
    :cond_0
    :goto_0
    return v1

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 672
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 676
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    move v1, v3

    .line 722
    goto :goto_0

    .line 679
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 682
    :sswitch_1
    invoke-direct {p0, p1, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncList(Landroid/os/Message;Z)V

    goto :goto_0

    .line 685
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 688
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onScrollStateChange(Landroid/os/Message;)V

    goto :goto_0

    .line 691
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    goto :goto_0

    .line 694
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onItemSelected(Landroid/os/Message;)V

    goto :goto_0

    .line 697
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 700
    :sswitch_7
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0

    .line 703
    :sswitch_8
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    goto :goto_0

    .line 706
    :sswitch_9
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0

    .line 709
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUICmdDelete(Landroid/os/Message;)V

    goto :goto_0

    .line 712
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    goto :goto_0

    .line 715
    :sswitch_c
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_2

    .line 717
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setLastVisibleIndex(I)V

    .line 718
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    goto :goto_1

    .line 676
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_5
        0x2761 -> :sswitch_0
        0x4e3c -> :sswitch_4
        0x4e47 -> :sswitch_c
        0x4e88 -> :sswitch_1
        0x4e94 -> :sswitch_2
        0x4f4f -> :sswitch_3
        0x10200001 -> :sswitch_6
        0x10200003 -> :sswitch_9
        0x10200004 -> :sswitch_8
        0x10200007 -> :sswitch_a
        0x10200009 -> :sswitch_7
        0x10300002 -> :sswitch_b
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 624
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 625
    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 626
    new-instance v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 627
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 628
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataRequest(Ljava/lang/Object;)V

    .line 629
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onCreate()V

    .line 631
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 632
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 634
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 637
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, pid:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 640
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 642
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v4, v4, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_0

    .line 644
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 645
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    .line 648
    :cond_0
    const/16 v4, 0x1001

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 650
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_1

    .line 652
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onShowFooterBar()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->removeView(Landroid/view/View;)V

    .line 657
    .end local v1           #pid:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v6, 0x4

    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-direct {v7, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 661
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoIndex()I

    .line 663
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onResume()V

    .line 664
    const v4, 0x7f0a0137

    invoke-direct {p0, v8, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 665
    return-void

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 634
    goto/16 :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1834
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1836
    const/4 v0, 0x0

    .line 1837
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1839
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onOptionsItemSelected]: skip 1"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v3

    .line 1843
    .restart local v0       #bResult:Z
    :cond_1
    const/16 v1, 0x28

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1845
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 1847
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0

    .line 1852
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1867
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1855
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1858
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    goto :goto_0

    .line 1861
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 1864
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    goto :goto_0

    .line 1871
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0

    .line 1875
    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    goto :goto_0

    .line 1878
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->launchDMRPicker()V

    goto :goto_0

    .line 1885
    .end local v0           #bResult:Z
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1888
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->launchDMRPicker()V

    goto :goto_0

    .line 1852
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_4
        0x10 -> :sswitch_7
        0x13 -> :sswitch_1
        0x1d -> :sswitch_6
        0x1e -> :sswitch_6
        0x20 -> :sswitch_5
        0x21 -> :sswitch_5
    .end sparse-switch

    .line 1885
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 241
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 392
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 400
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseInScreenControl(I)V

    .line 401
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 404
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 412
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseOutScreenControl(I)V

    .line 413
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 458
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 463
    :cond_1
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onPlayAnimation]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 5
    .parameter "nAnimState"

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 422
    .local v0, bResult:Z
    const/16 v2, 0x4e3c

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 423
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onPrepareAnimation]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    .line 426
    .local v1, isFromGridView:Z
    if-nez v1, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 430
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 440
    :goto_0
    return v0

    .line 433
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1313
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1314
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1315
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 1324
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isInvalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onItemSelected(Landroid/os/Message;)V

    .line 1327
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1321
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPreparePhoneOptionsMenu4DLNA(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 34
    .parameter "menu"

    .prologue
    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v5

    .line 1351
    .local v5, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 1353
    .local v15, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v30, v0

    const-string v31, "opensense_pugin"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    new-instance v30, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct/range {v30 .. v30}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 1361
    const/4 v11, 0x0

    .line 1362
    .local v11, barSize:I
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v28

    .local v28, size:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    add-int/lit8 v11, v11, 0x1

    .line 1362
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1364
    :cond_3
    const/16 v30, 0x1

    move/from16 v0, v30

    if-lt v11, v0, :cond_0

    const/16 v30, 0x3

    move/from16 v0, v30

    if-gt v11, v0, :cond_0

    .line 1366
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    const/16 v30, 0x0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, -0x1

    aput v33, v31, v32

    aput-object v31, v19, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x2

    aput v33, v31, v32

    aput-object v31, v19, v30

    const/16 v30, 0x2

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    aput-object v31, v19, v30

    const/16 v30, 0x3

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_1

    aput-object v31, v19, v30

    .line 1367
    .local v19, indexTable:[[I
    aget-object v13, v19, v11

    .line 1369
    .local v13, btnIndexTable:[I
    const/16 v16, 0x0

    array-length v0, v13

    move/from16 v28, v0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v30, v0

    aget v31, v13, v16

    invoke-virtual/range {v30 .. v31}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v12

    .line 1372
    .local v12, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 1373
    .local v29, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v29, :cond_4

    .line 1375
    const/16 v25, 0x0

    .local v25, nSubIndex:I
    :goto_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 1377
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1378
    .local v14, button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v14}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual {v14}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1375
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1383
    .end local v14           #button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v25           #nSubIndex:I
    :cond_4
    const/16 v30, 0x13

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 1385
    const/16 v30, 0x0

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v31

    const/16 v32, 0x0

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v20

    .line 1386
    .local v20, item:Landroid/view/MenuItem;
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1387
    .local v7, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 1388
    new-instance v30, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v30

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1394
    :cond_5
    :goto_4
    const/16 v30, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1369
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v20           #item:Landroid/view/MenuItem;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1390
    .restart local v7       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #item:Landroid/view/MenuItem;
    :cond_7
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1391
    .local v8, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 1392
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_4

    .line 1404
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #barSize:I
    .end local v12           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v13           #btnIndexTable:[I
    .end local v16           #i:I
    .end local v19           #indexTable:[[I
    .end local v20           #item:Landroid/view/MenuItem;
    .end local v28           #size:I
    .end local v29           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_8
    const/16 v30, 0x0

    const/16 v31, 0x28

    const/16 v32, 0x0

    const v33, 0x7f0a0114

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v24

    .line 1405
    .local v24, menuShare:Landroid/view/SubMenu;
    const/16 v30, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 1406
    .local v23, itemShare:Landroid/view/MenuItem;
    invoke-static {v15}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v30

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1407
    const/16 v30, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 1410
    .local v6, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v30, v0

    const/16 v31, 0x28

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z

    .line 1415
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "flag_genuine"

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "my_live_album"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1418
    const/16 v30, 0x0

    const/16 v31, 0x2

    const/16 v32, 0x0

    const v33, 0x7f0a0115

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v22

    .line 1419
    .local v22, itemDelete:Landroid/view/MenuItem;
    invoke-static {v15}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1420
    const/16 v30, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1426
    .end local v22           #itemDelete:Landroid/view/MenuItem;
    :cond_9
    const/16 v30, 0x0

    const/16 v31, 0x9

    const/16 v32, 0x0

    const v33, 0x7f0a011b

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    .line 1427
    .local v21, itemComment:Landroid/view/MenuItem;
    invoke-static {v15}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1428
    const/16 v30, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1433
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "flag_genuine"

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "my_live_album"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 1436
    const/16 v30, 0x0

    const/16 v31, 0xa

    const/16 v32, 0x0

    const v33, 0x7f0a0124

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1450
    :cond_a
    const-string v30, "showCaption"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1451
    .local v9, bShowCaption:Z
    const-string v30, "showTag"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1453
    .local v10, bShowTag:Z
    const/16 v26, 0x0

    .line 1454
    .local v26, showHideCaption:I
    if-eqz v10, :cond_b

    const v27, 0x7f0a011e

    .line 1456
    .local v27, showHideTag:I
    :goto_5
    if-eqz v10, :cond_c

    const/16 v18, 0x1e

    .line 1457
    .local v18, idshowHideTag:I
    :goto_6
    if-eqz v10, :cond_d

    const/16 v17, 0x21

    .line 1459
    .local v17, idshowHideCaption:I
    :goto_7
    sget-object v30, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v31, 0x0

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "service_name"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1460
    if-eqz v9, :cond_e

    const v26, 0x7f0a0121

    .line 1464
    :goto_8
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v17

    move/from16 v3, v31

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1465
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v31

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1454
    .end local v17           #idshowHideCaption:I
    .end local v18           #idshowHideTag:I
    .end local v27           #showHideTag:I
    :cond_b
    const v27, 0x7f0a011d

    goto :goto_5

    .line 1456
    .restart local v27       #showHideTag:I
    :cond_c
    const/16 v18, 0x1d

    goto :goto_6

    .line 1457
    .restart local v18       #idshowHideTag:I
    :cond_d
    const/16 v17, 0x20

    goto :goto_7

    .line 1460
    .restart local v17       #idshowHideCaption:I
    :cond_e
    const v26, 0x7f0a0120

    goto :goto_8

    .line 1462
    :cond_f
    if-eqz v9, :cond_10

    const v26, 0x7f0a0123

    :goto_9
    goto :goto_8

    :cond_10
    const v26, 0x7f0a0122

    goto :goto_9

    .line 1366
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 22
    .parameter "footer"

    .prologue
    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1644
    .local v3, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "opensense_pugin"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v2, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1650
    :cond_1
    new-instance v2, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct {v2}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 1653
    const/4 v10, 0x0

    .line 1654
    .local v10, barSize:I
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v19

    .local v19, size:I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v2, v15}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 1654
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1658
    :cond_3
    const/4 v2, 0x1

    if-lt v10, v2, :cond_4

    const/4 v2, 0x3

    if-le v10, v2, :cond_7

    .line 1660
    :cond_4
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][onRefreshFooterBar] Plug-in button size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    .line 1662
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 1669
    :goto_2
    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 1670
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    if-eqz v2, :cond_0

    .line 1672
    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    aput-object v4, v16, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    aput-object v4, v16, v2

    const/4 v2, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v16, v2

    const/4 v2, 0x3

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v16, v2

    .line 1673
    .local v16, indexTable:[[I
    aget-object v12, v16, v10

    .line 1675
    .local v12, btnIndexTable:[I
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v19, v0

    :goto_3
    move/from16 v0, v19

    if-ge v15, v0, :cond_0

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    aget v4, v12, v15

    invoke-virtual {v2, v4}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v11

    .line 1678
    .local v11, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    const/4 v2, 0x0

    invoke-virtual {v11}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v14

    check-cast v14, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1679
    .local v14, footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v11}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v11}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1681
    .local v8, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8

    .line 1682
    invoke-virtual {v14, v8}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1688
    :cond_5
    :goto_4
    invoke-virtual {v11}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 1689
    .local v21, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v21, :cond_6

    .line 1691
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x4

    if-le v2, v4, :cond_9

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v14}, Lcom/htc/album/modules/ui/widget/FooterButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/ShareMenuManager;->setPluginButtonID(I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2, v14}, Lcom/htc/album/helper/ShareMenuManager;->setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v4}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    .line 1698
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->enableShareDataPlugin(Z)V

    .line 1675
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1666
    .end local v8           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v11           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v12           #btnIndexTable:[I
    .end local v14           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v16           #indexTable:[[I
    .end local v21           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    .line 1667
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 1684
    .restart local v8       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v11       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v12       #btnIndexTable:[I
    .restart local v14       #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v16       #indexTable:[[I
    :cond_8
    invoke-virtual {v11}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1685
    .local v9, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_5

    .line 1686
    invoke-virtual {v14, v9}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1701
    .end local v9           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v21       #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v21

    invoke-virtual {v2, v14, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    goto :goto_5

    .line 1708
    .end local v8           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v10           #barSize:I
    .end local v11           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v12           #btnIndexTable:[I
    .end local v14           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v15           #i:I
    .end local v16           #indexTable:[[I
    .end local v19           #size:I
    .end local v21           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_a
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v18

    check-cast v18, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1717
    .local v18, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "flag_genuine"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v2, v4, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "my_live_album"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v2, v4, :cond_b

    .line 1720
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1723
    :cond_b
    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    const v7, 0x7f0a011b

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v13

    check-cast v13, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1724
    .local v13, commentBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a011b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1725
    .local v20, strComment:Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 1727
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    const/4 v4, 0x1

    if-lt v2, v4, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1728
    :cond_c
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 1731
    :cond_d
    const/4 v2, 0x0

    const/16 v4, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v17

    check-cast v17, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1732
    .local v17, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v17, :cond_0

    .line 1733
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    goto/16 :goto_0

    .line 1672
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, albumSnManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v0

    .line 258
    :cond_0
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    .line 261
    .local v1, bIsAccountActive:Z
    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBackPressed()Z

    .line 266
    .end local v1           #bIsAccountActive:Z
    :cond_1
    return-void
.end method

.method public onScrollStateChange(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2418
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2419
    .local v4, scrollState:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2420
    .local v2, nIndex:I
    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    if-ne v5, v2, :cond_1

    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    if-ne v5, v4, :cond_1

    .line 2459
    :cond_0
    :goto_0
    return-void

    .line 2422
    :cond_1
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 2423
    .local v3, prevIndex:I
    iput v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    .line 2425
    if-nez v4, :cond_5

    .line 2427
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 2429
    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 2430
    invoke-direct {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    .line 2432
    if-eq v3, v2, :cond_2

    .line 2434
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2435
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "index_id"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2436
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v6, 0x4e35

    invoke-virtual {v5, v6, v1, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 2441
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    if-eq v4, v9, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    if-ne v4, v8, :cond_4

    :cond_3
    const/16 v0, 0x4f4e

    .line 2446
    .local v0, adapterScrollState:I
    :goto_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v2, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setScrollState(III)V

    .line 2447
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2441
    .end local v0           #adapterScrollState:I
    :cond_4
    const/16 v0, 0x4f4d

    goto :goto_1

    .line 2449
    :cond_5
    if-ne v9, v4, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v5

    if-ne v8, v5, :cond_6

    .line 2453
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->toggleControlBarsVisibility()V

    .line 2455
    :cond_6
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    .line 2456
    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 2457
    invoke-direct {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 581
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSendToBackground]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    .line 589
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 590
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    .line 493
    const-string v7, "SceneOnlinePhotoFullscreen"

    const-string v8, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSendToForeground]: "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 496
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setUIHandler(Landroid/os/Handler;)V

    .line 497
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v7, :cond_1

    .line 499
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v5

    .line 500
    .local v5, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v7, "service_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 502
    .local v4, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 505
    const-string v7, "user_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, pid:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v7, v0, v8, v3}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 508
    const-string v7, "SceneOnlinePhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create opensense data plugin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/16 v7, 0x1001

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 510
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v7, :cond_0

    .line 512
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v7}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onShowFooterBar()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->removeView(Landroid/view/View;)V

    .line 515
    :cond_0
    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.vmm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 516
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->disableListRecycle()V

    .line 521
    .end local v0           #dataplugin:Ljava/lang/String;
    .end local v3           #pid:Ljava/lang/String;
    .end local v4           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v5           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_1
    const/4 v8, 0x1

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v7, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v7

    if-ne v8, v7, :cond_2

    .line 523
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->notifyUpdateDataPlugin()V

    .line 526
    :cond_2
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v7, v7, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v7, :cond_3

    .line 528
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v8, "showTag"

    invoke-direct {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 529
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v8, "showCaption"

    invoke-direct {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    .line 532
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v8, 0x4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 533
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    if-nez v7, :cond_4

    .line 535
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const-string v8, "index_id"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setPhotoPosition(I)V

    .line 537
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 539
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    .line 541
    const/4 v7, 0x1

    const-string v8, "fullphoto_info_update"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v7, v8, :cond_5

    .line 543
    const-string v7, "fullphoto_info_update"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    const-string v7, "index_id"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 546
    .local v2, iOldIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 547
    .local v1, iNewIndex:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    if-ne v2, v1, :cond_5

    .line 549
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v6, updateBundle:Landroid/os/Bundle;
    const-string v7, "index_id"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v8, 0x4e35

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 556
    .end local v1           #iNewIndex:I
    .end local v2           #iOldIndex:I
    .end local v6           #updateBundle:Landroid/os/Bundle;
    :cond_5
    const/16 v7, 0x4e47

    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 557
    const/16 v7, 0x4e47

    const/4 v8, 0x0

    const/16 v9, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 558
    return-void

    .line 502
    .restart local v4       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v5       #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onStop()V

    .line 247
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissAllFragmentDialog()V

    .line 249
    :cond_0
    return-void
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 2405
    const/4 v1, 0x0

    .line 2406
    .local v1, nIndex:I
    const/4 v0, 0x0

    .line 2408
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #bundle:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 2409
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "index_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2410
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSyncPhotoDetail]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 2413
    invoke-direct {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    .line 2414
    return-void
.end method

.method public onSyncPhotoIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2515
    const/4 v1, 0x0

    .line 2517
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2519
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    move v2, v1

    .line 2538
    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .line 2521
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    const-string v3, "from_outside"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2523
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2525
    if-ne v1, v5, :cond_1

    .line 2526
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getFocusedItem()I

    move-result v1

    .line 2528
    :cond_1
    if-ne v1, v5, :cond_2

    .line 2529
    const/4 v1, 0x0

    .line 2536
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setPhotoPosition(I)V

    move v2, v1

    .line 2538
    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .line 2533
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public onToggleTag(Z)V
    .locals 4
    .parameter "bUpdateMode"

    .prologue
    const/4 v2, 0x1

    .line 2199
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2202
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v1, :cond_0

    .line 2205
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableTagsPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2208
    :cond_2
    if-ne v2, p1, :cond_3

    .line 2210
    const-string v3, "showTag"

    const-string v1, "showTag"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    .line 2213
    :cond_3
    const-string v1, "showTag"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2214
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(IZ)V

    .line 2216
    if-ne v2, p1, :cond_0

    .line 2218
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 2210
    .end local v0           #bEnable:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 355
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 357
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->release()V

    .line 358
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 360
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 361
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateCommentCount(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 2097
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    const/4 v0, 0x0

    .line 2101
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2109
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getCommentCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    .line 2110
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1582
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "SceneOnlinePhotoFullscreen"

    return-object v0
.end method

.method public showCommentBar(Z)V
    .locals 3
    .parameter "bIsShow"

    .prologue
    const/16 v1, 0x8

    .line 2463
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v0, :cond_0

    .line 2481
    :goto_0
    return-void

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2468
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0

    .line 2471
    :cond_1
    if-eqz p1, :cond_2

    .line 2473
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 2479
    :goto_1
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][showCommentBar]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2477
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_1
.end method
