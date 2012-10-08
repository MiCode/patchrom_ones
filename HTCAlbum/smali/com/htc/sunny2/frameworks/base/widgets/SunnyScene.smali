.class public abstract Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.super Ljava/lang/Object;
.source "SunnyScene.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene",
        "<TADAPTER;>;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

.field private mActionBarGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

.field protected mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TADAPTER;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIsAdapterBound:Z

.field private mIsAnimationCreated:Z

.field private mIsAnimationEnded:Z

.field private mIsAnimationPlayed:Z

.field private mIsAnimationPrepared:Z

.field private mIsSceneAdapterUnbinded:Z

.field private mIsSceneEntered:Z

.field private mIsSceneLeft:Z

.field private mIsSceneSentToBackground:Z

.field private mIsSceneSentToForeground:Z

.field private mIsSecureOnPrepareOptionsMenu:Z

.field protected mMainView:Lcom/htc/sunny2/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field

.field protected mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

.field protected mSceneAnimationCust:Z

.field protected mSceneAnimationSupport:Z

.field protected mSceneBundle:Landroid/os/Bundle;

.field protected mSceneCancelled:Z

.field protected mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field protected mSceneDepth:I

.field private mSceneState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "SunnyScene"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    .line 55
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .line 56
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 57
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 60
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneCancelled:Z

    .line 61
    const/16 v0, -0x64

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    .line 270
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    .line 410
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    .line 546
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    .line 547
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    .line 548
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    .line 549
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    .line 577
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    .line 578
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    .line 579
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    .line 580
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    .line 581
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    .line 582
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    .line 583
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 675
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    .line 700
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    return-void
.end method

.method private resetSecureAnimationState()V
    .locals 1

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 569
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    .line 570
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    .line 571
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    .line 572
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    .line 573
    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 653
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 645
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public decrementDepth()V
    .locals 1

    .prologue
    .line 244
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 246
    return-void
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 649
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 690
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 427
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableConfigurationChangedInBackground()Z
    .locals 1

    .prologue
    .line 227
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 107
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 111
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableHostPadding()Z
    .locals 1

    .prologue
    .line 115
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimationDuration()I
    .locals 2

    .prologue
    .line 532
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->getAnimationDuration()I

    move-result v0

    .line 533
    .local v0, nDuration:I
    return v0
.end method

.method public final getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 249
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 494
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 283
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    return v0
.end method

.method public final getMainView()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method public getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method public incrementDepth()V
    .locals 1

    .prologue
    .line 239
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 241
    return-void
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final isSecureAnimationCreate()Z
    .locals 1

    .prologue
    .line 556
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    return v0
.end method

.method public final isSecureAnimationEnd()Z
    .locals 1

    .prologue
    .line 564
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    return v0
.end method

.method public final isSecureAnimationPlay()Z
    .locals 1

    .prologue
    .line 560
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    return v0
.end method

.method public final isSecureAnimationPrepare()Z
    .locals 1

    .prologue
    .line 552
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    return v0
.end method

.method public isSecureBindAdapter()Z
    .locals 1

    .prologue
    .line 595
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    return v0
.end method

.method public isSecureEnterScene()Z
    .locals 1

    .prologue
    .line 587
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    return v0
.end method

.method public isSecureLeaveScene()Z
    .locals 1

    .prologue
    .line 608
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    return v0
.end method

.method public isSecureOnPrepareOptionsMenu()Z
    .locals 1

    .prologue
    .line 413
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    return v0
.end method

.method public isSecureSendToBackground()Z
    .locals 1

    .prologue
    .line 604
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    return v0
.end method

.method public isSecureSendToForeground()Z
    .locals 1

    .prologue
    .line 591
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    return v0
.end method

.method public isSecureTo(I)Z
    .locals 2
    .parameter "nState"

    .prologue
    .line 612
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 614
    .local v0, bResult:Z
    sparse-switch p1, :sswitch_data_0

    .line 635
    const/4 v0, 0x1

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 618
    :sswitch_0
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 619
    const/4 v0, 0x1

    goto :goto_0

    .line 624
    :sswitch_1
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 625
    const/4 v0, 0x1

    goto :goto_0

    .line 630
    :sswitch_2
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 631
    const/4 v0, 0x1

    goto :goto_0

    .line 614
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public isSecureUnbindAdapter()Z
    .locals 1

    .prologue
    .line 600
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 670
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 699
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 694
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 236
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 537
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onAnimationEnd(I)V

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    .line 539
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 397
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 8

    .prologue
    .line 155
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableFullScreen()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 159
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/SView;->getPaddingLeft()I

    move-result v2

    .line 160
    .local v2, left:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/SView;->getPaddingTop()I

    move-result v5

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v6

    add-int v4, v5, v6

    .line 161
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/SView;->getPaddingRight()I

    move-result v3

    .line 162
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunny2/view/SView;->getPaddingBottom()I

    move-result v1

    .line 164
    .local v1, bottom:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v5, v2, v4, v3, v1}, Lcom/htc/sunny2/view/SView;->setPadding(IIII)V

    .line 167
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    .line 168
    iget v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 169
    const-string v5, "SunnyScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SunnyScene][onBindAdapter]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 431
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 435
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 447
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 441
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 453
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCancelNewAdapter()V
    .locals 1

    .prologue
    .line 463
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneCancelled:Z

    .line 464
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 466
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 224
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 232
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 387
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 199
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 517
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 518
    .local v0, animationBundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    .line 519
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 379
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 401
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 721
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateScene()Lcom/htc/sunny2/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVIEW;"
        }
    .end annotation
.end method

.method public abstract onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 219
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public abstract onDestroyScene()V
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 725
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 673
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 665
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 686
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateScene()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .line 124
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 125
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunny2/view/SView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    .line 135
    :goto_0
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    .line 136
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 137
    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onEnterScene]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 133
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onDestroyScene()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    .line 193
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 195
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 288
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 291
    .local v0, bResult:Z
    return v0
.end method

.method public onNotifyDepthDecremented()V
    .locals 2

    .prologue
    .line 261
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    if-ge v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 266
    :cond_0
    return-void
.end method

.method public onNotifyDepthIncremented()V
    .locals 2

    .prologue
    .line 253
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    if-lt v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 369
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 211
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 1
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 523
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    .line 525
    return-void
.end method

.method public onPostMessage(I)V
    .locals 2
    .parameter "nMessageID"

    .prologue
    .line 295
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 297
    return-void
.end method

.method public onPostMessage(II)V
    .locals 1
    .parameter "nMessageID"
    .parameter "delayMillis"

    .prologue
    .line 300
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 302
    return-void
.end method

.method public onPostMessage(IIILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 313
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, msg:Landroid/os/Message;
    if-lez p5, :cond_1

    .line 319
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    int-to-long v2, p5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 306
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 509
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 510
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onPrepareAnimation(I)Z

    move-result v0

    .line 511
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    .line 512
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    .line 513
    return v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "extras"

    .prologue
    .line 405
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v11, 0x0

    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isInvalidateOptionsMenuUponDataBind()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return v11

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableActionBarUpdate()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnableActionBarBackButton()Z

    move-result v5

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnableActionBarTouchEvent()Z

    move-result v6

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnableActionBarAppButton()Z

    move-result v7

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableFullScreen()Z

    move-result v8

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 327
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    .line 180
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 182
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    .line 183
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 185
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->resetSecureAnimationState()V

    .line 186
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 188
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    .line 142
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    .line 145
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 147
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->resetSecureAnimationState()V

    .line 149
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 150
    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onSendToForeground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 203
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onStartAnimation(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 529
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 215
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 0

    .prologue
    .line 499
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    .line 173
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    .line 174
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 175
    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onUnbindAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetOnPrepareOptionsMenu()V
    .locals 1

    .prologue
    .line 417
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    .line 418
    return-void
.end method

.method public final setAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 91
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 92
    return-void
.end method

.method public bridge synthetic setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    check-cast p1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 280
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "nId"

    .prologue
    .line 74
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    .line 75
    return-void
.end method

.method public final setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "sceneControl"

    .prologue
    .line 99
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 100
    return-void
.end method

.method public final setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    .local p1, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;,"TADAPTER;"
    const/4 v2, 0x0

    .line 471
    .local v2, szSecured:Ljava/lang/String;
    move-object v0, p1

    .line 472
    .local v0, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, szAdapterIdentity:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 475
    :cond_0
    const-string v2, "Error identifier(null): "

    .line 486
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 488
    return-object v2

    .line 477
    :cond_2
    if-nez p1, :cond_3

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adapter(null): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    check-cast p1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected workaroundBuildSDKDroiddocParseProblem()Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TADAPTER;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method
