.class public Lcom/htc/opensense2/album/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final MAX_LISTVIEW_MEM_BUFFER:I = 0x0

.field private static final MAX_MEM_BUFFER_LISTVIEW:[I = null

#the value of this static final field might be set in the static constructor
.field public static final NEXT_LISTVIEW_VISIBLE_RANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PREV_LISTVIEW_VISIBLE_RANGE:I = 0x0

.field public static final SOURCE_BOTH:I = 0x3

.field public static final SOURCE_MEMORY:I = 0x1

.field public static final SOURCE_STORAGE:I = 0x2

.field private static final VISIBLE_RANGE_LISTVIEW_NEXT:[I

.field private static final VISIBLE_RANGE_LISTVIEW_PREV:[I


# instance fields
.field private mEnableFileCache:Z

.field private mEnableMemCache:Z

.field private mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

.field private final mLocker:Ljava/lang/Object;

.field private mMaxSize:I

.field private mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

.field private mMemCacheKey:I

.field private mMemCacheSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_MEM_BUFFER_LISTVIEW:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_PREV:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_NEXT:[I

    .line 32
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_MEM_BUFFER_LISTVIEW:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    .line 33
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_PREV:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/cache/CacheManager;->PREV_LISTVIEW_VISIBLE_RANGE:I

    .line 34
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->VISIBLE_RANGE_LISTVIEW_NEXT:[I

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/opensense2/album/cache/CacheManager;->NEXT_LISTVIEW_VISIBLE_RANGE:I

    .line 51
    const-class v0, Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 28
    :array_0
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    .line 29
    :array_1
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_2
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "memCacheSize"
    .parameter "fileCacheSize"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 458
    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 459
    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 460
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    .line 59
    iput-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    .line 62
    if-lez p3, :cond_0

    .line 64
    new-instance v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-direct {v0, p1, p3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    .line 65
    iput-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    .line 67
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->newMemoryCache(II)V

    .line 68
    return-void
.end method

.method private getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 440
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 442
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 444
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 445
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 448
    :cond_0
    return-object v0
.end method

.method private newMemoryCache(II)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->removeMemoryCache(I)V

    .line 359
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[newMemoryCache] New cache key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 361
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 362
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-void
.end method

.method private pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"

    .prologue
    .line 407
    iget-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    .line 409
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 410
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 411
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v1

    .line 414
    .local v1, item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_0

    .line 415
    iget-object v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    monitor-exit v3

    .line 420
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v1           #item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :goto_0
    return-object v2

    .line 417
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_0
    monitor-exit v3

    .line 420
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"
    .parameter "bmp"

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    .line 387
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 389
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_1

    .line 391
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;-><init>()V

    .line 392
    .local v1, item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    iput p3, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    .line 393
    iput-object p4, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    .line 394
    iput p1, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->type:I

    .line 395
    if-nez p4, :cond_0

    .line 396
    const-string v2, "CacheManager"

    const-string v4, "pushMemBitmap bmp=null"

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .end local v1           #item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :cond_1
    monitor-exit v3

    .line 403
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_2
    return-void

    .line 401
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeMemBitmap(ILjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 425
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_1

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    .line 433
    :cond_0
    monitor-exit v2

    .line 435
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    return-void

    .line 433
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeMemoryCache(I)V
    .locals 5
    .parameter "key"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeMemoryCache] Remove cache key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 347
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 350
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_0
    monitor-exit v2

    .line 353
    return-void

    .line 352
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchCache(I)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchCache] Switch key from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 306
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 308
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 195
    :cond_0
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1
    .parameter "bEnable"
    .parameter "source"

    .prologue
    .line 173
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 175
    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/CacheManager;->release()V

    .line 181
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 185
    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    goto :goto_0
.end method

.method public freeInvisibleRange()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[freeInvisibleRange] CacheKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visible range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    .line 326
    monitor-exit v1

    .line 339
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->removeInvisibleRange()V

    .line 338
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheKey()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, -0x1

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v0

    goto :goto_0
.end method

.method public onMediaMounted()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->onMediaMounted()V

    .line 260
    :cond_0
    return-void
.end method

.method public pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"
    .parameter "source"

    .prologue
    .line 106
    const/4 v6, 0x0

    .line 111
    .local v6, bmp:Landroid/graphics/Bitmap;
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p6, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 114
    :cond_0
    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->pull(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 125
    :goto_0
    if-eqz v6, :cond_1

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, p6, p1, p2, v6}, Lcom/htc/opensense2/album/cache/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 133
    :cond_1
    return-object v6

    .line 117
    :catch_0
    move-exception v7

    .line 119
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V
    .locals 8
    .parameter "bmp"
    .parameter "pos"
    .parameter "key"
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "source"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p4

    move-wide v2, p5

    move v4, p7

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 93
    :cond_1
    return-void

    .line 85
    :catch_0
    move-exception v7

    .line 86
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, cacheSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;>;"
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-enter v4

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 205
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 209
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_0

    .line 205
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 212
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->release()V

    .line 215
    :cond_1
    return-void
.end method

.method public removeCache(Ljava/lang/String;IJII)V
    .locals 6
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"

    .prologue
    .line 159
    invoke-direct {p0, p6, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->removeMemBitmap(ILjava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->remove(Ljava/lang/String;JII)V

    .line 163
    :cond_0
    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"
    .parameter "keepVisible"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->switchCache(I)Z

    .line 231
    const/4 v0, 0x1

    .line 233
    .local v0, doCreate:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v2

    if-eq p2, v2, :cond_2

    const/4 v1, 0x1

    .line 238
    .local v1, sizeChanged:Z
    :goto_0
    if-nez v1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 241
    if-eqz p3, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/CacheManager;->freeInvisibleRange()V

    .line 248
    .end local v1           #sizeChanged:Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->newMemoryCache(II)V

    .line 252
    :cond_1
    return-void

    .line 235
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    .restart local v1       #sizeChanged:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_1
.end method

.method public setRangeBoundary(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 295
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    .line 296
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setRangeBoundaries(II)V

    .line 297
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 4
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    const/4 v3, 0x0

    .line 268
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 269
    iput p2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 271
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_0

    .line 273
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    neg-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 274
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 277
    :cond_0
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    if-le v1, v2, :cond_1

    .line 279
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    sub-int v0, v1, v2

    .line 280
    .local v0, extra:I
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 281
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 283
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_1

    .line 284
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 287
    .end local v0           #extra:I
    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setVisibleRange(II)V

    .line 291
    :cond_2
    return-void
.end method
