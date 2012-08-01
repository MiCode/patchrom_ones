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

    .line 38
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    .line 438
    new-instance v0, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    .line 492
    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 493
    return-void
.end method

.method private onDelayedCreate()V
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    .line 215
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStartFragment()V

    .line 216
    const/16 v0, 0x1452

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 217
    return-void
.end method

.method private onDelayedResume()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onResumeFragment()V

    .line 221
    return-void
.end method


# virtual methods
.method public bridge synthetic actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public enable2Pane(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bPaneRight"

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
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

    .line 304
    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->resetFullScreen()V

    .line 307
    if-nez p2, :cond_0

    .line 309
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-class v0, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-eqz p2, :cond_2

    .line 316
    sget v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    .line 318
    :cond_2
    sget v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreenPadding(IIII)V

    goto :goto_0
.end method

.method public enableAccessCamera(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 245
    return-void
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-ne v3, v0, :cond_3

    if-nez p1, :cond_0

    .line 260
    :cond_3
    if-eqz p1, :cond_4

    .line 261
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    .line 264
    :goto_1
    if-eqz p1, :cond_5

    .line 265
    iput v3, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    goto :goto_1

    .line 267
    :cond_5
    iput v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 276
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    if-eqz p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0

    .line 239
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
    .line 345
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 399
    :goto_0
    return-object v1

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 390
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 392
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    .line 69
    .local v0, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    sget v2, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    .line 70
    .local v1, fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Lcom/htc/app/mf/MfFragment;

    .end local v1           #fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    .line 78
    check-cast v0, Lcom/htc/app/mf/MfFragment;

    .end local v0           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 83
    .restart local v0       #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    .restart local v1       #fragmentRight:Lcom/htc/app/mf/IMfFragment;
    :cond_2
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    .line 85
    check-cast v0, Lcom/htc/app/mf/MfFragment;

    .end local v0           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 10

    .prologue
    .line 92
    sget v8, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v8}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v3

    .line 93
    .local v3, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    sget v8, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v8}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v4

    .line 94
    .local v4, fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    .line 96
    .local v2, bIsLandscape:Z
    const/4 v1, 0x0

    .line 97
    .local v1, bIsHandleRight:Z
    const/4 v0, 0x0

    .line 100
    .local v0, bIsHandleLeft:Z
    const/4 v6, 0x0

    .line 102
    .local v6, isFromDMCLaunch:Z
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 103
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 108
    invoke-static {v5}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v6

    .line 112
    :cond_0
    instance-of v8, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v8, :cond_1

    move-object v7, v4

    .line 115
    check-cast v7, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 116
    .local v7, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v1

    .line 119
    .end local v7           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_1
    instance-of v8, v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v8, :cond_3

    .line 121
    if-eqz v1, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    move-object v7, v3

    .line 124
    check-cast v7, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 125
    .restart local v7       #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v0

    .line 130
    .end local v7           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 132
    if-eqz v2, :cond_5

    .line 134
    const-string v8, "MfMainActivityBase"

    const-string v9, "[HTCAlbum][MfMainActivityBase][onBackPressed]: finish..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    .line 145
    :cond_4
    :goto_0
    return-void

    .line 139
    :cond_5
    const-string v8, "MfMainActivityBase"

    const-string v9, "[HTCAlbum][MfMainActivityBase][onBackPressed]: onBackPressed..."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, bResult:Z
    sget v3, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v2

    .line 538
    .local v2, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    if-nez v2, :cond_0

    move v1, v0

    .line 546
    .end local v0           #bResult:Z
    .end local v2           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    .local v1, bResult:I
    :goto_0
    return v1

    .line 541
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local v2       #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    instance-of v3, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    if-eqz v3, :cond_1

    .line 543
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    .end local v2           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 544
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

    .line 546
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

    .line 149
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->requestWindowFeature(I)Z

    .line 152
    const/4 v0, -0x1

    .line 156
    .local v0, nMfSpec:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/htc/app/mf/MfMainActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 168
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {p0, v3}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 174
    :cond_0
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: startUpFragments..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget v1, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setEntryFragment(I)V

    .line 176
    sget v1, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setLand2PortShowedPane(I)V

    .line 177
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 178
    new-array v1, v4, [Ljava/lang/String;

    const-class v2, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 189
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startUpFragments()V

    .line 194
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: initActionBar..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 197
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 160
    :cond_1
    const/high16 v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 471
    .end local v0           #bResult:Z
    :goto_0
    :pswitch_0
    return v0

    .line 461
    .restart local v0       #bResult:Z
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v1, :cond_0

    .line 462
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedCreate()V

    goto :goto_0

    .line 466
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedResume()V

    goto :goto_0

    .line 458
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
    .line 476
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    :cond_0
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onResume()V

    .line 203
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v0, :cond_0

    .line 205
    const/16 v0, 0x1452

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 211
    :goto_0
    return-void

    .line 209
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
    .line 407
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const-string v0, ""

    return-object v0
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v1, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;Lcom/htc/album/AlbumMain/MfMainActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 513
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    .line 514
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 516
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][registerBroadcastReceiver]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 448
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    const-string v0, "MfMainActivityBase"

    const-string v1, "[HTCAlbum][MfMainActivityBase][unregisterBroadcastReceiver]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
