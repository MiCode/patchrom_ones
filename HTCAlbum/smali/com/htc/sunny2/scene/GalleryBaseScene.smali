.class public abstract Lcom/htc/sunny2/scene/GalleryBaseScene;
.super Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.source "GalleryBaseScene.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLoadingControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene",
        "<TVIEW;TADAPTER;>;",
        "Lcom/htc/album/modules/ui/IControlBarHost;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLoadingControl;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneScreenCacheHost;"
    }
.end annotation


# static fields
.field protected static final FOOTER_BAR:I = 0x2

.field protected static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GalleryBaseScene"

.field public static final TIMER_AUTOHIDE:I = 0x1388


# instance fields
.field protected final TIMER_AUTOSHOW:I

.field protected mAnimState:I

.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field protected mEntryOrientation:I

.field protected mIsBound:Z

.field protected mItemSelected:I

.field protected mLayoutPageView:Landroid/widget/RelativeLayout;

.field protected mOldOrientation:I

.field protected mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

.field protected mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field protected mTVOutIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;-><init>()V

    .line 72
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->TIMER_AUTOSHOW:I

    .line 75
    iput-boolean v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 78
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 79
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 80
    iput v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    .line 81
    iput v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    .line 83
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    .line 85
    iput v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mEntryOrientation:I

    .line 88
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 89
    iput v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 985
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method private configLayoutMainView(Landroid/content/res/Configuration;)Z
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 808
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 810
    .local v0, bResult:Z
    iget v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    move v1, v0

    .line 822
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 813
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][configLayoutMainView]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 816
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 817
    .local v2, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v2, :cond_1

    .line 818
    invoke-virtual {v2, p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 820
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    .line 821
    const/4 v0, 0x1

    move v1, v0

    .line 822
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private onHandleErrorReport()V
    .locals 4

    .prologue
    .line 875
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-boolean v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_2

    .line 877
    :cond_0
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: exit 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : skipped..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isSecureSendToBackground()Z

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 882
    :cond_3
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: exit 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : skipped..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :cond_4
    const/4 v0, 0x0

    .line 886
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_5

    .line 887
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v0

    .line 889
    :cond_5
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyErrorResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onPrepareScreenControl()V
    .locals 2

    .prologue
    .line 580
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-nez v0, :cond_2

    .line 585
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseInScreenControl(I)V

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 587
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-ne v0, v1, :cond_1

    .line 591
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseOutScreenControl(I)V

    goto :goto_0
.end method

.method private onSynchronizeScreenRotate()V
    .locals 4

    .prologue
    .line 511
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 514
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mEntryOrientation:I

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    .line 517
    invoke-direct {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z

    .line 518
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 519
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v1

    .line 522
    .local v1, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v1, :cond_0

    .line 523
    invoke-interface {v1, v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 526
    .end local v1           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final createControlBar(II)V
    .locals 1
    .parameter "style"
    .parameter "id"

    .prologue
    .line 668
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 669
    return-void
.end method

.method protected final createControlBars(II)V
    .locals 1
    .parameter "headerId"
    .parameter "footerId"

    .prologue
    .line 673
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 674
    return-void
.end method

.method protected final createFooterBar(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 663
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 664
    return-void
.end method

.method protected final createHeaderBar(IZ)V
    .locals 0
    .parameter "id"
    .parameter "visible"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 659
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 731
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1057
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 989
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 647
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1

    .prologue
    .line 693
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 698
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 2

    .prologue
    .line 605
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 607
    .local v0, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 610
    :cond_0
    return-object v0
.end method

.method protected getPageLoadingLayout()I
    .locals 1

    .prologue
    .line 1237
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const v0, 0x7f030032

    return v0
.end method

.method public getPageLoadingPadding()I
    .locals 2

    .prologue
    .line 1139
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 1140
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    const/4 v1, 0x0

    .line 1143
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final hideControlBars()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 709
    :cond_0
    return-void
.end method

.method protected final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 712
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 713
    :cond_0
    return-void
.end method

.method protected final hideFooterControlBar()V
    .locals 2

    .prologue
    .line 716
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][hideFooterControlBar]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideFooterControlBar(Landroid/view/animation/Animation;)V

    .line 718
    :cond_0
    return-void
.end method

.method protected final invalidateControlBars()V
    .locals 1

    .prologue
    .line 703
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 704
    :cond_0
    return-void
.end method

.method protected final isControlBarShowing()Z
    .locals 1

    .prologue
    .line 726
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected isDisableTransitionAnimation()Z
    .locals 6

    .prologue
    .line 1156
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 1157
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    move v1, v0

    .line 1164
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1160
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1161
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "disable_animation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1163
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][isDisableTransitionAnimation]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 1164
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 850
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/ISViewDataChangeHandler;->notifyMediaDataChange(I)V

    .line 852
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 834
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    invoke-interface {v0}, Lcom/htc/sunny2/view/ISViewDataChangeHandler;->notifyMediaDataChange()V

    .line 837
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][notifyDataSetChanged]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerErrorReport()V

    .line 841
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 484
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onAnimationEnd(I)V

    .line 489
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v0

    .line 499
    .local v0, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v0, :cond_1

    .line 500
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onPrepareCache(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V

    .line 504
    .end local v0           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableFullScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setTopMargin(Landroid/app/Activity;I)V

    .line 508
    :cond_2
    return-void
.end method

.method public onBindAdapter()V
    .locals 7

    .prologue
    .line 219
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onBindAdapter()V

    .line 224
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 229
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 230
    .local v1, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v4, v4, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    if-eqz v4, :cond_2

    .line 239
    const-string v4, "GalleryBaseScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GalleryBaseScene][onBindAdapter]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v4, :cond_2

    .line 243
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    .line 244
    .local v0, cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    const/4 v3, 0x0

    .line 245
    .local v3, scrollHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v3

    .line 249
    :cond_1
    if-eqz v3, :cond_2

    .line 250
    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->scrollListener()Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 254
    .end local v0           #cacheHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    .end local v3           #scrollHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 255
    return-void

    .line 232
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "GalleryBaseScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GalleryBaseScene][onBindAdapter]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 761
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 751
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 825
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 793
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 794
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onConfigurationChanged]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z

    .line 797
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 798
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v0

    .line 801
    .local v0, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v0, :cond_0

    .line 802
    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 804
    .end local v0           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :cond_0
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 433
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onCreateAnimation]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 437
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLastViewItemSync()V

    .line 442
    :cond_1
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 638
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    .locals 1

    .prologue
    .line 1247
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    return-object v0
.end method

.method public onCreateTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
    .locals 1

    .prologue
    .line 1251
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    new-instance v0, Lcom/htc/album/addons/SceneTransitionCacheHandler;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneTransitionCacheHandler;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    return-object v0
.end method

.method public onDestroyAdapter()V
    .locals 4

    .prologue
    .line 151
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .line 152
    .local v1, leaveView:Lcom/htc/sunny2/view/SView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 153
    .local v0, leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->notifyDestroyingAdapter()V

    .line 154
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sunny2/scene/GalleryBaseScene$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene$1;-><init>(Lcom/htc/sunny2/scene/GalleryBaseScene;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method

.method public onDestroyScene()V
    .locals 0

    .prologue
    .line 315
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onDisableTransitionAnimation(Z)V
    .locals 2
    .parameter "bDisable"

    .prologue
    .line 1147
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1151
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "disable_animation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onEnablePageLoading(Z)V
    .locals 14
    .parameter "bEnable"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const v13, 0x7f090066

    const v12, 0x7f090012

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1061
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enablePageLoading()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 1067
    const/16 v7, 0x4e46

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 1069
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1070
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1075
    .local v6, viewRoot:Landroid/view/ViewGroup;
    if-ne v10, p1, :cond_2

    .line 1076
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1078
    :cond_2
    if-ne v10, p1, :cond_8

    .line 1080
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v7, :cond_3

    .line 1082
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1083
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingLayout()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 1085
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1086
    .local v5, textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1089
    .local v3, progressBar:Landroid/widget/ProgressBar;
    const/4 v4, 0x0

    .line 1090
    .local v4, szMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 1091
    :cond_4
    const v7, 0x7f0a0042

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1093
    :cond_5
    if-eqz v5, :cond_6

    .line 1094
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_6
    if-eqz v3, :cond_7

    .line 1096
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1098
    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1099
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingPadding()I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1101
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1102
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1106
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #progressBar:Landroid/widget/ProgressBar;
    .end local v4           #szMessage:Ljava/lang/String;
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_8
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 1108
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1109
    .restart local v5       #textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1111
    .restart local v3       #progressBar:Landroid/widget/ProgressBar;
    if-eqz v5, :cond_9

    .line 1113
    const-string v7, ""

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eq v7, v8, :cond_9

    .line 1115
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_9
    if-eqz v3, :cond_a

    .line 1120
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v7

    if-eq v11, v7, :cond_a

    .line 1122
    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1126
    :cond_a
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1128
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onEnableProgressLoading(Z)V
    .locals 9
    .parameter "bEnable"

    .prologue
    .line 993
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableProgressLoading()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 999
    const/16 v6, 0x4e46

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, activity:Landroid/app/Activity;
    const/4 v4, 0x0

    .line 1006
    .local v4, fragment:Lcom/htc/app/mf/MfFragment;
    const/4 v2, 0x0

    .line 1008
    .local v2, dialog:Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1013
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1015
    instance-of v6, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 1016
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    .line 1027
    :cond_2
    :goto_1
    const/4 v6, 0x1

    if-ne v6, p1, :cond_6

    .line 1029
    const/4 v5, 0x0

    .line 1030
    .local v5, szMessage:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getProgressLoadingText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 1031
    :cond_3
    const v6, 0x7f0a0042

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1033
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "loading_text"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    if-eqz v2, :cond_0

    .line 1037
    const/16 v6, 0x2724

    invoke-interface {v2, v6, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1045
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #szMessage:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1047
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "GalleryBaseScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][GalleryBaseScene][onEnableProgressLoading]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    instance-of v6, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v6, :cond_2

    move-object v2, v0

    .line 1021
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    goto :goto_1

    .line 1041
    :cond_6
    if-eqz v2, :cond_0

    .line 1042
    const/16 v6, 0x2724

    :try_start_1
    invoke-interface {v2, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onEnterFullscreenMode()V
    .locals 0

    .prologue
    .line 963
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 102
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 103
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 104
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 109
    :cond_0
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableRightFooter()Z

    move-result v5

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;Z)V

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 114
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setIdentifier(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestHeaderBar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->attachActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    .line 123
    .local v1, root:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 127
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attachHostBar(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V

    .line 132
    :cond_2
    return-void
.end method

.method protected onHandleActionBarBarLayoutChange()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    .line 1258
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1263
    .local v0, nOrientation:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableRightFooter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1267
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1269
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0

    .line 1274
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0

    .line 1280
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0
.end method

.method protected onLastViewItemReset()V
    .locals 3

    .prologue
    .line 1168
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1172
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "last_viewed_photo_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onLastViewItemSync()V
    .locals 7

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v6, -0x1

    .line 1193
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1197
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "last_viewed_photo_index"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1198
    .local v2, nPosition:I
    if-eq v6, v2, :cond_0

    .line 1201
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v5, v5, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v5, :cond_3

    .line 1203
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 1204
    .local v0, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 1205
    .local v3, nVisibleBegin:I
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v4

    .line 1206
    .local v4, nVisibleEnd:I
    if-gt v3, v2, :cond_2

    if-ge v4, v2, :cond_0

    .line 1207
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    goto :goto_0

    .line 1209
    .end local v0           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    .end local v3           #nVisibleBegin:I
    .end local v4           #nVisibleEnd:I
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v5, v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v5, :cond_0

    .line 1211
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onLastViewItemUpdate()V
    .locals 3

    .prologue
    .line 1177
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1181
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    .line 1182
    .local v1, nPosition:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v2, :cond_2

    .line 1183
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v1

    .line 1187
    :cond_1
    :goto_1
    const-string v2, "last_viewed_photo_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v2, :cond_1

    .line 1185
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    goto :goto_1
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 305
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 306
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onLeaveScene()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    .line 308
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 898
    const/4 v0, 0x0

    .line 900
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 926
    :cond_0
    :goto_0
    return v3

    .line 903
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 924
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 906
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleErrorReport()V

    goto :goto_0

    .line 909
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 912
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 915
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 918
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 921
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSynchronizeScreenRotate()V

    goto :goto_0

    .line 903
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x2728 -> :sswitch_2
        0x2730 -> :sswitch_3
        0x2731 -> :sswitch_4
        0x4e44 -> :sswitch_0
        0x4ea6 -> :sswitch_5
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 141
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 142
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 146
    :cond_0
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 2

    .prologue
    .line 1299
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1300
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    .line 1301
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 871
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 872
    :cond_0
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 0
    .parameter "bIsLoading"

    .prologue
    .line 861
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    if-nez p1, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerErrorReport()V

    .line 863
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 782
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPause()V

    .line 783
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v0

    .line 786
    .local v0, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v0, :cond_0

    .line 787
    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onPause()V

    .line 789
    .end local v0           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :cond_0
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 5
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v4, 0x1

    .line 533
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 535
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 536
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 538
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 540
    .local v2, switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    invoke-interface {v2, v4, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 557
    .end local v2           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->defaultControlBarOn()Z

    move-result v1

    .line 545
    .local v1, isShowDefault:Z
    if-ne v4, v1, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->showControlBars()V

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 563
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideFooterControlBar()V

    goto :goto_0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 447
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 449
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onPlayAnimation]: skip..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onPlayAnimation]: onPrepareScreenControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 10
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 320
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 321
    .local v0, bResult:Z
    const-string v4, "GalleryBaseScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]: begin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mEntryOrientation:I

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    .line 402
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 403
    .local v1, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-eq v9, v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-nez v4, :cond_2

    .line 419
    :cond_1
    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-eqz v4, :cond_6

    .line 421
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableFullScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 427
    :cond_2
    :goto_2
    const-string v4, "GalleryBaseScene"

    const-string v5, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]: end... "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return v0

    .line 329
    :pswitch_0
    if-ne v0, v9, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 332
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    if-eq v8, v4, :cond_0

    .line 334
    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    invoke-virtual {p0, v4, v7}, Lcom/htc/sunny2/scene/GalleryBaseScene;->updateSelectedState(IZ)V

    .line 335
    iput v8, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    goto :goto_0

    .line 341
    :pswitch_1
    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    if-eq v8, v4, :cond_0

    .line 343
    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    invoke-virtual {p0, v4, v7}, Lcom/htc/sunny2/scene/GalleryBaseScene;->updateSelectedState(IZ)V

    .line 344
    iput v8, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    goto :goto_0

    .line 353
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isDisableTransitionAnimation()Z

    move-result v4

    if-ne v9, v4, :cond_4

    .line 355
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_4

    .line 356
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 362
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v3

    .line 365
    .local v3, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v3, :cond_0

    .line 366
    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onReleaseCache()V

    goto :goto_0

    .line 373
    .end local v3           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isDisableTransitionAnimation()Z

    move-result v4

    if-ne v9, v4, :cond_5

    .line 375
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_5

    .line 376
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 382
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-eqz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v3

    .line 385
    .restart local v3       #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v3, :cond_0

    .line 386
    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onReleaseCache()V

    goto/16 :goto_0

    .line 405
    .end local v3           #handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    :catch_0
    move-exception v2

    .line 407
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "GalleryBaseScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 424
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestFooterBar()Z

    move-result v4

    if-nez v4, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    goto/16 :goto_2

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onPrepareEnterFullscreenMode()V
    .locals 4

    .prologue
    .line 937
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onPrepareEnterFullscreenMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 946
    .local v0, nStatusBarHeight:I
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setTopMargin(Landroid/app/Activity;I)V

    .line 947
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars()V

    goto :goto_0
.end method

.method public final onPrepareLeaveFullscreenMode()V
    .locals 3

    .prologue
    .line 951
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onPrepareLeaveFullscreenMode]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setTopMargin(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 644
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 619
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 767
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onResume()V

    .line 771
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 772
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "GalleryBaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get correct Configuration in onResume to config main view layout. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onScrollIdle()V
    .locals 2

    .prologue
    .line 966
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-nez v1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v0

    .line 970
    .local v0, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v0, :cond_0

    .line 971
    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onScrollIdle()V

    goto :goto_0
.end method

.method public final onScrolling()V
    .locals 2

    .prologue
    .line 975
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    if-nez v1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;->getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;

    move-result-object v0

    .line 979
    .local v0, handler:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
    if-eqz v0, :cond_0

    .line 980
    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;->onScrolling()V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 270
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 272
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->enableBroadcastNotify()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 275
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLastViewItemReset()V

    .line 278
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDisableTransitionAnimation(Z)V

    .line 285
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onSendToBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-ne v0, v1, :cond_2

    .line 289
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-nez v0, :cond_2

    .line 291
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onSendToBackground]: onPrepareScreenControl... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    .line 295
    :cond_2
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/16 v6, 0x4ea6

    const/4 v5, 0x1

    .line 181
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 182
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 183
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 192
    .local v1, viewRoot:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingLayout()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 193
    .local v0, viewPageLoad:Landroid/view/ViewGroup;
    if-nez v0, :cond_4

    .line 194
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 202
    :goto_0
    const-string v2, "GalleryBaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][GalleryBaseScene][onSendToForeground]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-eq v5, v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-nez v2, :cond_3

    .line 207
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-nez v2, :cond_3

    .line 209
    const-string v2, "GalleryBaseScene"

    const-string v3, "[HTCAlbum][GalleryBaseScene][onSendToForeground]: onPrepareScreenControl... "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    .line 213
    :cond_3
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 214
    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {p0, v6, v2, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 215
    return-void

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    goto :goto_0
.end method

.method public onStartAnimation(I)V
    .locals 4
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v3, 0x1

    .line 459
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 465
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-nez v0, :cond_2

    .line 467
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onStartAnimation]: skip..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onStartAnimation]: onPrepareScreenControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    .line 472
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-eq v3, v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAnimState:I

    if-nez v0, :cond_1

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenuUponDataBind()V

    goto :goto_0
.end method

.method public onTVReadyToPlay()V
    .locals 1

    .prologue
    .line 1294
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1295
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/16 v2, 0x4e44

    .line 932
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 933
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 934
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 258
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUnbindAdapter()V

    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 262
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 633
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 614
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 1289
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final setEnableControlBarAnimation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 654
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 655
    return-void
.end method

.method protected final setEnableInvalidateWhenShow(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 688
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableInvalidateWhenShow(Z)V

    .line 689
    :cond_0
    return-void
.end method

.method protected final showControlBars()V
    .locals 1

    .prologue
    .line 678
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    .line 679
    :cond_0
    return-void
.end method

.method protected final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 683
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 684
    :cond_0
    return-void
.end method

.method protected final toggleControlBarsVisibility()V
    .locals 1

    .prologue
    .line 721
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->toggleControlBarsVisibility()V

    .line 722
    :cond_0
    return-void
.end method

.method protected updateSelectedState(IZ)V
    .locals 6
    .parameter "nIndex"
    .parameter "bSelected"

    .prologue
    .line 1217
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 1218
    .local v1, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-nez v1, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][updateSelectedState]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/4 v2, 0x0

    .line 1226
    .local v2, mediaData:Lcom/htc/sunny2/IMediaData;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_1
    if-eqz v2, :cond_0

    .line 1232
    invoke-interface {v2, p2}, Lcom/htc/sunny2/IMediaData;->setSelected(Z)V

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v3

    goto :goto_1
.end method
