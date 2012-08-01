.class public Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;
.super Lcom/htc/album/TabPluginDevice/LocalDMCScene;
.source "LocalPhotoDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/LocalDMCScene",
        "<",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;",
        "Lcom/htc/album/TabPluginDevice/LocalDMCCollection;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_INDEX:Ljava/lang/String; = "image_index"

.field private static final IS_BURST_IMAGE:Ljava/lang/String; = "is_burst_image"

.field public static final LOG_TAG:Ljava/lang/String; = "LocalPhotoDMCScene"


# instance fields
.field private mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

.field private mForcePlay:Z

.field private mLastPlayIndex:I

.field private mSendToBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    .line 33
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->switchToBurstShot()V

    return-void
.end method

.method private onRemoveBurstShotButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->detach()V

    .line 258
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_0
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    .line 261
    return-void
.end method

.method private onRequestItemBurstState()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 208
    .local v1, nSelected:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 210
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 231
    return-void
.end method

.method private onSetupBurstShotButton()V
    .locals 4

    .prologue
    .line 234
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 235
    .local v1, root:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    if-nez v2, :cond_0

    .line 240
    new-instance v2, Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/album/modules/ui/widget/BurstShotButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    .line 241
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->attach(Landroid/view/ViewGroup;I)V

    .line 242
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_0
    return-void
.end method

.method private onShowContinuousShotIndicator(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setVisibility(I)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private onSyncItemBurstState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 266
    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 267
    .local v5, root:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 269
    .local v0, activity:Landroid/app/Activity;
    if-nez p1, :cond_1

    .line 287
    .end local v0           #activity:Landroid/app/Activity;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    :cond_1
    const-string v6, "image_index"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, nIndex:I
    const-string v6, "is_burst_image"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 275
    .local v1, bIsBurst:Z
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onSetupBurstShotButton()V

    .line 277
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 278
    .local v4, nSelected:I
    if-ne v3, v4, :cond_0

    .line 279
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onShowContinuousShotIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #bIsBurst:Z
    .end local v3           #nIndex:I
    .end local v4           #nSelected:I
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v2

    .line 285
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "LocalPhotoDMCScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LocalPhotoDMCScene][onSyncItemBurstState]: Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchToBurstShot()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 295
    iget-wide v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    long-to-int v3, v3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    .line 296
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 297
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 298
    .local v2, selection:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 300
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "key_burstshot_bucket_id"

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "from_gallery"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    const-string v3, "photoId"

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v3, "Render"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "LocalBurstShotDMCScene"

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->disconnectDLNAService()V

    .line 308
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 4
    .parameter "bundle"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/helper/CollectionMaker;->makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    .line 86
    .local v1, newCollection:Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
    new-instance v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v2
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    return-object v0
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    move-result-object v0

    .line 145
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 148
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "*/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "key_bucket_id"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "key_folder_name"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v2, "folder_type"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v2, "browse_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalDMCCollection;

    goto :goto_0
.end method

.method protected getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0
.end method

.method protected getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    return-object v0
.end method

.method public onLeaveScene()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRemoveBurstShotButton()V

    .line 74
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onLeaveScene()V

    .line 75
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    .line 196
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 190
    .restart local v0       #bResult:Z
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onSyncItemBurstState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x220180
        :pswitch_0
    .end packed-switch
.end method

.method public onRendererConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "renderer"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onRendererConnected(Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    if-eqz v0, :cond_0

    .line 320
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->setDataSource(I)V

    .line 321
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->playItemAt(I)V

    .line 322
    const-string v0, "LocalPhotoDMCScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GalleryDLNA][onRendererConnected] Force Play, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    .line 326
    return-void
.end method

.method protected onRequestDetails()V
    .locals 6

    .prologue
    .line 164
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 165
    .local v0, menuMgr:Lcom/htc/album/helper/MenuManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    .line 169
    return-void
.end method

.method protected onScrollStateScroll()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onScrollStateScroll()V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onShowContinuousShotIndicator(Z)V

    .line 292
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->disconnectDLNAService()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    .line 63
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideFullFilmView()V

    .line 65
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRemoveBurstShotButton()V

    .line 66
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 48
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    .line 51
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->connectDLNAService()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    .line 54
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRequestItemBurstState()V

    .line 55
    return-void
.end method

.method protected requestPlay()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->isSecureSendToForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRequestItemBurstState()V

    .line 182
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->requestPlay()V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "LocalPhotoDMCScene"

    return-object v0
.end method
