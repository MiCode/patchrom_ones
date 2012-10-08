.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MfFragmentMainMediaList.java"


# instance fields
.field private final DLNA_DMC_PHOTO:I

.field private final DLNA_DMC_VIDEO:I

.field private final DLNA_FULLSCREENVIEW:I

.field private final DLNA_GRIDVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private bUpdateDMR:Z

.field private mGotoScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    .line 16
    const-string v0, "MfFragmentMainMediaList"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->LOG_TAG:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_GRIDVIEW:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_FULLSCREENVIEW:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_DMC_PHOTO:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_DMC_VIDEO:I

    .line 22
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->bUpdateDMR:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    return-void
.end method

.method private launchDMC(I)Z
    .locals 8
    .parameter "sceneId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 240
    const/4 v6, 0x0

    .line 243
    .local v6, bRet:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, dmr:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMS(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, dms:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v3

    if-ne v4, v3, :cond_0

    .line 250
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 252
    const-string v3, ""

    const-string v4, "invalid"

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    const/4 v6, 0x1

    .line 254
    const-string v3, "MfFragmentMainMediaList"

    const-string v4, "[HTCAlbum][MfFragmentMainMediaList][launchDMC]: DMC Photo"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 268
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 270
    const-string v3, "android.intent.action.VIEW"

    throw v7

    .line 273
    :cond_1
    return v6

    .line 256
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 258
    const-string v3, ""

    const-string v4, "invalid"

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 259
    const/4 v6, 0x1

    .line 260
    const-string v3, "MfFragmentMainMediaList"

    const-string v4, "[HTCAlbum][MfFragmentMainMediaList][launchDMC]: DMC Video"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDMRSelected()V
    .locals 4

    .prologue
    .line 220
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->bUpdateDMR:Z

    if-nez v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->bUpdateDMR:Z

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 231
    const-string v3, "Render"

    throw v1

    move-result-object v2

    .line 234
    .local v2, selectDMR:Ljava/lang/String;
    throw p0

    move-result-object v0

    .line 235
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 285
    :cond_0
    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f03002c

    return v0
.end method

.method protected getIntentBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, bundleArg:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 170
    const/4 v3, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v3

    .line 172
    :cond_1
    const/4 v4, 0x0

    .line 173
    .local v4, intentArg:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 175
    .local v3, bundleIntent:Landroid/os/Bundle;
    const-string v5, "dlna_intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #intentArg:Landroid/content/Intent;
    check-cast v4, Landroid/content/Intent;

    .restart local v4       #intentArg:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 178
    const-string v5, "dlna_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 179
    .local v2, bundleDlna:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 182
    move-object v3, v2

    .line 183
    const-string v5, "browse_info"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 184
    .local v1, bundleBrowse:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 187
    move-object v3, v1

    goto :goto_0

    .line 194
    .end local v1           #bundleBrowse:Landroid/os/Bundle;
    :cond_2
    const-string v5, "browse_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 195
    .restart local v1       #bundleBrowse:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 198
    move-object v3, v1

    goto :goto_0

    .line 205
    .end local v1           #bundleBrowse:Landroid/os/Bundle;
    .end local v2           #bundleDlna:Landroid/os/Bundle;
    :cond_3
    const-string v5, "browse_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 206
    .restart local v2       #bundleDlna:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 209
    const-string v5, "DLNA_CONTENT"

    const-string v6, "DLNA_CONTENT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object v3, v2

    goto :goto_0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getSceneIdentity()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 114
    const/4 v3, 0x0

    .line 116
    .local v3, sceneId:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 117
    .local v1, bundleArg:Landroid/os/Bundle;
    if-nez v1, :cond_0

    move v4, v3

    .line 163
    .end local v3           #sceneId:I
    .local v4, sceneId:I
    :goto_0
    return v4

    .line 120
    .end local v4           #sceneId:I
    .restart local v3       #sceneId:I
    :cond_0
    const/4 v2, 0x0

    .line 121
    .local v2, intentArg:Landroid/content/Intent;
    const-string v5, "dlna_intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #intentArg:Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .restart local v2       #intentArg:Landroid/content/Intent;
    if-eqz v2, :cond_7

    .line 123
    const-string v5, "goto_scene"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    const-string v6, "SceneDlnaGridview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v4, v3

    .line 163
    .end local v3           #sceneId:I
    .restart local v4       #sceneId:I
    goto :goto_0

    .line 128
    .end local v4           #sceneId:I
    .restart local v3       #sceneId:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    const-string v6, "SceneDlnaFullscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    const/4 v3, 0x1

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    const/4 v3, 0x0

    .line 139
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->bUpdateDMR:Z

    goto :goto_1

    .line 141
    :cond_4
    const-string v5, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    const/4 v3, 0x1

    .line 144
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->bUpdateDMR:Z

    goto :goto_1

    .line 146
    :cond_5
    const-string v5, "com.htc.album.action.LAUNCH_PHOTO_DMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    const/4 v3, 0x2

    goto :goto_1

    .line 150
    :cond_6
    const-string v5, "com.htc.album.action.LAUNCH_DMC_VIDEO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    const/4 v3, 0x3

    goto :goto_1

    .line 159
    .end local v0           #action:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    .line 160
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->bUpdateDMR:Z

    goto :goto_1
.end method

.method public onBackPressedOverride()Z
    .locals 6

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, retval:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 303
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    .line 304
    .local v1, isLaunchFromDMC:Z
    if-eqz v1, :cond_1

    .line 311
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 312
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v3, :cond_0

    .line 313
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v2

    .line 322
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return v2

    .line 315
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    const-string v4, "MfFragmentMainMediaList"

    const-string v5, "getForegroundScene null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onBackPressedOverride()Z

    move-result v2

    goto :goto_0
.end method

.method public onCreateScene()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 63
    const-string v3, "MfFragmentMainMediaList"

    const-string v4, "[HTCAlbum][MfFragmentMainMediaList][onCreateScene]..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getSceneIdentity()I

    move-result v1

    .line 67
    .local v1, sceneId:I
    const-string v3, "MfFragmentMainMediaList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfFragmentMainMediaList][onCreateScene]sceneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->updateDMRSelected()V

    .line 71
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 73
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->launchDMC(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 97
    :goto_0
    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getIntentBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 89
    const/4 v2, 0x0

    goto :goto_0

    .line 92
    :cond_2
    if-ne v1, v2, :cond_3

    .line 93
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaFullscreen"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaGridview"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 27
    const-string v0, "MfFragmentMainMediaList"

    const-string v1, "[HTCAlbum][MfFragmentMainMediaList][onNewIntent]: re-CreateScene"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 35
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->onCreateScene()Z

    .line 36
    return-void
.end method

.method public paneRight()Z
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 292
    :cond_0
    return v0
.end method

.method protected requestTVDisplay()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 43
    const-string v1, "MfFragmentMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainMediaList][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneDlnaGridview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .line 57
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 49
    :cond_0
    const-string v1, "SceneDlnaFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 55
    :cond_1
    const-string v1, "MfFragmentMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainMediaList][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
