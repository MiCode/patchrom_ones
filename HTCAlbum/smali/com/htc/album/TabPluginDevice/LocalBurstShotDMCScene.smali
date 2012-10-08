.class public Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;
.super Lcom/htc/album/TabPluginDevice/LocalDMCScene;
.source "LocalBurstShotDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/LocalDMCScene",
        "<",
        "Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;",
        "Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalBurstShotDMCScene"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private launchCameraShots()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 153
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v2, "from_gallery"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "key_bucket_id"

    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "folder_type"

    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v2, "key_folder_name"

    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->getBurstCoverImage()Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 167
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_1

    .line 168
    const-string v2, "photoId"

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    :cond_1
    const-string v2, "itemIndex"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v3, 0x0

    const-string v4, "LocalPhotoDMCScene"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    .locals 5
    .parameter "bundle"

    .prologue
    .line 72
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 74
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v3, :cond_0

    .line 76
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    :goto_0
    invoke-static {v0, v1}, Lcom/htc/album/helper/CollectionMaker;->makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    .line 88
    .local v2, newCollection:Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
    new-instance v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v3

    .line 81
    .end local v2           #newCollection:Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    move-result-object v0

    return-object v0
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "Render"

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "key_bucket_id"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "key_folder_name"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "folder_type"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "browse_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method protected getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    goto :goto_0
.end method

.method protected bridge synthetic getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    move-result-object v0

    return-object v0
.end method

.method protected getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0
.end method

.method protected getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->launchCameraShots()V

    .line 149
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->launchCameraShots()V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onBindAdapter()V

    .line 176
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    .line 177
    .local v0, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v0, :cond_0

    .line 179
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 180
    const/16 v1, 0x139d

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
    .locals 0
    .parameter "caller"
    .parameter "pref"
    .parameter "fromGallery"

    .prologue
    .line 97
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->isSecureSendToBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 207
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 190
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 207
    .restart local v1       #bResult:I
    goto :goto_0

    .line 194
    .end local v1           #bResult:I
    :pswitch_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v2

    .line 195
    .local v2, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    .line 198
    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 200
    :cond_1
    const/4 v0, 0x1

    .line 202
    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x139d
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveData(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 104
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "LocalBurstShotDMCScene"

    return-object v0
.end method
