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

.field private mNotifyPartialLoadBuilt:Z

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
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 46
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

    .line 50
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getSupportedMediaTypes()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    .line 38
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 39
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z

    .line 209
    iput v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    .line 210
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    .line 291
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 292
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    .line 294
    iput v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    .line 51
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 52
    iput-boolean p4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    .line 53
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->enableDataCache(Z)V

    .line 54
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0, p4}, Lcom/htc/album/modules/collection/Collection;->setEnablePartialLoadImageList(Z)V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z

    return p1
.end method


# virtual methods
.method public enableBroadcastNotify()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public getCollectionInfo()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 139
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 142
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
    .line 371
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 2
    .parameter "idx"

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/IMediaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;
    .locals 9
    .parameter "nIndex"

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 377
    .local v0, viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 396
    :cond_0
    :goto_0
    return-object v1

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    .line 380
    .local v8, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v8, :cond_0

    .line 385
    invoke-interface {v8, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 386
    .local v7, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v7, :cond_0

    .line 390
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    .end local v0           #viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    invoke-direct {v0, p1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    .line 391
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

    .line 395
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 396
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
    .line 249
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 254
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v0, p1, v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 221
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 223
    .local v0, count:I
    if-lez v0, :cond_2

    .line 224
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v4, v0, v5

    .line 225
    .local v4, sec:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 227
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 228
    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 233
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 234
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPositionForSection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 235
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

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v1           #current:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v2

    .line 239
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

    .line 240
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 244
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
    .line 321
    new-instance v2, Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x1f

    new-instance v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 327
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 328
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    .line 334
    new-instance v1, Lcom/htc/album/PaintManager/PaintViewItem;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    invoke-direct {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    .line 335
    .local v1, viewItem:Lcom/htc/album/PaintManager/PaintViewItem;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isNotifyDataChangedFromPartialListBuilt()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z

    return v0
.end method

.method public isPaintable(I)Z
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x1

    .line 401
    const/4 v0, 0x1

    .line 403
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    .line 404
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v3, :cond_0

    move v1, v0

    .line 420
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 409
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 410
    .local v2, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #bResult:I
    goto :goto_0

    .line 412
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

    .line 418
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v1, v0

    .line 420
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isPartialListBuilding()Z
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v0

    .line 281
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->isPartialLoading()Z

    move-result v1

    .line 284
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

    .line 186
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: begin..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 190
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 191
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_0

    .line 192
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 196
    .restart local v1       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    if-ne v4, v2, :cond_1

    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_1

    .line 197
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-virtual {v1, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    .line 199
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

    .line 200
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: end..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object p1
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 2
    .parameter "list"
    .parameter "startIdx"
    .parameter "count"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method public onUnloadData()V
    .locals 3

    .prologue
    .line 75
    const-string v1, "AdapterLocalPhoto"

    const-string v2, "[HTCAlbum][AdapterLocalPhoto][onUnloadData]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onUnloadData()V

    .line 78
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 79
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 86
    :cond_1
    return-void
.end method

.method public onUpdateInkData(I[B)V
    .locals 5
    .parameter "nIndex"
    .parameter "byteData"

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v1

    .line 622
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x0

    .line 625
    .local v0, nArraySize:I
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    const/4 p2, 0x0

    .line 627
    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    .line 628
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    .line 630
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    if-eqz v2, :cond_0

    .line 632
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

    .line 633
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    invoke-interface {v2, p1}, Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;->onUpdateStroke(I)V

    goto :goto_0
.end method

.method public onUpdateInkPaint(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "nIndex"
    .parameter "bitmap"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    .line 639
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 644
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

    .line 645
    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    .line 646
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkPaint(I)V

    .line 648
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    if-eqz v1, :cond_0

    .line 650
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

    .line 651
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;->onUpdatePaint(I)V

    goto :goto_0
.end method

.method public paintCacheDelete(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 618
    return-void
.end method

.method public paintCacheSave(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "nIndex"
    .parameter "bitmap"

    .prologue
    .line 581
    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v2, p1, :cond_0

    .line 583
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: 1"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v1

    .line 591
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v2, :cond_1

    if-nez p2, :cond_2

    .line 593
    :cond_1
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: 2"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, byteData:[B
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    .line 602
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 604
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

    .line 605
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 612
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;->setDirtyPaint(Z)V

    goto :goto_0

    .line 609
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

    .line 147
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

    .line 149
    if-nez p1, :cond_1

    move v6, v7

    .line 176
    :cond_0
    :goto_0
    return v6

    .line 151
    :cond_1
    const/4 v6, -0x1

    .line 152
    .local v6, position:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 153
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v4, :cond_2

    move v6, v7

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 157
    .local v5, listCount:I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    .local v0, absFileType:Z
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, comparePath:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 161
    invoke-interface {v4, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 162
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 163
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    move v6, v2

    .line 166
    goto :goto_0

    .line 158
    .end local v1           #comparePath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 169
    .restart local v1       #comparePath:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 170
    move v6, v2

    .line 172
    goto :goto_0

    .line 160
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public releaseInkCacheManager()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    .line 368
    :cond_0
    return-void
.end method

.method public final releaseListDataCache()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 181
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 93
    :cond_0
    return-void
.end method

.method public removePaint(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
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

    .line 349
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 353
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

    .line 468
    iget v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v1, p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    .line 472
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v1, :cond_0

    .line 474
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

    .line 476
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 477
    invoke-virtual {v0, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    goto :goto_0
.end method

.method public requestInkCachePaint(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x0

    .line 566
    iget v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v1, p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    .line 570
    .local v0, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v1, :cond_0

    .line 572
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

    .line 574
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 575
    invoke-virtual {v0, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkPaint(I)V

    goto :goto_0
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 62
    return-void
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->setEnablePartialLoadImageList(Z)V

    .line 69
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public setListenerPaintUpdate(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    .line 341
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

    .line 426
    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    if-ne v2, p1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    .line 429
    if-nez p1, :cond_0

    .line 431
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v2, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, nBegin:I
    const/4 v1, 0x0

    .line 435
    .local v1, nEnd:I
    add-int/lit8 v0, p2, -0x1

    if-gez v0, :cond_2

    .line 436
    const/4 v0, 0x0

    .line 438
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, p2, 0x1

    if-gt v2, v1, :cond_3

    .line 439
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 444
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->setVisibleRange(II)V

    .line 449
    sub-int v2, v1, v0

    if-ne v5, v2, :cond_4

    .line 451
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

    .line 455
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    .line 456
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    goto :goto_0

    .line 460
    :cond_4
    const-string v2, "AdapterLocalPhoto"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][setPaintScrollState]: focus: "

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    .line 462
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCacheData(I)V

    goto :goto_0
.end method

.method public setSectionCollumnNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 213
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    if-eq v0, p1, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 216
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    .line 217
    return-void
.end method

.method public strokeCacheDelete(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v2

    .line 545
    .local v2, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-nez v3, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 547
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

    .line 549
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 550
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 552
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 553
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 555
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 556
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 558
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 559
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

    .line 483
    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v3, p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v0

    .line 485
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v2

    .line 487
    .local v2, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v2, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, byteData:[B
    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, nArraySize:I
    if-eqz v0, :cond_2

    array-length v1, v0

    .line 495
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    .line 496
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

    .line 504
    iget v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v4, p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v3

    .line 508
    .local v3, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v4, :cond_0

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, nArraySize:I
    const/4 v0, 0x0

    .line 512
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz p2, :cond_2

    array-length v2, p2

    .line 514
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 515
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 517
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
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

    .line 520
    if-lez v2, :cond_3

    .line 522
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 523
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z

    .line 525
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 535
    :goto_1
    invoke-virtual {v3, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    goto :goto_0

    .line 529
    :cond_3
    invoke-interface {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    .line 530
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z

    .line 532
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->strokeCacheDelete(I)V

    goto :goto_1
.end method

.method public unInitPaintings()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    .line 361
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 363
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 364
    return-void
.end method
