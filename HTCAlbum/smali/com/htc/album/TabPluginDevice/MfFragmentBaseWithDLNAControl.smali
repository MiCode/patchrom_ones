.class public Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;
.super Lcom/htc/app/mf/MfFragment;
.source "MfFragmentBaseWithDLNAControl.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Lcom/htc/app/mf/MfFragment;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;"
    }
.end annotation


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field private mEnableDLNAControl:Z

.field protected mLoadingText:Ljava/lang/String;

.field private mParentActivity:Landroid/app/Activity;

.field private mPassLaunchCheckInResume:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    .line 34
    const-string v0, "MfFragmentBaseWithDLNAControl"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mEnableDLNAControl:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    .line 39
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 40
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mLoadingText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 196
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 153
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected checkAndLaunchDMC(Ljava/lang/String;)V
    .locals 12
    .parameter "action"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v5, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 97
    const/4 v6, 0x0

    .line 98
    .local v6, dmcfiltercap:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0, v9}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, dmr:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMS(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, dms:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getFilterCap(Landroid/content/Context;Z)I

    move-result v6

    .line 103
    const/4 v7, 0x0

    .line 104
    .local v7, inBrowse:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "browse_mode"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 107
    :cond_0
    const-string v3, "com.htc.album.action.LAUNCH_DMC_PHOTO"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const/4 v6, 0x2

    .line 112
    :cond_1
    :goto_0
    const-string v3, "MfFragmentBaseWithDLNAControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentBaseWithDLNAControl][checkAndLaunchDMC]:inBrowse:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "MfFragmentBaseWithDLNAControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentBaseWithDLNAControl][checkAndLaunchDMC]:mPassLaunch:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "MfFragmentBaseWithDLNAControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentBaseWithDLNAControl][checkAndLaunchDMC]:dmcfiltercap:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    if-nez v3, :cond_3

    const-string v3, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v7, :cond_3

    if-eq v6, v11, :cond_2

    const/4 v3, 0x4

    if-ne v6, v3, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v3

    if-ne v9, v3, :cond_3

    .line 124
    const-string v3, "MfFragmentBaseWithDLNAControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filter cap: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-ne v6, v11, :cond_5

    .line 126
    const-string v3, ""

    const-string v4, "invalid"

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    :cond_3
    :goto_1
    iput-boolean v10, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    .line 132
    return-void

    .line 109
    :cond_4
    const-string v3, "com.htc.album.action.LAUNCH_DMC_VIDEO"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 128
    :cond_5
    const-string v3, ""

    const-string v4, "invalid"

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public dismissFragmentDialog(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 235
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    sparse-switch p1, :sswitch_data_0

    .line 242
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 239
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->hideProgressDialog()V

    goto :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 306
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 159
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 202
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected enableDLNAControl(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 92
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mEnableDLNAControl:Z

    .line 93
    return-void
.end method

.method protected hideProgressDialog()V
    .locals 1

    .prologue
    .line 286
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 190
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 78
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mEnableDLNAControl:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1398

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "DMR"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, dmr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    .line 88
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #dmr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 1

    .prologue
    .line 312
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 48
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 183
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    .line 135
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->enableActionBarUpdate()Z

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onEnableActionBarBackButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onEnableActionBarAppButton()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    .line 66
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mEnableDLNAControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->checkAndLaunchDMC(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 318
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 246
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method protected showDialogNoAuthorization()V
    .locals 0

    .prologue
    .line 251
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 254
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    new-instance v0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 214
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    sparse-switch p1, :sswitch_data_0

    .line 228
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 217
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showProgressDialog()V

    goto :goto_0

    .line 220
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogErrorCommunication()V

    goto :goto_0

    .line 223
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogNoConnection()V

    goto :goto_0

    .line 226
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogNoAuthorization()V

    goto :goto_0

    .line 214
    nop

    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_3
        0x2724 -> :sswitch_0
        0x272b -> :sswitch_1
        0x272c -> :sswitch_2
    .end sparse-switch
.end method

.method protected showProgressDialog()V
    .locals 3

    .prologue
    .line 278
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mLoadingText:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 281
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method
