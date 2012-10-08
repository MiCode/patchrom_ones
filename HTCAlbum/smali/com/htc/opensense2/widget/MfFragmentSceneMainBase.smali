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

    .line 376
    new-instance v0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;-><init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;-><init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;

    .line 502
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
    .line 560
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onPrepareProgressDialog(Lcom/htc/app/HtcProgressDialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 270
    const-string v1, "loading_text"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 273
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_2
    invoke-virtual {p1, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method private onProgressBackPressed()Z
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableProgressInterrupt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    const/4 v0, 0x1

    .line 531
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 532
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    .line 533
    :cond_1
    return v0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 539
    const-string v1, "loading_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 542
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v1, :cond_3

    .line 546
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mProgressDialogListener:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;

    invoke-static {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 547
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    .line 554
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

    .line 555
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

    .line 556
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 557
    return-void

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setText(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 1
    .parameter "caller"

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public dismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 484
    :cond_0
    if-nez v0, :cond_1

    .line 486
    sparse-switch p1, :sswitch_data_0

    .line 496
    :cond_1
    :goto_0
    return v0

    .line 490
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->hideProgressDialog()V

    .line 491
    const/4 v0, 0x1

    goto :goto_0

    .line 486
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public enableAccessCamera(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 150
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
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, activity:Lcom/htc/app/mf/MfMainActivity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Lcom/htc/app/mf/MfMainActivity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 162
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
    .line 167
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 153
    return-void
.end method

.method public fullscreenMode(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    .line 206
    :goto_0
    return-void

    .line 204
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
    .line 389
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract getLayoutHost()Landroid/view/ViewGroup;
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoErrorScene()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public isInErrorScene()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    .line 226
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 229
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 230
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayStyle(I)V

    .line 232
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayLevel(I)V

    .line 233
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getLayoutHost()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setContentHost(Landroid/view/ViewGroup;)V

    .line 234
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setActivityReference(Landroid/app/Activity;)V

    .line 235
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setMfFragmentReference(Lcom/htc/app/mf/MfFragment;)V

    .line 236
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V

    .line 237
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setHandler(Landroid/os/Handler;)V

    .line 238
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onCreateScene()Z

    .line 241
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    .line 242
    .local v1, mfActivity:Lcom/htc/app/mf/MfMainActivity;
    instance-of v4, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 244
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 245
    .local v2, paneHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enable2Pane()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->paneRight()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    .line 246
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enable2Pane()Z

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->paneRight()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPaneConfig(ZZ)V

    .line 249
    .end local v2           #paneHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableBroadcastReceiver()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    instance-of v4, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 253
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    .line 254
    .local v3, receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->registerBroadcastReceiver()V

    .line 257
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
    .line 367
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onActivityResult(IILandroid/content/Intent;)V

    .line 368
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    move-result v0

    .line 336
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

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableBroadcastReceiver()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: skip 1..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 138
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 107
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

    .line 109
    :cond_1
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: skip 2..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    move v1, v0

    .line 111
    .restart local v1       #bResult:I
    goto :goto_0

    .line 117
    .end local v1           #bResult:I
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 122
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: onBroadcastMediaDisconnected"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    .line 138
    .restart local v1       #bResult:I
    goto :goto_0

    .line 129
    .end local v1           #bResult:I
    :cond_4
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    if-eqz v2, :cond_3

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mMediaState:I

    .line 134
    const-string v2, "MfFragmentSunnyMainBase"

    const-string v3, "[HTCAlbum][MfFragmentSceneMainBase][onBroadcastReceive]: onBroadcastMediaConnected"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 341
    return-void
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 221
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getContentView()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 330
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroy()V

    .line 331
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->enableBroadcastReceiver()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 316
    .local v0, mfActivity:Lcom/htc/app/mf/MfMainActivity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 318
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    .line 319
    .local v1, receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->unregisterBroadcastReceiver()V

    .line 323
    .end local v0           #mfActivity:Lcom/htc/app/mf/MfMainActivity;
    .end local v1           #receiverHost:Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDestroy()V

    .line 324
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroyView()V

    .line 325
    return-void
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
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMessage(Landroid/os/Message;)Z

    .line 404
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 358
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPause()V

    .line 304
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onPause()V

    .line 305
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

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
    .line 210
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 352
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 353
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    .line 285
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 291
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 295
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 297
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onStart()V

    .line 280
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStart()V

    .line 281
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStop()V

    .line 309
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onStop()V

    .line 310
    return-void
.end method

.method public onUpdateErrorScene()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 386
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 573
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 577
    new-instance v0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;-><init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 455
    :cond_0
    if-nez v0, :cond_1

    .line 457
    sparse-switch p1, :sswitch_data_0

    .line 476
    :cond_1
    :goto_0
    :sswitch_0
    return v0

    .line 460
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showProgressDialog(Landroid/os/Bundle;)V

    .line 461
    const/4 v0, 0x1

    .line 462
    goto :goto_0

    .line 464
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showDialogNoConnection()V

    .line 465
    const/4 v0, 0x1

    .line 466
    goto :goto_0

    .line 470
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showDialogErrorCommunication()V

    .line 471
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x272c -> :sswitch_2
        0x272d -> :sswitch_0
        0x272e -> :sswitch_3
    .end sparse-switch
.end method
