.class public abstract Lcom/htc/opensense2/widget/ActivityMainBase;
.super Landroid/app/Activity;
.source "ActivityMainBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;,
        Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

.field private mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field private mHandler:Landroid/os/Handler;

.field private mLastBroadcastIntent:Landroid/content/Intent;

.field private mMediaState:I

.field private mProgressDialogListener:Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const-string v0, "ActivityMainBase"

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->LOG_TAG:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 73
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 74
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 76
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 77
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 376
    new-instance v0, Lcom/htc/opensense2/widget/ActivityMainBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/ActivityMainBase$1;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    .line 553
    new-instance v0, Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;

    .line 554
    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense2/widget/ActivityMainBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onProgressBackPressed()Z

    move-result v0

    return v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onProgressBackPressed()Z
    .locals 2

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableProgressInterrupt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 583
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 584
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    .line 585
    :cond_1
    return v0

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 591
    const-string v1, "loading_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 594
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v1, :cond_3

    .line 598
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;

    invoke-static {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 599
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    .line 606
    :goto_0
    const-string v1, "ActivityMainBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainBase][showProgressDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v1, "ActivityMainBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainBase][showProgressDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 609
    return-void

    .line 603
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setText(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 1
    .parameter "caller"

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public dismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 540
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 548
    :goto_0
    return v0

    .line 544
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->hideProgressDialog()V

    .line 545
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enableAccessCamera(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 184
    return-void
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 206
    return-void
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 217
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 195
    return-void
.end method

.method public fullscreenMode(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 240
    return-void
.end method

.method protected abstract getContentView()I
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract getLayoutHost()Landroid/view/ViewGroup;
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoErrorScene()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 480
    :goto_0
    return-object v1

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 472
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 474
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public isInErrorScene()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onActivityResult(IILandroid/content/Intent;)V

    .line 368
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBackPressedOverride()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 343
    :cond_0
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    move-result v0

    .line 337
    return v0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->activityLifeCycle()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 120
    :cond_0
    iput-object p2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 145
    :cond_1
    :goto_0
    return v1

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 132
    .local v2, isHandled:Z
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    if-eqz v3, :cond_1

    .line 141
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 249
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->requestWindowFeature(I)Z

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getContentView()I

    move-result v0

    .line 254
    .local v0, nContentView:I
    const-string v1, "ActivityMainBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainBase][onCreate]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->setContentView(I)V

    .line 258
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->finish()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 269
    new-instance v1, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 270
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayStyle(I)V

    .line 272
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayLevel(I)V

    .line 273
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getLayoutHost()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setContentHost(Landroid/view/ViewGroup;)V

    .line 274
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setActivityReference(Landroid/app/Activity;)V

    .line 275
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V

    .line 276
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setHandler(Landroid/os/Handler;)V

    .line 277
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreateScene()Z

    .line 278
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableBroadcastReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->registerBroadcastReceiver()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 347
    return-void
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableBroadcastReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->unregisterBroadcastReceiver()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDestroy()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 330
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 399
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMessage(Landroid/os/Message;)Z

    .line 404
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 312
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 315
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPause()V

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 412
    :cond_0
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onResume()V

    .line 299
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 302
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 306
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 293
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStart()V

    .line 294
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStop()V

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 322
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateErrorScene()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v1, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;Lcom/htc/opensense2/widget/ActivityMainBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    .line 157
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 158
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    .line 160
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 386
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 525
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    return v0

    .line 528
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->showProgressDialog(Landroid/os/Bundle;)V

    .line 529
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
