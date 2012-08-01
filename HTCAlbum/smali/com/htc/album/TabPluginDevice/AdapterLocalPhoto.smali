.class public Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalPhoto.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/album/PaintManager/Interface/IPaintings;
.implements Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterLocalPhoto"


# instance fields
.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mIndexPlaceHolder:I

.field private mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

.field private mListPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/album/PaintManager/PaintViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

.field private mPartialLoad:Z

.field private mScrollState:I

.field private mSectionNum:I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 3
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"
    .parameter "isPartialLoad"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getSupportedMediaTypes()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    .line 38
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 39
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    .line 207
    iput v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    .line 208
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    .line 277
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 278
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    .line 280
    iput v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    .line 49
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 50
    iput-boolean p4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    .line 51
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->enableDataCache(Z)V

    .line 52
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0, p4}, Lcom/htc/album/modules/collection/Collection;->setEnablePartialLoadImageList(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public enableBroadcastNotify()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public getCollectionInfo()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 137
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 140
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_0
    return-object v0

    .restart local v0       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInkCacheManager()Lcom/htc/opensense2/album/cache/InkCacheManager;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 2
    .parameter "idx"

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/IMediaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;
    .locals 9
    .parameter "nIndex"

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 363
    .local v0, viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 382
    :cond_0
    :goto_0
    return-object v1

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    .line 366
    .local v8, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v8, :cond_0

    .line 371
    invoke-interface {v8, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 372
    .local v7, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v7, :cond_0

    .line 376
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    .end local v0           #viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    invoke-direct {v0, p1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    .line 377
    .restart local v0       #viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v1

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    .line 381
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 382
    goto :goto_0
.end method

.method public bridge synthetic getPaintItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 247
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 252
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v0, p1, v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 219
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 221
    .local v0, count:I
    if-lez v0, :cond_2

    .line 222
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v4, v0, v5

    .line 223
    .local v4, sec:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 226
    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 231
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 232
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPositionForSection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 233
    .local v1, current:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v1           #current:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v2

    .line 237
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "AdapterLocalPhoto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSections]Unexpected Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 242
    .end local v0           #count:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #sec:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    check-cast v5, [Ljava/lang/Object;

    return-object v5
.end method

.method public initPaintings()V
    .locals 8

    .prologue
    .line 307
    new-instance v2, Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x1f

    new-instance v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 313
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 314
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    .line 320
    new-instance v1, Lcom/htc/album/PaintManager/PaintViewItem;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    invoke-direct {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    .line 321
    .local v1, viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isPaintable(I)Z
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x1

    .line 387
    const/4 v0, 0x1

    .line 389
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    .line 390
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v3, :cond_0

    move v1, v0

    .line 406
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 395
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 396
    .local v2, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #bResult:I
    goto :goto_0

    .line 398
    .end local v1           #bResult:I
    :cond_1
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-ne v5, v4, :cond_3

    .line 404
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v1, v0

    .line 406
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isPartialListBuilding()Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v0

    .line 267
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->isPartialLoading()Z

    move-result v1

    .line 270
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 184
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: begin..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 188
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 189
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_0

    .line 190
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 194
    .restart local v1       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    if-ne v4, v2, :cond_1

    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_1

    .line 195
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-virtual {v1, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    .line 197
    :cond_1
    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: end..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object p1
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 2
    .parameter "list"
    .parameter "startIdx"
    .parameter "count"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public onUnloadData()V
    .locals 3

    .prologue
    .line 73
    const-string v1, "AdapterLocalPhoto"

    const-string v2, "[HTCAlbum][AdapterLocalPhoto][onUnloadData]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onUnloadData()V

    .line 76
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 77
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 84
    :cond_1
    return-void
.end method

.method public onUpdateInkData(I[B)V
    .locals 5
    .parameter "nIndex"
    .parameter "byteData"

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v1

    .line 608
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const/4 v0, 0x0

    .line 611
    .local v0, nArraySize:I
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    const/4 p2, 0x0

    .line 613
    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    .line 614
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    .line 616
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    if-eqz v2, :cond_0

    .line 618
    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][onUpdateInkData]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    invoke-interface {v2, p1}, Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;->onUpdateStroke(I)V

    goto :goto_0
.end method

.method public onUpdateInkPaint(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "nIndex"
    .parameter "bitmap"

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    .line 625
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setIdentity(FFF)V

    .line 631
    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    .line 632
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkPaint(I)V

    .line 634
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    if-eqz v1, :cond_0

    .line 636
    const-string v1, "AdapterLocalPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][onUpdateInkPaint]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;->onUpdatePaint(I)V

    goto :goto_0
.end method

.method public paintCacheDelete(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 604
    return-void
.end method

.method public paintCacheSave(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "nIndex"
    .parameter "bitmap"

    .prologue
    .line 567
    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v2, p1, :cond_0

    .line 569
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: 1"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v1

    .line 577
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v2, :cond_1

    if-nez p2, :cond_2

    .line 579
    :cond_1
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: 2"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, byteData:[B
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    .line 588
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 590
    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 598
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;->setDirtyPaint(Z)V

    goto :goto_0

    .line 595
    :cond_3
    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: no data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public queryPosByUri(Landroid/net/Uri;)I
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v7, -0x1

    .line 145
    const-string v8, "AdapterLocalPhoto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p1, :cond_1

    move v6, v7

    .line 174
    :cond_0
    :goto_0
    return v6

    .line 149
    :cond_1
    const/4 v6, -0x1

    .line 150
    .local v6, position:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 151
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v4, :cond_2

    move v6, v7

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 155
    .local v5, listCount:I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    .local v0, absFileType:Z
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, comparePath:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 159
    invoke-interface {v4, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 160
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 161
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 162
    move v6, v2

    .line 164
    goto :goto_0

    .line 156
    .end local v1           #comparePath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 167
    .restart local v1       #comparePath:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    move v6, v2

    .line 170
    goto :goto_0

    .line 158
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public releaseInkCacheManager()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    .line 354
    :cond_0
    return-void
.end method

.method public final releaseListDataCache()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 179
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 91
    :cond_0
    return-void
.end method

.method public removePaint(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    :try_start_0
    const-string v1, "AdapterLocalPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][removePaint]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterLocalPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][removePaint]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestInkCacheData(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x0

    .line 454
    iget v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v1, p1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    .line 458
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "AdapterLocalPhoto"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][requestInkCacheData]: request: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 463
    invoke-virtual {v0, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    goto :goto_0
.end method

.method public requestInkCachePaint(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x0

    .line 552
    iget v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v1, p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    .line 556
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v1, :cond_0

    .line 558
    const-string v1, "AdapterLocalPhoto"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][requestInkCachePaint]: request: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 561
    invoke-virtual {v0, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkPaint(I)V

    goto :goto_0
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 60
    return-void
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->setEnablePartialLoadImageList(Z)V

    .line 67
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public setListenerPaintUpdate(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    .line 327
    return-void
.end method

.method public setPaintScrollState(II)V
    .locals 8
    .parameter "nScrollState"
    .parameter "nIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 412
    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    if-ne v2, p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    .line 415
    if-nez p1, :cond_0

    .line 417
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v2, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, nBegin:I
    const/4 v1, 0x0

    .line 421
    .local v1, nEnd:I
    add-int/lit8 v0, p2, -0x1

    if-gez v0, :cond_2

    .line 422
    const/4 v0, 0x0

    .line 424
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, p2, 0x1

    if-gt v2, v1, :cond_3

    .line 425
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 430
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->setVisibleRange(II)V

    .line 435
    sub-int v2, v1, v0

    if-ne v5, v2, :cond_4

    .line 437
    const-string v2, "AdapterLocalPhoto"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][setPaintScrollState]: focus: "

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, " \tleft: "

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\tright: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    .line 442
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    goto :goto_0

    .line 446
    :cond_4
    const-string v2, "AdapterLocalPhoto"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][setPaintScrollState]: focus: "

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    .line 448
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCacheData(I)V

    goto :goto_0
.end method

.method public setSectionCollumnNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    if-eq v0, p1, :cond_0

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 214
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    .line 215
    return-void
.end method

.method public strokeCacheDelete(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v2

    .line 531
    .local v2, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-nez v3, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const-string v3, "AdapterLocalPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalPhotoAdapter][strokeCacheDelete]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 536
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 538
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 539
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 541
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 542
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 544
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 545
    const-string v3, "AdapterLocalPhoto"

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][strokeCacheDelete]: remove ink..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public strokeCacheLoad(I)[B
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x0

    .line 469
    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v3, p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-object v0

    .line 471
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v2

    .line 473
    .local v2, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v2, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, byteData:[B
    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, nArraySize:I
    if-eqz v0, :cond_2

    array-length v1, v0

    .line 481
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    .line 482
    const-string v3, "AdapterLocalPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalPhotoAdapter][strokeCacheLoad]: exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public strokeCacheSave(I[B)V
    .locals 8
    .parameter "nIndex"
    .parameter "byteData"

    .prologue
    const/4 v7, 0x0

    .line 490
    iget v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v4, p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v3

    .line 494
    .local v3, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v4, :cond_0

    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, nArraySize:I
    const/4 v0, 0x0

    .line 498
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz p2, :cond_2

    array-length v2, p2

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 501
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 503
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    const-string v4, "AdapterLocalPhoto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][LocalPhotoAdapter][strokeCacheSave]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    if-lez v2, :cond_3

    .line 508
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 509
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z

    .line 511
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 521
    :goto_1
    invoke-virtual {v3, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    goto :goto_0

    .line 515
    :cond_3
    invoke-interface {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 516
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z

    .line 518
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->strokeCacheDelete(I)V

    goto :goto_1
.end method

.method public unInitPaintings()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    .line 347
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 349
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 350
    return-void
.end method
