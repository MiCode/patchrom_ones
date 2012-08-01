.class Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;
.super Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 5205
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 5206
    invoke-direct/range {p0 .. p7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 5208
    return-void
.end method


# virtual methods
.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 5343
    const/4 v1, 0x0

    .line 5345
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 5348
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5353
    :cond_0
    :goto_0
    return-object v1

    .line 5350
    :catch_0
    move-exception v0

    .line 5351
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 5358
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 5211
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5212
    .local v1, mmr:Landroid/media/MediaMetadataRetriever;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 5230
    :goto_0
    return-object v3

    .line 5214
    :cond_0
    const/4 v3, 0x0

    .line 5215
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 5216
    .local v2, newUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v5

    if-nez v5, :cond_1

    .line 5217
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 5218
    :cond_1
    if-nez v2, :cond_2

    move-object v3, v4

    .line 5219
    goto :goto_0

    .line 5223
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 5224
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5228
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 5225
    :catch_0
    move-exception v0

    .line 5226
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[forceMakeThumbBitmap] Got exception during capture video frame, uri = ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5228
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public getBoundary()I
    .locals 3

    .prologue
    .line 5311
    const/4 v1, -0x1

    .line 5312
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5313
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 5319
    :goto_0
    return v2

    .line 5314
    :cond_0
    monitor-enter v0

    .line 5315
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5316
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexBoundary()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 5318
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 5319
    goto :goto_0

    .line 5318
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5299
    const/4 v1, 0x0

    .line 5300
    .local v1, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5301
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 5307
    :goto_0
    return-object v2

    .line 5302
    :cond_0
    monitor-enter v0

    .line 5303
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5304
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexContentId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5306
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 5307
    goto :goto_0

    .line 5306
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentOffset()I
    .locals 3

    .prologue
    .line 5269
    const/4 v1, -0x1

    .line 5270
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5271
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 5277
    :goto_0
    return v2

    .line 5272
    :cond_0
    monitor-enter v0

    .line 5273
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5274
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexContentOffset()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 5276
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 5277
    goto :goto_0

    .line 5276
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDateTaken()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 5326
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 5327
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 5337
    :goto_0
    return-wide v1

    .line 5330
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 5331
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5332
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_2

    move-wide v1, v2

    goto :goto_0

    .line 5333
    :cond_2
    monitor-enter v0

    .line 5334
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5335
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    .line 5336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5337
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    goto :goto_0

    .line 5336
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 5365
    const/4 v0, 0x3

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5372
    const/4 v0, 0x0

    .line 5373
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v1

    if-nez v1, :cond_0

    .line 5374
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 5376
    :cond_0
    if-eqz v0, :cond_1

    .line 5377
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5379
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrmType()I
    .locals 3

    .prologue
    .line 5257
    const/4 v1, -0x1

    .line 5258
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5259
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 5265
    :goto_0
    return v2

    .line 5260
    :cond_0
    monitor-enter v0

    .line 5261
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5262
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->indexDeliveryType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 5264
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 5265
    goto :goto_0

    .line 5264
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5281
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5282
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    .line 5294
    :goto_0
    return-object v1

    .line 5285
    :cond_0
    const/4 v1, 0x0

    .line 5286
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5287
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5288
    :cond_1
    monitor-enter v0

    .line 5289
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5290
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5292
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5293
    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    goto :goto_0

    .line 5292
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 5251
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 5246
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 5234
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/MediaUtils;->compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 5241
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
