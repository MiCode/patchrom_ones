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
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private launchCameraShots()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 150
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 169
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v2, "from_gallery"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v2, "key_bucket_id"

    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v2, "folder_type"

    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v2, "key_folder_name"

    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;->getBurstCoverImage()Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 164
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_1

    .line 165
    const-string v2, "photoId"

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    :cond_1
    const-string v2, "itemIndex"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
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
    .line 39
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
    .locals 5
    .parameter "bundle"

    .prologue
    .line 69
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 71
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v3, :cond_0

    .line 73
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    :goto_0
    invoke-static {v0, v1}, Lcom/htc/album/helper/CollectionMaker;->makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    .line 85
    .local v2, newCollection:Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
    new-instance v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v3

    .line 78
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
    .line 17
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    move-result-object v0

    return-object v0
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "Render"

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "key_bucket_id"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "key_folder_name"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "folder_type"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "browse_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    return-object v0
.end method

.method protected getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;
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

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    goto :goto_0
.end method

.method protected bridge synthetic getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalDMCCollection;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->getCollectionInfo()Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCCollection;

    move-result-object v0

    return-object v0
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

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

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

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->launchCameraShots()V

    .line 146
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCScene;->launchCameraShots()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
    .locals 0
    .parameter "caller"
    .parameter "pref"
    .parameter "fromGallery"

    .prologue
    .line 94
    return-void
.end method

.method protected onSaveData(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 101
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "LocalBurstShotDMCScene"

    return-object v0
.end method
