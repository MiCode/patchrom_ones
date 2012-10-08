.class public abstract Lcom/htc/album/AlbumMain/MfMainActivityBase;
.super Lcom/htc/app/mf/MfMainActivity;
.source "MfMainActivityBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;,
        Lcom/htc/album/AlbumMain/MfMainActivityBase$DMCInfoBroadcaseReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfMainActivityBase"


# instance fields
.field protected mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsDelayedCreate:Z

.field protected mProgressBarState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    .line 444
    new-instance v0, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    .line 498
    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 499
    return-void
.end method

.method private onDelayedCreate()V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    .line 221
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStartFragment()V

    .line 222
    const/16 v0, 0x1452

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 223
    return-void
.end method

.method private onDelayedResume()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onResumeFragment()V

    .line 227
    return-void
.end method


# virtual methods
.method public bridge synthetic actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public enable2Pane(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bPaneRight"

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    const-string v0, "MfMainActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MfMainActivityBase][enable2Pane]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->resetFullScreen()V

    .line 313
    if-nez p2, :cond_0

    .line 315
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-class v0, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-eqz p2, :cond_2

    .line 322
    sget v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    .line 324
    :cond_2
    sget v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreenPadding(IIII)V

    goto :goto_0
.end method

.method public enableAccessCamera(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 251
    return-void
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 262
    :cond_2
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-ne v3, v0, :cond_3

    if-nez p1, :cond_0

    .line 266
    :cond_3
    if-eqz p1, :cond_4

    .line 267
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    .line 270
    :goto_1
    if-eqz p1, :cond_5

    .line 271
    iput v3, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    goto :goto_1

    .line 273
    :cond_5
    iput v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 282
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public fullscreenMode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 351
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 405
    :goto_0
    return-object v1

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 396
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 398
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    .line 70
    .local v0, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    .line 71
    .local v1, fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_0

    .line 75
    check-cast v1, Lcom/htc/app/mf/MfFragment;

    .end local v1           #fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    .line 79
    check-cast v0, Lcom/htc/app/mf/MfFragment;

    .end local v0           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v0       #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    .restart local v1       #fragmentRight:Lcom/htc/app/mf/IMfFragment;
    :cond_2
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    .line 86
    check-cast v0, Lcom/htc/app/mf/MfFragment;

    .end local v0           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 10

    .prologue
    .line 93
    sget v8, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v8}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v3

    .line 94
    .local v3, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    sget v8, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v8}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v4

    .line 95
    .local v4, fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    .line 97
    .local v2, bIsLandscape:Z
    const/4 v1, 0x0

    .line 98
    .local v1, bIsHandleRight:Z
    const/4 v0, 0x0

    .line 101
    .local v0, bIsHandleLeft:Z
    const/4 v6, 0x0

    .line 103
    .local v6, isFromDMCLaunch:Z
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 104
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 109
    invoke-static {v5}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v6

    .line 113
    :cond_0
    instance-of v8, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v8, :cond_1

    move-object v7, v4

    .line 116
    check-cast v7, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 117
    .local v7, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v1

    .line 120
    .end local v7           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_1
    instance-of v8, v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v8, :cond_3

    .line 122
    if-eqz v1, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    move-object v7, v3

    .line 125
    check-cast v7, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 126
    .restart local v7       #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v0

    .line 131
    .end local v7           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 133
    if-eqz v2, :cond_5

    .line 135
    const-string v8, "MfMainActivityBase"

    const-string v9, "[HTCAlbum][MfMainActivityBase][onBackPressed]: finish..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    .line 146
    :cond_4
    :goto_0
    return-void

    .line 140
    :cond_5
    const-string v8, "MfMainActivityBase"

    const-string v9, "[HTCAlbum][MfMainActivityBase][onBackPressed]: onBackPressed..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, bResult:Z
    sget v3, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v2

    .line 545
    .local v2, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    if-nez v2, :cond_0

    move v1, v0

    .line 553
    .end local v0           #bResult:Z
    .end local v2           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    .local v1, bResult:I
    :goto_0
    return v1

    .line 548
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local v2       #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    instance-of v3, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    if-eqz v3, :cond_1

    .line 550
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    .end local v2           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 551
    const-string v3, "MfMainActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfMainActivityBase][onBroadcastReceiveDispatcher]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 553
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstance"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->requestWindowFeature(I)Z

    .line 153
    const/4 v0, -0x1

    .line 157
    .local v0, nMfSpec:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/htc/app/mf/MfMainActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 169
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {p0, v3}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 175
    :cond_0
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: startUpFragments..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget v1, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setEntryFragment(I)V

    .line 177
    sget v1, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setLand2PortShowedPane(I)V

    .line 178
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 179
    new-array v1, v4, [Ljava/lang/String;

    const-class v2, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 190
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startUpFragments()V

    .line 195
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: initActionBar..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 198
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 161
    :cond_1
    const/high16 v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 215
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 216
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onDestroy()V

    .line 217
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 477
    .end local v0           #bResult:Z
    :goto_0
    :pswitch_0
    return v0

    .line 467
    .restart local v0       #bResult:Z
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v1, :cond_0

    .line 468
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedCreate()V

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedResume()V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1450
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    :cond_0
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onResume()V

    .line 204
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v0, :cond_0

    .line 206
    const/16 v0, 0x1452

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const/16 v0, 0x1450

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public abstract onResumeFragment()V
.end method

.method public abstract onStartFragment()V
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    const-string v0, ""

    return-object v0
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 515
    :cond_0
    new-instance v1, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;Lcom/htc/album/AlbumMain/MfMainActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 519
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    .line 520
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 521
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    .line 523
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 525
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][registerBroadcastReceiver]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 454
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 536
    const-string v0, "MfMainActivityBase"

    const-string v1, "[HTCAlbum][MfMainActivityBase][unregisterBroadcastReceiver]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
