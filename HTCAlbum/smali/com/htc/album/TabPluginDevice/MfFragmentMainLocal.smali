.class public Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MfFragmentMainLocal.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;
    }
.end annotation


# static fields
.field private static final JUMP_ID_CONTINUOUSSHOTVIEW:I = 0x4

.field private static final JUMP_ID_FOLDERVIEW:I = 0x1

.field private static final JUMP_ID_FULLSCREENVIEW:I = 0x3

.field private static final JUMP_ID_THUMBNAILVIEW:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mGotoPause:Z

.field private mJumpToScene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    .line 52
    const-string v0, "MfFragmentMainLocal"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->LOG_TAG:Ljava/lang/String;

    .line 663
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method private onPrepareActionBar(Ljava/lang/String;Z)V
    .locals 8
    .parameter "szAction"
    .parameter "bForceFullscreen"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 547
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 548
    .local v1, bIsCamera:Z
    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 549
    .local v2, bIsCameraContinuous:Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 551
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 552
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 553
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v3, :cond_2

    .line 556
    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 557
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 592
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    :goto_0
    return-void

    .line 561
    .restart local v0       #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 566
    if-eqz v2, :cond_3

    .line 569
    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 576
    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0

    .line 574
    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    goto :goto_1

    .line 581
    :cond_4
    invoke-interface {v0, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 582
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 6
    .parameter "caller"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return v3

    .line 141
    :cond_0
    iput v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 151
    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    .line 152
    .local v1, isFromDMC:Z
    if-eqz v1, :cond_1

    .line 154
    const-string v5, "dmc_launched"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 155
    .local v2, isLaunched:Z
    if-eqz v2, :cond_5

    .line 156
    const/4 v1, 0x0

    .line 161
    .end local v2           #isLaunched:Z
    :cond_1
    :goto_1
    const-string v5, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    .line 168
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 178
    :cond_3
    :goto_2
    iget v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    if-eq v5, v4, :cond_4

    .line 179
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .end local v1           #isFromDMC:Z
    :cond_4
    move v3, v4

    .line 186
    goto :goto_0

    .line 158
    .restart local v1       #isFromDMC:Z
    .restart local v2       #isLaunched:Z
    :cond_5
    const-string v5, "dmc_launched"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 170
    .end local v2           #isLaunched:Z
    :cond_6
    const-string v5, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    const/4 v5, 0x4

    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    .line 173
    :cond_7
    const-string v5, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 175
    :cond_8
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 388
    const v0, 0x7f03002c

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 396
    .local v0, activity:Landroid/app/Activity;
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method public gotoErrorScene()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    const-string v2, "SceneLocalError"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public isInErrorScene()Z
    .locals 3

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalError"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    .line 610
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 282
    const-string v6, "MfFragmentMainLocal"

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] + "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sparse-switch p1, :sswitch_data_0

    .line 379
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    :cond_1
    :goto_1
    return-void

    .line 288
    :sswitch_0
    if-ne p2, v11, :cond_1

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setUseWinMgrDispMets(Z)V

    .line 292
    if-eqz p3, :cond_2

    .line 293
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_2
    invoke-direct {p0, v0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    .line 295
    const-string v6, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 300
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "MfFragmentMainLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v6, "MfFragmentMainLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] bucketid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "key_bucket_id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 305
    new-instance v5, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1002

    invoke-direct {v5, p0, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 306
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 308
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 309
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoBurstShot"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 313
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 315
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :goto_2
    const-string v6, "goFinish"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 334
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 336
    new-instance v5, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1001

    invoke-direct {v5, p0, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 337
    .restart local v5       #thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 339
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 341
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoFullscreen"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_4
    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 321
    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 325
    :cond_5
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 348
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v11, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 350
    .local v2, i:Landroid/content/Intent;
    const-string v6, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v6, "goFinish"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 354
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 356
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 358
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoFullscreen"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 364
    .end local v2           #i:Landroid/content/Intent;
    :sswitch_2
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v4

    .line 365
    .local v4, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v4, :cond_0

    .line 367
    const-string v6, "SceneLocalError"

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 369
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 370
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalFolder"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x1390 -> :sswitch_0
        0x139b -> :sswitch_1
        0x13a1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressedOverride()Z
    .locals 5

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 634
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, strAction:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 637
    const/4 v1, 0x0

    .line 639
    .local v1, isLaunchFromDMC:Z
    const-string v4, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 642
    :goto_0
    if-eqz v1, :cond_2

    .line 644
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v4, :cond_2

    .line 646
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 647
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v2, :cond_2

    .line 648
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v4

    .line 653
    .end local v1           #isLaunchFromDMC:Z
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_1
    return v4

    .line 639
    .restart local v1       #isLaunchFromDMC:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 653
    .end local v1           #isLaunchFromDMC:Z
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onBackPressedOverride()Z

    move-result v4

    goto :goto_1
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 194
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 207
    :goto_0
    return v2

    .line 204
    :cond_0
    const-string v0, "media_connected"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 211
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "media_connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 400
    const-string v2, "MfFragmentMainLocal"

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][onConfigurationChanged]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 402
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 407
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 409
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 410
    .local v1, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->paneRight()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 69
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateScene()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 220
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v1

    .line 222
    .local v1, bIsStorageReady:Z
    const-string v5, "MfFragmentMainLocal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onCreateScene]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez v1, :cond_1

    .line 230
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalError"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    .line 267
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v3, v5, v6

    .line 271
    .local v3, nTop:I
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v9, v3, v9, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    .line 276
    .end local v3           #nTop:I
    :cond_0
    return v10

    .line 234
    :cond_1
    iget v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    packed-switch v5, :pswitch_data_0

    .line 261
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalFolder"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 241
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    const/16 v5, 0x1003

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 242
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 244
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoFullscreen"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v0           #acitivity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #thread:Ljava/lang/Thread;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoThumbnail"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .restart local v0       #acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 253
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    const/16 v5, 0x1002

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 254
    .restart local v4       #thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 256
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoBurstShot"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 459
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 460
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 462
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 465
    check-cast v0, Landroid/os/Bundle;

    .line 467
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 470
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 472
    :cond_2
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_3
    const-string v4, "MfFragmentMainLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v4, "SceneLocalFolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 479
    if-nez v1, :cond_0

    .line 481
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 482
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalError"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_4
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    :cond_5
    if-nez v1, :cond_0

    .line 490
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 491
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalFolder"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 500
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 506
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onMessage(Landroid/os/Message;)Z

    .line 509
    :goto_0
    return v0

    .line 503
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onHandleSceneErrorReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x4ea3
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 83
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onNewIntent]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    .line 133
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onPause()V

    .line 134
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-nez v2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 535
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, szAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 541
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szSceneIdentity"
    .parameter "object"

    .prologue
    .line 515
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 516
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "scene_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "scene_error_report"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    :cond_0
    const/16 v1, 0x4ea3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPostMessage(ILjava/lang/Object;I)V

    .line 523
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 105
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    .line 107
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v2

    .line 110
    .local v2, fragment:Lcom/htc/app/mf/IMfFragment;
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 112
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->finishFragment(I)V

    .line 117
    .end local v2           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 119
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, action:Ljava/lang/String;
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setUseWinMgrDispMets(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #acitivity:Landroid/app/Activity;
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onResume()V

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onStart()V

    .line 101
    return-void
.end method

.method public onUpdateErrorScene()V
    .locals 2

    .prologue
    .line 618
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 619
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    instance-of v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    if-eqz v1, :cond_0

    .line 621
    check-cast v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onUpdateErrorView()V

    .line 623
    :cond_0
    return-void
.end method

.method protected requestTVDisplay()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneLocalFolder"

    if-eq v1, p1, :cond_0

    const-string v1, "SceneLocalFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 452
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 428
    :cond_1
    const-string v1, "SceneLocalPhotoThumbnail"

    if-eq v1, p1, :cond_2

    const-string v1, "SceneLocalPhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    :cond_2
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 433
    :cond_3
    const-string v1, "SceneLocalPhotoFullscreen"

    if-eq v1, p1, :cond_4

    const-string v1, "SceneLocalPhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    :cond_4
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 438
    :cond_5
    const-string v1, "SceneLocalPhotoBurstShot"

    if-eq v1, p1, :cond_6

    const-string v1, "SceneLocalPhotoBurstShot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 441
    :cond_6
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 443
    :cond_7
    const-string v1, "SceneLocalError"

    if-eq v1, p1, :cond_8

    const-string v1, "SceneLocalError"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 446
    :cond_8
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 450
    :cond_9
    const-string v1, "MfFragmentMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainLocal][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
