.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;
.super Landroid/os/AsyncTask;
.source "SceneLocalPhotoBurstShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetBestWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

.field mBestIndex:I

.field mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

.field mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

.field mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;I)V
    .locals 0
    .parameter "adapter"
    .parameter "horizontalAdapter"
    .parameter "scene"
    .parameter "sceneControl"
    .parameter "index"

    .prologue
    .line 3266
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3267
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 3268
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    .line 3269
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 3270
    iput p5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mBestIndex:I

    .line 3271
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 3272
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 3277
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3278
    .local v0, delete:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mBestIndex:I

    invoke-virtual {v2, v3, v0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->setBestShot(IZ)V

    .line 3279
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3281
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3288
    .end local v0           #delete:Z
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    return-object v2

    .line 3284
    :catch_0
    move-exception v1

    .line 3285
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SetBestWorker] fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3257
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 3297
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3299
    .local v0, delete:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 3300
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x2728

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(I)V

    .line 3302
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3304
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x139e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 3309
    :goto_0
    return-void

    .line 3307
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3257
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x2724

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(II)V

    .line 3293
    return-void
.end method
