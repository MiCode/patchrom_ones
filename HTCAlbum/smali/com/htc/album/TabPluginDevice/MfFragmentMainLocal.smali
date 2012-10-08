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
    .line 52
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    .line 55
    const-string v0, "MfFragmentMainLocal"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->LOG_TAG:Ljava/lang/String;

    .line 667
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
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

    .line 551
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 552
    .local v1, bIsCamera:Z
    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 553
    .local v2, bIsCameraContinuous:Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 555
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 556
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 557
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v3, :cond_2

    .line 560
    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 561
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 596
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    :goto_0
    return-void

    .line 565
    .restart local v0       #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 570
    if-eqz v2, :cond_3

    .line 573
    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 580
    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0

    .line 578
    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    goto :goto_1

    .line 585
    :cond_4
    invoke-interface {v0, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 586
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

    .line 142
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return v3

    .line 144
    :cond_0
    iput v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 154
    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/ActivityPhotoDMC;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    .line 155
    .local v1, isFromDMC:Z
    if-eqz v1, :cond_1

    .line 157
    const-string v5, "dmc_launched"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    .local v2, isLaunched:Z
    if-eqz v2, :cond_5

    .line 159
    const/4 v1, 0x0

    .line 164
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

    .line 171
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 181
    :cond_3
    :goto_2
    iget v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    if-eq v5, v4, :cond_4

    .line 182
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .end local v1           #isFromDMC:Z
    :cond_4
    move v3, v4

    .line 189
    goto :goto_0

    .line 161
    .restart local v1       #isFromDMC:Z
    .restart local v2       #isLaunched:Z
    :cond_5
    const-string v5, "dmc_launched"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 173
    .end local v2           #isLaunched:Z
    :cond_6
    const-string v5, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 174
    const/4 v5, 0x4

    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    .line 176
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

    .line 178
    :cond_8
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 392
    const v0, 0x7f03002c

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 400
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
    .line 618
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    const-string v2, "SceneLocalError"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public isInErrorScene()Z
    .locals 3

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalError"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    .line 614
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

    .line 285
    const-string v6, "MfFragmentMainLocal"

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] + "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sparse-switch p1, :sswitch_data_0

    .line 383
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 291
    :sswitch_0
    if-ne p2, v11, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setUseWinMgrDispMets(Z)V

    .line 295
    if-eqz p3, :cond_1

    .line 296
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_1
    invoke-direct {p0, v0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    .line 298
    const-string v6, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 302
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 303
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

    .line 304
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

    .line 306
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 308
    new-instance v5, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1002

    invoke-direct {v5, p0, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 309
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 311
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 312
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoBurstShot"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 318
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    :goto_1
    const-string v6, "goFinish"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 337
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 339
    new-instance v5, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1001

    invoke-direct {v5, p0, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 340
    .restart local v5       #thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 342
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 344
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoFullscreen"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_3
    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 324
    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 328
    :cond_4
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 351
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v11, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 353
    .local v2, i:Landroid/content/Intent;
    const-string v6, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v6, "goFinish"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 357
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 359
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 361
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoFullscreen"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v2           #i:Landroid/content/Intent;
    :sswitch_2
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v4

    .line 368
    .local v4, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v4, :cond_0

    .line 370
    const-string v6, "SceneLocalError"

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 373
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalFolder"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 287
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
    .line 637
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 638
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, strAction:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 641
    const/4 v1, 0x0

    .line 643
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

    .line 646
    :goto_0
    if-eqz v1, :cond_2

    .line 648
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v4, :cond_2

    .line 650
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 651
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v2, :cond_2

    .line 652
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v4

    .line 657
    .end local v1           #isLaunchFromDMC:Z
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_1
    return v4

    .line 643
    .restart local v1       #isLaunchFromDMC:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 657
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

    .line 197
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 210
    :goto_0
    return v2

    .line 207
    :cond_0
    const-string v0, "media_connected"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 214
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "media_connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 404
    const-string v2, "MfFragmentMainLocal"

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][onConfigurationChanged]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 411
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 413
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 414
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
    .line 71
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 72
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateScene()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 223
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v1

    .line 225
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

    .line 231
    if-nez v1, :cond_1

    .line 233
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalError"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    .line 270
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v3, v5, v6

    .line 274
    .local v3, nTop:I
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v9, v3, v9, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    .line 279
    .end local v3           #nTop:I
    :cond_0
    return v10

    .line 237
    :cond_1
    iget v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    packed-switch v5, :pswitch_data_0

    .line 264
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalFolder"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 244
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    const/16 v5, 0x1003

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 245
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 247
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoFullscreen"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #acitivity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #thread:Ljava/lang/Thread;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoThumbnail"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 255
    .restart local v0       #acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 256
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    const/16 v5, 0x1002

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 257
    .restart local v4       #thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 259
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoBurstShot"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 237
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

    .line 463
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 464
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 466
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 469
    check-cast v0, Landroid/os/Bundle;

    .line 471
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 474
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 476
    :cond_2
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
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

    .line 481
    const-string v4, "SceneLocalFolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    if-nez v1, :cond_0

    .line 485
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 486
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalError"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_4
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    :cond_5
    if-nez v1, :cond_0

    .line 494
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 495
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalFolder"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 510
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onMessage(Landroid/os/Message;)Z

    .line 513
    :goto_0
    return v0

    .line 507
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onHandleSceneErrorReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x4ea3
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 86
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onNewIntent]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onNewIntent(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    .line 136
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onPause()V

    .line 137
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 3

    .prologue
    .line 533
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-nez v2, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, szAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 545
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szSceneIdentity"
    .parameter "object"

    .prologue
    .line 519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "scene_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "scene_error_report"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    :cond_0
    const/16 v1, 0x4ea3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPostMessage(ILjava/lang/Object;I)V

    .line 527
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    .line 110
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v2

    .line 113
    .local v2, fragment:Lcom/htc/app/mf/IMfFragment;
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/htc/app/mf/MfMainActivity;->finishFragment(I)V

    .line 120
    .end local v2           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 122
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, action:Ljava/lang/String;
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setUseWinMgrDispMets(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #acitivity:Landroid/app/Activity;
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onResume()V

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onStart()V

    .line 104
    return-void
.end method

.method public onUpdateErrorScene()V
    .locals 2

    .prologue
    .line 622
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 623
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    instance-of v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    if-eqz v1, :cond_0

    .line 625
    check-cast v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onUpdateErrorView()V

    .line 627
    :cond_0
    return-void
.end method

.method protected requestTVDisplay()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneLocalFolder"

    if-eq v1, p1, :cond_0

    const-string v1, "SceneLocalFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 456
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 432
    :cond_1
    const-string v1, "SceneLocalPhotoThumbnail"

    if-eq v1, p1, :cond_2

    const-string v1, "SceneLocalPhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    :cond_2
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 437
    :cond_3
    const-string v1, "SceneLocalPhotoFullscreen"

    if-eq v1, p1, :cond_4

    const-string v1, "SceneLocalPhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 440
    :cond_4
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 442
    :cond_5
    const-string v1, "SceneLocalPhotoBurstShot"

    if-eq v1, p1, :cond_6

    const-string v1, "SceneLocalPhotoBurstShot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 445
    :cond_6
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 447
    :cond_7
    const-string v1, "SceneLocalError"

    if-eq v1, p1, :cond_8

    const-string v1, "SceneLocalError"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 450
    :cond_8
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 454
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
