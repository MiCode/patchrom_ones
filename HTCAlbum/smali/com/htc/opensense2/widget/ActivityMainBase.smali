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

    .line 368
    new-instance v0, Lcom/htc/opensense2/widget/ActivityMainBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/ActivityMainBase$1;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    .line 545
    new-instance v0, Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;

    .line 546
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
    .line 604
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onProgressBackPressed()Z
    .locals 2

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableProgressInterrupt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const/4 v0, 0x1

    .line 575
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 576
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    .line 577
    :cond_1
    return v0

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 583
    const-string v1, "loading_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 586
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v1, :cond_3

    .line 590
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/ActivityMainBase$progressDialogListener;

    invoke-static {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 591
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    .line 598
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

    .line 599
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

    .line 600
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 601
    return-void

    .line 595
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setText(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 1
    .parameter "caller"

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public dismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 532
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 540
    :goto_0
    return v0

    .line 536
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->hideProgressDialog()V

    .line 537
    const/4 v0, 0x1

    goto :goto_0

    .line 532
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
    .line 176
    return-void
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 503
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
    .line 198
    return-void
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 209
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 187
    return-void
.end method

.method public fullscreenMode(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 232
    return-void
.end method

.method protected abstract getContentView()I
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract getLayoutHost()Landroid/view/ViewGroup;
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoErrorScene()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 472
    :goto_0
    return-object v1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 464
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 466
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public isInErrorScene()Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onActivityResult(IILandroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBackPressedOverride()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 335
    :cond_0
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    move-result v0

    .line 329
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

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->activityLifeCycle()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 112
    :cond_0
    iput-object p2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 137
    :cond_1
    :goto_0
    return v1

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 124
    .local v2, isHandled:Z
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    iget v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    if-eqz v3, :cond_1

    .line 133
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 342
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

    .line 241
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->requestWindowFeature(I)Z

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getContentView()I

    move-result v0

    .line 246
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

    .line 248
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->setContentView(I)V

    .line 250
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->finish()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 261
    new-instance v1, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 262
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayStyle(I)V

    .line 264
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayLevel(I)V

    .line 265
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getLayoutHost()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setContentHost(Landroid/view/ViewGroup;)V

    .line 266
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setActivityReference(Landroid/app/Activity;)V

    .line 267
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V

    .line 268
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setHandler(Landroid/os/Handler;)V

    .line 269
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreateScene()Z

    .line 270
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableBroadcastReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->registerBroadcastReceiver()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 339
    return-void
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableBroadcastReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->unregisterBroadcastReceiver()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDestroy()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 391
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMessage(Landroid/os/Message;)Z

    .line 396
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 304
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 307
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPause()V

    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    :cond_0
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onResume()V

    .line 291
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 298
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 285
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStart()V

    .line 286
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStop()V

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 314
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateErrorScene()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v1, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;Lcom/htc/opensense2/widget/ActivityMainBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    .line 149
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 150
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    .line 152
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 378
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 517
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 524
    :goto_0
    return v0

    .line 520
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->showProgressDialog(Landroid/os/Bundle;)V

    .line 521
    const/4 v0, 0x1

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
