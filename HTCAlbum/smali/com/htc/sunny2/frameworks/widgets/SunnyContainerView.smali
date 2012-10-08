.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.super Landroid/widget/RelativeLayout;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IContentHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityLifeCycle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayStyle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

.field protected mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

.field protected mForegroundAdapter:Ljava/lang/String;

.field protected mForegroundScene:Ljava/lang/String;

.field private mFragmentHost:Lcom/htc/app/mf/MfFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsInvalidateOptionsMenu:Z

.field private mIsInvalidateOptionsMenuUponBind:Z

.field protected mLifeCycle:I

.field protected mMediaState:I

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRoot:Landroid/view/ViewGroup;

.field protected mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

.field protected mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

.field protected mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

.field protected mScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 78
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 80
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 82
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 83
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 84
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 85
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 86
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 94
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 95
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 97
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 98
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 249
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 78
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 80
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 82
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 83
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 84
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 85
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 86
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 94
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 95
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 97
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 98
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 249
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 78
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 80
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 82
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 83
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 84
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 85
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 86
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 94
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 95
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 97
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 98
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 249
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V

    return-void
.end method

.method private doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V
    .locals 6
    .parameter "sceneCurrent"
    .parameter "sceneNext"
    .parameter "bundle"
    .parameter "isFoceClose"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    .line 719
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    new-instance v1, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V

    .line 720
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z

    .line 726
    if-nez p2, :cond_0

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 120
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][initialize]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 125
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 129
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 130
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 131
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 9
    .parameter "scene"

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 740
    .local v0, bResult:Z
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, szSceneId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, szAdapterId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 744
    .local v3, sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 745
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_2

    .line 747
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 749
    .restart local v3       #sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_0

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 745
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    :cond_1
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 756
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][isSceneAdapterShared]: shared adapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x1

    .line 762
    :cond_2
    return v0
.end method

.method private onFinish()V
    .locals 4

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 1678
    .local v1, mfFragment:Lcom/htc/app/mf/MfFragment;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 1679
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 1681
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 1682
    .local v2, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->enable2Pane()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1684
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    .line 1698
    .end local v2           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_0
    :goto_0
    return-void

    .line 1688
    .restart local v2       #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_1
    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1692
    .end local v2           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_2
    if-eqz v1, :cond_3

    .line 1694
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    goto :goto_0

    .line 1696
    :cond_3
    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private registerForContextMenu(Z)V
    .locals 2
    .parameter "bRegister"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-eqz p1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method private setRenderResume(Z)V
    .locals 1
    .parameter "isResume"

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1639
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onResume()V

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onPause()V

    goto :goto_0
.end method


# virtual methods
.method public activityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public activityLifeCycle()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    return v0
.end method

.method public activityReference()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public activityRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 1588
    const/4 v0, 0x0

    return v0
.end method

.method public enableSunnyEnvTouchEvent(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->enableSunnyEnvTouchEvent(Z)V

    goto :goto_0
.end method

.method public getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 5

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1052
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1066
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v2

    .line 1055
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 1057
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1058
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1055
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1061
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v2, v1

    .line 1066
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 1064
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getInitBackgroundCallback()Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1450
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 1070
    const/4 v1, 0x0

    .line 1072
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 1091
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v2

    .line 1075
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1077
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1078
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1075
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1081
    :cond_3
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v3, :cond_4

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v2, v1

    .line 1091
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 1088
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getSceneSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "rect"

    .prologue
    .line 1668
    const/4 v0, 0x0

    .line 1669
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 1673
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1672
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getEnvironmentSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1673
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public gotoPreviousScene()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 932
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: begin"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v3, :cond_0

    .line 935
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: missing scene factory..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 941
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: locked..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 951
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: cancelling..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    goto :goto_0

    .line 960
    :cond_2
    const/4 v1, 0x0

    .line 961
    .local v1, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v2, 0x0

    .line 963
    .local v2, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_3

    .line 965
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no current scene..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_3
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 973
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 974
    .local v0, nNextId:I
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .restart local v2       #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_5

    .line 976
    :cond_4
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no previous scene..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    goto/16 :goto_0

    .line 981
    :cond_5
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 987
    .end local v0           #nNextId:I
    :cond_6
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    goto/16 :goto_0
.end method

.method public gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 5
    .parameter "bundle"
    .parameter "szIdentity"
    .parameter "isForceClose"

    .prologue
    .line 997
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: begin"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v2, :cond_0

    .line 1000
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: missing scene factory skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: is foreground skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1010
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: something in progress skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_2
    const/4 v0, 0x0

    .line 1017
    .local v0, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v1, 0x0

    .line 1019
    .local v1, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1021
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: no existing scene "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1025
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    invoke-interface {v2, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1027
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoScene]: fail to produce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    .line 1032
    invoke-interface {v1, p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 1033
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 1034
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureEnterScene()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1036
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnterScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 1044
    :cond_6
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    .line 1045
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: end"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public invalidateOptionsMenuUponDataBind()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public isDisplayControlBusy()Z
    .locals 3

    .prologue
    .line 1135
    const/4 v0, 0x0

    .line 1137
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v2, :cond_0

    move v1, v0

    .line 1143
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1140
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1141
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1143
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isInvalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    return v0
.end method

.method public isInvalidateOptionsMenuUponDataBind()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    return v0
.end method

.method public isSceneChangeLocked()Z
    .locals 6

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v3, :cond_0

    move v1, v0

    .line 375
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 366
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeEnterLock()I

    move-result v2

    .line 367
    .local v2, nLock:I
    const/16 v3, 0x515

    if-eq v3, v2, :cond_1

    const/16 v3, 0x516

    if-ne v3, v2, :cond_2

    .line 371
    :cond_1
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][isSceneChangeLocked]: locked..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 375
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isSceneExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "szIdentity"

    .prologue
    .line 1095
    const/4 v0, 0x0

    .line 1097
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 1114
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1100
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v3, 0x0

    .line 1101
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 1103
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1104
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1101
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1107
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1109
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 1114
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public mfragmentReference()Lcom/htc/app/mf/MfFragment;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 487
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onActivityResult(IILandroid/content/Intent;)V

    .line 491
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 190
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 191
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][onAttachedToWindow]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 199
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: locked..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x1

    .line 414
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 416
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: remove all..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 418
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    .line 421
    :cond_1
    return v0

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: cancelling..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 404
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 406
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1594
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1603
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 1606
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1623
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaScanFinished]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1617
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaScanStarted]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1613
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 1478
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isScannerStart(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1480
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaScanStarted"

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1483
    .local v3, sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1486
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 1489
    .end local v3           #sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :cond_0
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isScannerFinish(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1491
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaScanFinished"

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1494
    .restart local v3       #sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1496
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1497
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 1502
    .end local v3           #sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1503
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v1, v0

    .line 1529
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_2
    return v1

    .line 1506
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_3
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1508
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaDisconnected"

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 1511
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1525
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 1526
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_5
    move v1, v0

    .line 1529
    .restart local v1       #bResult:I
    goto :goto_2

    .line 1513
    .end local v1           #bResult:I
    :cond_6
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1515
    iget v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    if-eqz v4, :cond_4

    .line 1517
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaConnected"

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 1520
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 211
    .local v2, sceneForeground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 233
    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 222
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 223
    .restart local v1       #sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 220
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_3
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableConfigurationChangedInBackground()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 477
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 479
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 482
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 598
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onCreate]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 600
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 601
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreate(Landroid/os/Bundle;)V

    .line 603
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 468
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 472
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1540
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 1545
    .end local v0           #dialog:Landroid/app/Dialog;
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 1543
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    move-object v1, v0

    .line 1545
    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1562
    const/4 v0, 0x0

    .line 1563
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1564
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1565
    invoke-interface {v1, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 1567
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 665
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: begin.."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 667
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 668
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 669
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroy()V

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    .line 676
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 679
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->destroy()V

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 684
    :cond_2
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 685
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 686
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 687
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 688
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 690
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 691
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 692
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v1, :cond_3

    .line 693
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    .line 694
    :cond_3
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 695
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-eqz v1, :cond_4

    .line 696
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onDestroy()V

    .line 697
    :cond_4
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 698
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: end"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 185
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1573
    const/4 v0, 0x0

    .line 1574
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1575
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1576
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 1578
    :cond_0
    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 269
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    move v1, v0

    .line 280
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 274
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 275
    .restart local v1       #bResult:I
    goto :goto_0

    .line 277
    .end local v1           #bResult:I
    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    move v1, v0

    .line 280
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNewIntent]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4
    .parameter "sceneCurrent"
    .parameter "sceneNext"

    .prologue
    .line 1207
    if-nez p2, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyAnimationBegin]:..."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 1213
    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v0

    .line 1214
    .local v0, isHostScene:Z
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][doSceneChange]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 1218
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    goto :goto_0
.end method

.method public onNotifyAnimationCancel()V
    .locals 2

    .prologue
    .line 1201
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationCancel]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    return-void
.end method

.method public onNotifyAnimationEnd()V
    .locals 2

    .prologue
    .line 1225
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationEnd]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public onNotifyAnimationReady()V
    .locals 2

    .prologue
    .line 1194
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationReady]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAnimationReady()V

    .line 1196
    return-void
.end method

.method public onNotifyErrorResult(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 1121
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 1123
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: exit 1"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    .line 1129
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: onReportSceneErrorCheck..."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;->onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 458
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 460
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 463
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 644
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    .line 646
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 647
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 648
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPause()V

    .line 650
    :cond_0
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 288
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "extras"

    .prologue
    .line 1551
    const/4 v0, 0x0

    .line 1552
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1553
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1554
    invoke-interface {v1, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    .line 1556
    :cond_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 431
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 452
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 438
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 439
    .restart local v1       #bResult:I
    goto :goto_0

    .line 441
    .end local v1           #bResult:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 442
    .restart local v1       #bResult:I
    goto :goto_0

    .line 444
    .end local v1           #bResult:I
    :cond_2
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 445
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnPrepareOptionsMenu()Z

    move-result v3

    if-nez v3, :cond_3

    .line 447
    new-instance v3, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_3
    iput-boolean v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 451
    iput-boolean v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    move v1, v0

    .line 452
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 619
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    .line 621
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 622
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 624
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setFocusable(Z)V

    .line 625
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->requestFocus()Z

    .line 627
    if-eqz v0, :cond_1

    .line 629
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onResume()V

    .line 631
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    .line 632
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 639
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 609
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onStart]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 611
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 612
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStart()V

    .line 614
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 655
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onStop]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 657
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 658
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStop()V

    .line 660
    :cond_0
    return-void
.end method

.method public postSceneSnapShot(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 1664
    :goto_0
    return-void

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getEnvironmentSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public registerBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->registerBroadcastReceiver()V

    .line 1461
    :cond_0
    return-void
.end method

.method public removeAllScene()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 766
    const/4 v0, 0x0

    .line 771
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 773
    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][removeAllScene]: something in progress..."

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v7, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 827
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 778
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v2, 0x0

    .line 779
    .local v2, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const/4 v3, 0x0

    .line 781
    .local v3, sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v5, 0x0

    .line 782
    .local v5, szSceneId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 786
    .local v4, szAdapterId:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, iteratorSceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 792
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 793
    .restart local v3       #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 808
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    .line 809
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    .line 817
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    .line 822
    :cond_2
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 823
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 825
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->set3DGlobalBackground(I)V

    move v0, v6

    .line 827
    goto :goto_0
.end method

.method public removeScene(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Z)V
    .locals 1
    .parameter "scene"
    .parameter "isForceClose"

    .prologue
    .line 834
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public removeScene(Ljava/lang/String;Z)V
    .locals 8
    .parameter "szIdentity"
    .parameter "isForceClose"

    .prologue
    const/4 v7, 0x0

    .line 843
    if-nez p1, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    const/4 v3, 0x0

    .line 847
    .local v3, szSceneIdentity:Ljava/lang/String;
    const/4 v2, 0x0

    .line 848
    .local v2, sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 849
    .local v1, sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 851
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 853
    .restart local v2       #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eq p1, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 856
    :cond_2
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    .line 862
    :cond_3
    if-eqz v2, :cond_0

    .line 868
    if-eqz p2, :cond_9

    .line 871
    const/16 v4, 0x8

    :try_start_0
    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 873
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 874
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v4

    if-nez v4, :cond_8

    .line 876
    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendToBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SunnyContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][removeScene]: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 902
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 903
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v4, :cond_5

    .line 904
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 905
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 907
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eq p1, v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 909
    :cond_6
    iput-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 910
    iput-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    goto/16 :goto_0

    .line 859
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 880
    :cond_8
    const/16 v4, 0x10

    :try_start_1
    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 882
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    .line 883
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v4

    if-nez v4, :cond_9

    .line 885
    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUnbindAdapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4

    .line 890
    :cond_9
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onLeaveScene()V

    .line 891
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v4

    if-nez v4, :cond_4

    .line 893
    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLeaveScene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 2
    .parameter "szIdentity"

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-eqz p1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 539
    .restart local v0       #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    :cond_0
    return-object v0
.end method

.method public set3DGlobalBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->set3DGlobalBackground(I)V

    .line 1635
    :cond_0
    return-void
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 145
    return-void
.end method

.method public setContentHost(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewRoot"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setContentHost]: set parent..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    :cond_0
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1
    .parameter "nLevel"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayLevel(I)V

    .line 1244
    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 1
    .parameter "nStyle"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayStyle(I)V

    .line 1238
    return-void
.end method

.method public setEnableInitBackground(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setEnableInitBackground(Z)V

    .line 1716
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 261
    return-void
.end method

.method public setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backgroundDrawable"

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    :cond_0
    return-void
.end method

.method public setInitBackgroundResource(I)V
    .locals 1
    .parameter "backgroundResid"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setInitBackgroundResource(I)V

    .line 1703
    :cond_0
    return-void
.end method

.method public setMfFragmentReference(Lcom/htc/app/mf/MfFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 150
    return-void
.end method

.method public setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 3
    .parameter "scene"
    .parameter "adapter"

    .prologue
    .line 546
    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity1..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 553
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity2..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    if-ne v0, v1, :cond_2

    .line 563
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: content already destroyed..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 571
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no scene change skip..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    const-string v0, "SunnyContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_4
    const-string v0, "SunnyContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto/16 :goto_0
.end method

.method public setPaneConfig(ZZ)V
    .locals 1
    .parameter "bEnable2Pane"
    .parameter "bIsPaneLeft"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setPaneConfig(ZZ)V

    .line 136
    return-void
.end method

.method public setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V
    .locals 0
    .parameter "sunnySceneFactory"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 180
    return-void
.end method

.method public setSceneSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V

    goto :goto_0
.end method

.method public setUseWinMgrDispMets(Z)V
    .locals 1
    .parameter "bUseWinMgrDispMets"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setUseWinMgrDispMets(Z)V

    .line 140
    return-void
.end method

.method public startScene(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "bundle"
    .parameter "szIdentity"

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 927
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][startScene]: end"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public sunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 507
    return-object p0
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->unregisterBroadcastReceiver()V

    .line 1468
    :cond_0
    return-void
.end method

.method public updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V
    .locals 5
    .parameter "depth"

    .prologue
    .line 1147
    const/4 v1, 0x0

    .line 1149
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 1151
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1152
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1149
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1158
    :cond_1
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    if-ne v2, p1, :cond_3

    .line 1160
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: INCREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/16 v2, -0x64

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1164
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->incrementDepth()V

    .line 1165
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyDepthIncremented()V

    .line 1167
    :cond_2
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: INCREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1170
    :cond_3
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    if-ne v2, p1, :cond_0

    .line 1172
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: DECREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1176
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->decrementDepth()V

    .line 1177
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyDepthDecremented()V

    .line 1179
    :cond_4
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: DECREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1183
    :cond_5
    return-void
.end method
