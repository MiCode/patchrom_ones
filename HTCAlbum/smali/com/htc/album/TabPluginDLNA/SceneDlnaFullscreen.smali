.class public Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.source "SceneDlnaFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen$DetailDlgParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase",
        "<",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_DLNA_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_DLNA_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneDlnaFullscreen"

.field static final SCENE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->SCENE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;-><init>()V

    .line 630
    return-void
.end method

.method private launchDMCforTVOut()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onDMRChanged(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "selectDMR"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchMediaServerPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/TabPluginDLNA/DLNAServerInfo;Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    goto :goto_0
.end method

.method private showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V
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
    .local p1, moreBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v2, 0x0

    .line 488
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[showMore]can\'t get context"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 496
    const/16 v0, 0xb

    const v1, 0x7f0a012b

    invoke-virtual {p1, v0, v2, v1}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 501
    const/16 v0, 0xf

    const v1, 0x7f0a00be

    invoke-virtual {p1, v0, v2, v1}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "AdapterDlnaFullscreen"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, szSubText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_0
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 63
    const-string v0, "SceneDlnaFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][notifyDataChangedAt]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange(I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enablePageProgressLoading(Z)V

    .line 66
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onBackPressed()Z

    .line 198
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const/16 v1, 0x1398

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 598
    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, selectDMR:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationEnd(I)V
    .locals 4
    .parameter "nAnimState"

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onAnimationEnd(I)V

    .line 315
    const-string v0, "SceneDlnaFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onAnimationEnd]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->setEnableControlBarAnimation(Z)V

    .line 323
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRemoveMessage(I)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBack()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 133
    :goto_0
    return v1

    .line 120
    :cond_0
    const-string v2, "SceneDlnaFullscreen"

    const-string v3, "mSceneControl is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    .line 126
    .local v0, bIsFullScreen:Z
    if-nez v0, :cond_2

    .line 127
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onDisableTransitionAnimation(Z)V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onLastViewItemUpdate()V

    .line 130
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "SceneDlnaGridview"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 131
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 104
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onBack()Z

    move-result v0

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 384
    const-string v2, "SceneDlnaFullscreen"

    const-string v3, "[HTCAlbum][SceneDlnaFullscreen][onBindAdapter]: ..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onBindAdapter()V

    .line 387
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "DLNA_CONTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, contentId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItemIndex(Ljava/lang/String;)I

    move-result v1

    .line 389
    .local v1, nIndex:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 391
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onBindAdapter]: nIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->sendIDLEScrollState(I)V

    .line 393
    return-void
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
    .line 462
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneDlnaFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onControlButtonClick]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 484
    :goto_0
    return-void

    .line 467
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onBack()Z

    goto :goto_0

    .line 471
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->showOutputChoice()V

    goto :goto_0

    .line 474
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRefresh()V

    goto :goto_0

    .line 477
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRequestDetails()V

    goto :goto_0

    .line 480
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_2
        0xb -> :sswitch_3
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_4
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 309
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 535
    const-string v3, "SceneDlnaFullscreen"

    const-string v4, "[HtcAlbum][SceneDlnaFullscreen][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 538
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 539
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 541
    const/4 v3, 0x6

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x204021a

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 543
    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 545
    .local v7, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 546
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 547
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 550
    :cond_0
    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 3

    .prologue
    .line 176
    const-string v1, "SceneDlnaFullscreen"

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onCreateScene]"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    .line 180
    .local v0, fullFilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 270
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 144
    if-eqz p1, :cond_1

    .line 146
    const-string v2, "directory_info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    .local v0, importInfo:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v2, :cond_0

    .line 150
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    .local v1, nIndexCurrentDirectory:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 161
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onEnterScene]: Directories: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onEnterScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v0           #importInfo:Ljava/util/ArrayList;
    .end local v1           #nIndexCurrentDirectory:I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->setEnableControlBarAnimation(Z)V

    .line 165
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->defaultControlBarOn()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 519
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 525
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onMessage(Landroid/os/Message;)Z

    .line 527
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 522
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onShowDetails(Landroid/os/Message;)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x4e94
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 77
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onNewAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 81
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 83
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onLoadData()V

    .line 86
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdateComplete]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onNotifyUpdateComplete()V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    :cond_0
    const-string v1, "SceneDlnaFullscreen"

    const-string v2, "[HtcAlbum][SceneDlnaPhotoFullScreen][onOptionsItemSelected]can\'t get context"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    .line 266
    :goto_0
    return v1

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, context:Landroid/content/Context;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 266
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 251
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRefresh()V

    goto :goto_1

    .line 254
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRequestDetails()V

    goto :goto_1

    .line 257
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->showOutputChoice()V

    goto :goto_1

    .line 260
    :sswitch_3
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_1

    .line 263
    :sswitch_4
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_1

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
        0x10 -> :sswitch_2
        0x7f0a0161 -> :sswitch_3
        0x7f0a0162 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 754
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPause()V

    .line 755
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 5
    .parameter "nAnimState"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 285
    .local v0, bResult:Z
    const/16 v2, 0x4e3c

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRemoveMessage(I)V

    .line 286
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onPrepareAnimation]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneDlnaGridview"

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    .line 289
    .local v1, isFromGridView:Z
    if-nez v1, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 293
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 301
    :goto_0
    return v0

    .line 297
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 202
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 203
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    const/16 v5, 0xb

    const v6, 0x7f0a012b

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 206
    const/4 v5, 0x6

    const v6, 0x204021a

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 208
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    .local v1, context:Landroid/content/Context;
    const/16 v5, 0x10

    const v6, 0x7f0a0112

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 210
    .local v2, itemOutput:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Output_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 211
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 212
    invoke-static {v1}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 236
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #itemOutput:Landroid/view/MenuItem;
    :cond_1
    :goto_0
    return v4

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    .restart local v1       #context:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 412
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshSinglePhoto(I)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onNotifyUpdating(Z)V

    .line 414
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enablePageProgressLoading(Z)V

    .line 416
    .end local v0           #nIndex:I
    :cond_0
    return-void
.end method

.method public onRequestDetails()V
    .locals 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 421
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/16 v2, 0x4e35

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onPostMessage(ILjava/lang/Object;I)V

    .line 422
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 748
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onResume()V

    .line 749
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 4
    .parameter "scrollState"

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onScrollStateChange(I)V

    .line 509
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 513
    .local v0, index:I
    const-string v1, "SceneDlnaFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaFullscreen][onScrollStateChanged]:nIndex :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 404
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onSendToBackground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 406
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 340
    const-string v3, "SceneDlnaFullscreen"

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 343
    const-string v3, "directory_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    .local v0, directoryInfo:Ljava/util/ArrayList;
    new-instance v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 347
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 348
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 352
    .local v2, nIndexCurrentDirectory:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 353
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 355
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "/"

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    .line 356
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 358
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    .line 358
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 364
    .end local v1           #i:I
    :cond_0
    const-string v3, "SceneDlnaFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: mediumID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "SceneDlnaFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: mediumName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "SceneDlnaFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: Directories: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3, v6, v6, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    .line 371
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    .line 374
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v3, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 377
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 378
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    sget v4, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->SCENE_ID:I

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 380
    :cond_2
    return-void
.end method

.method public onShowDetails(Landroid/os/Message;)V
    .locals 22
    .parameter "message"

    .prologue
    .line 425
    const-string v1, "SceneDlnaFullscreen"

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onShowDetails]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v21

    check-cast v21, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 428
    .local v21, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 429
    .local v20, itemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    if-nez v20, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, filePath:Ljava/lang/String;
    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v2, "remote"

    const-string v4, "image"

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_1
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_2
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string v8, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_3
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v9, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_4
    const-string v10, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v11, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v12, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v13, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v14, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getThumbnailUri()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    const-string v15, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_5
    const-string v16, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v17, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-static/range {v1 .. v17}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen$DetailDlgParams;->CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 453
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    .line 456
    .local v18, activity:Landroid/app/Activity;
    if-eqz v18, :cond_0

    .line 457
    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 434
    .end local v18           #activity:Landroid/app/Activity;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    goto :goto_4

    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getThumbnailUri()Ljava/lang/String;

    move-result-object v15

    goto :goto_5
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 47
    :cond_0
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onStart]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 55
    :cond_0
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onStop]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->launchDMCforTVOut()V

    .line 767
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 398
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onUnbindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onUnbindAdapter()V

    .line 400
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 401
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "SceneDlnaFullscreen"

    return-object v0
.end method

.method public showOutputChoice()V
    .locals 5

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1398

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 589
    :cond_0
    return-void
.end method
