.class public Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;
.super Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.source "MediaServerDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
        "<",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MediaServerDMCScene"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private loadDirectoryInfo()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "directory_info"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 287
    .local v3, inStream:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 288
    .local v4, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 289
    .local v1, alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v4           #objInStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v2

    .line 294
    .local v2, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveDirectoryInfo(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "directory_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 271
    .local v3, outStream:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    .local v2, objOutStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 273
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #objOutStream:Ljava/io/ObjectOutputStream;
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 277
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "AdapterDlnaFullscreen"

    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 115
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    return-object v0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    move-result-object v0

    return-object v0
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "*/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, browseExtras:Landroid/os/Bundle;
    const-string v2, "server_id"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v4, "server_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "server_name"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v4, "server_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "directory_info"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v4, "directory_info"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    const-string v2, "browse_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    const-string v2, "browse_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    return-object v1
.end method

.method protected getFullFilmViewExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v0, inValue:Landroid/os/Bundle;
    const-string v1, "TEXTURE_MAX_COUNT"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 220
    .local v0, info:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-nez v0, :cond_0

    .line 221
    const-string v1, ""

    .line 223
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "com.htc.album.action.LAUNCH_MEDIASERVER_PHOTO_DMC"

    return-object v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    const/16 v2, 0x4f4f

    .line 125
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onBindAdapter()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->onRemoveMessage(I)V

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 129
    return-void
.end method

.method protected onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
    .locals 4
    .parameter "caller"
    .parameter "pref"
    .parameter "fromGallery"

    .prologue
    const/4 v3, 0x0

    .line 231
    if-nez p3, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "server_id"

    const-string v2, "server_id"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "server_name"

    const-string v2, "server_name"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "directory_info"

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->loadDirectoryInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected onPlayIndexChanged(J)V
    .locals 4
    .parameter "newIndex"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayIndexChanged(J)V

    .line 58
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x0

    long-to-int v2, p1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    .line 59
    return-void
.end method

.method protected onSaveData(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "editor"

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mFromGallery:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "server_id"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v2, "server_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v0, "server_name"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v2, "server_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "directory_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->saveDirectoryInfo(Ljava/util/ArrayList;)V

    .line 249
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 3
    .parameter "scrollState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onScrollStateChanged(I)V

    .line 207
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 212
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 182
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 170
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 171
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 172
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    sget v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->SCENE_ID:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 190
    :cond_0
    const-string v0, "MediaServerDMCScene"

    const-string v1, "[onStart]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 198
    :cond_0
    const-string v0, "MediaServerDMCScene"

    const-string v1, "[onStop]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method protected playItemAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 67
    .local v1, item:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v1, :cond_0

    .line 70
    iget-object v0, v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 71
    .local v0, contentID:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay(Ljava/lang/String;)V

    .line 73
    const-string v2, "MediaServerDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GalleryDLNA][playItemAt] selectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requestLaunchGallery()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "MediaServerDMCScene"

    return-object v0
.end method

.method protected setDataSource(I)V
    .locals 6
    .parameter "startIndex"

    .prologue
    .line 135
    new-instance v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 139
    .local v2, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, callerIntent:Landroid/content/Intent;
    const-string v3, "server_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 142
    const-string v3, "content_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 143
    const-string v3, "container"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 144
    const/4 v3, 0x2

    iput v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 145
    const-string v3, "interval"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 146
    const-string v3, "startIdx"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 147
    const-string v3, "endIdx"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 148
    const-string v3, "direction"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 150
    const-string v3, "MediaServerDMCScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GalleryDLNA][setDataSource]: ContentID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 159
    .end local v0           #callerIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MediaServerDMCScene"

    const-string v4, "[GalleryDLNA][setDataSource]: set data NG !"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
