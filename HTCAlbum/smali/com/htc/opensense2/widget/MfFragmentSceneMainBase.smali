.class public abstract Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.super Lcom/htc/app/mf/MfFragment;
.source "MfFragmentSceneMainBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

.field private mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field private mHandler:Landroid/os/Handler;

.field private mLastBroadcastIntent:Landroid/content/Intent;

.field private mMediaState:I

.field private mProgressDialogListener:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    .line 67
    const-string v0, "MfFragmentSunnyMainBase"

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->LOG_TAG:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    .line 71
    iput-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 72
    iput-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 368
    new-instance v0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;-><init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    .line 493
    new-instance v0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;-><init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onProgressBackPressed()Z

    move-result v0

    return v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onPrepareProgressDialog(Lcom/htc/app/HtcProgressDialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 262
    const-string v1, "loading_text"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 265
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_2
    invoke-virtual {p1, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method private onProgressBackPressed()Z
    .locals 2

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableProgressInterrupt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 523
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 524
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    .line 525
    :cond_1
    return v0

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 531
    const-string v1, "loading_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 534
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v1, :cond_3

    .line 538
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;

    invoke-static {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 539
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    .line 546
    :goto_0
    const-string v1, "MfFragmentSunnyMainBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][showProgressDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v1, "MfFragmentSunnyMainBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][showProgressDialog]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 549
    return-void

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setText(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 1
    .parameter "caller"

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public dismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 476
    :cond_0
    if-nez v0, :cond_1

    .line 478
    sparse-switch p1, :sswitch_data_0

    .line 488
    :cond_1
    :goto_0
    return v0

    .line 482
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->hideProgressDialog()V

    .line 483
    const/4 v0, 0x1

    goto :goto_0

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public enableAccessCamera(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 138
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, activity:Lcom/htc/app/mf/MfMainActivity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Lcom/htc/app/mf/MfMainActivity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0       #activity:Lcom/htc/app/mf/MfMainActivity;
    :cond_1
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Lcom/htc/app/mf/MfMainActivity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0
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
    .line 159
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 145
    return-void
.end method

.method public fullscreenMode(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    .line 198
    :goto_0
    return-void

    .line 196
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    invoke-static {v0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method protected abstract getContentView()I
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract getLayoutHost()Landroid/view/ViewGroup;
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoErrorScene()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public isInErrorScene()Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    .line 218
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 222
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayStyle(I)V

    .line 224
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayLevel(I)V

    .line 225
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getLayoutHost()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setContentHost(Landroid/view/ViewGroup;)V

    .line 226
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setActivityReference(Landroid/app/Activity;)V

    .line 227
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setMfFragmentReference(Lcom/htc/app/mf/MfFragment;)V

    .line 228
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V

    .line 229
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setHandler(Landroid/os/Handler;)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onCreateScene()Z

    .line 233
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    .line 234
    .local v1, mfActivity:Lcom/htc/app/mf/MfMainActivity;
    instance-of v4, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 236
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 237
    .local v2, paneHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enable2Pane()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->paneRight()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    .line 238
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enable2Pane()Z

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->paneRight()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPaneConfig(ZZ)V

    .line 241
    .end local v2           #paneHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableBroadcastReceiver()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    instance-of v4, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 245
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    .line 246
    .local v3, receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->registerBroadcastReceiver()V

    .line 249
    .end local v3           #receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onActivityResult(IILandroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    move-result v0

    .line 328
    return v0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableBroadcastReceiver()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: skip 1..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 130
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 99
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->activityLifeCycle()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 101
    :cond_1
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: skip 2..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-object p2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    move v1, v0

    .line 103
    .restart local v1       #bResult:I
    goto :goto_0

    .line 109
    .end local v1           #bResult:I
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 114
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: onBroadcastMediaDisconnected"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    .line 130
    .restart local v1       #bResult:I
    goto :goto_0

    .line 121
    .end local v1           #bResult:I
    :cond_4
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    if-eqz v2, :cond_3

    .line 125
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    .line 126
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: onBroadcastMediaConnected"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 333
    return-void
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getContentView()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 322
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroy()V

    .line 323
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableBroadcastReceiver()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 308
    .local v0, mfActivity:Lcom/htc/app/mf/MfMainActivity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 310
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    .line 311
    .local v1, receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->unregisterBroadcastReceiver()V

    .line 315
    .end local v0           #mfActivity:Lcom/htc/app/mf/MfMainActivity;
    .end local v1           #receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDestroy()V

    .line 316
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroyView()V

    .line 317
    return-void
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
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMessage(Landroid/os/Message;)Z

    .line 396
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 350
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPause()V

    .line 296
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onPause()V

    .line 297
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

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
    .line 202
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 344
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 345
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    .line 277
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onResume()V

    .line 278
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onStart()V

    .line 272
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStart()V

    .line 273
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStop()V

    .line 301
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onStop()V

    .line 302
    return-void
.end method

.method public onUpdateErrorScene()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 378
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 565
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 569
    new-instance v0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;-><init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 447
    :cond_0
    if-nez v0, :cond_1

    .line 449
    sparse-switch p1, :sswitch_data_0

    .line 468
    :cond_1
    :goto_0
    :sswitch_0
    return v0

    .line 452
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showProgressDialog(Landroid/os/Bundle;)V

    .line 453
    const/4 v0, 0x1

    .line 454
    goto :goto_0

    .line 456
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showDialogNoConnection()V

    .line 457
    const/4 v0, 0x1

    .line 458
    goto :goto_0

    .line 462
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showDialogErrorCommunication()V

    .line 463
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x272c -> :sswitch_2
        0x272d -> :sswitch_0
        0x272e -> :sswitch_3
    .end sparse-switch
.end method
