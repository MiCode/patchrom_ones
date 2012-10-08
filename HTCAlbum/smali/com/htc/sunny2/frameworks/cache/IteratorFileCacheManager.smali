.class public Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
.super Ljava/lang/Object;
.source "IteratorFileCacheManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    }
.end annotation


# static fields
.field public static final CACHE_COLOR_DEPTH_16BIT:I = 0x10

.field public static final CACHE_COLOR_DEPTH_32BIT:I = 0x20

.field public static final CACHE_COLOR_DEPTH_UNKNOWN:I = 0x0

.field public static final CACHE_FILE_EXT:Ljava/lang/String; = ".jpg"

.field public static final CACHE_SIZE_DEFAULT:I = 0x0

.field public static final CACHE_SIZE_NONE:I = -0x1

.field private static final DB_REMOVAL_MAX:I = 0x5

.field private static ITERATOR_BASE_COST:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final S_TAG:Ljava/lang/String; = "IteratorFileCacheManager"

.field private static final TAG_PERF_INSERTDB:Ljava/lang/String; = null

.field private static final TAG_PERF_MAKEPATH:Ljava/lang/String; = null

.field private static final TAG_PERF_PULL:Ljava/lang/String; = null

.field private static final TAG_PERF_PUSH:Ljava/lang/String; = null

.field private static final TAG_PERF_REMOVE:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCacheSize:I

.field private mColorDepthSet:Landroid/util/SparseIntArray;

.field private mContext:Landroid/content/Context;

.field private mDecoderHandler:I

.field private mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field private mFileCacheSet:Landroid/util/SparseIntArray;

.field private mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field protected mScreenLarge:I

.field private mTaskLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    .line 793
    const-class v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pull]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[push]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[remove]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[insertThumbDB]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[makeCacheTaskPath]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_MAKEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 785
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    .line 786
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    .line 789
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    .line 800
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 801
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 802
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 804
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 60
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 61
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 62
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    .line 66
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 785
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    .line 786
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    .line 789
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    .line 800
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 801
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 802
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 803
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 804
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 111
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 112
    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 113
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 115
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->initializeThumbDB()V

    .line 116
    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    .line 117
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->start()V

    .line 121
    :try_start_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 122
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IteratorFileCacheManager] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v2, 0x500

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    goto :goto_0
.end method

.method public static final GetCacheTaskFactorParam(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 92
    .local v2, screenlarge:I
    :try_start_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 104
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[IteratorFileCacheManager][noDB]"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    return v2

    .line 97
    :catch_0
    move-exception v1

    .line 99
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GetCacheTaskFactorParam] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    const/16 v2, 0x500

    .line 104
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[IteratorFileCacheManager][noDB]"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[IteratorFileCacheManager][noDB]"

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->closeThumnDB()V

    return-void
.end method

.method private addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 9
    .parameter "task"

    .prologue
    const/4 v5, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return v5

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 152
    .local v3, runningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 153
    .local v2, handler:I
    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 155
    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 157
    iget v5, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 159
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    monitor-enter v6

    .line 171
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 172
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 173
    .local v4, size:I
    if-lez v4, :cond_3

    .line 174
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 178
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 179
    .local v1, depth:I
    if-lez v1, :cond_4

    .line 180
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v1, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 183
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const/4 v5, 0x1

    goto :goto_0

    .line 165
    .end local v1           #depth:I
    .end local v4           #size:I
    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    goto :goto_1

    .line 176
    .restart local v4       #size:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    iput v7, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    goto :goto_2

    .line 183
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 182
    .restart local v1       #depth:I
    .restart local v4       #size:I
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const/16 v7, 0x10

    iput v7, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private closeThumnDB()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method private initializeThumbDB()V
    .locals 3

    .prologue
    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[initializeThumbDB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, tag:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->initCacheMgr(Landroid/content/Context;)V

    .line 655
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "filePath"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "cacheSize"

    .prologue
    .line 683
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v6

    .line 687
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[asynUpdateCache]:"

    invoke-static {v0, v1, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 690
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 647
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v0

    return v0
.end method

.method private updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "fileName"
    .parameter "cachePath"
    .parameter "cacheSet"

    .prologue
    .line 664
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 668
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[asynUpdateCache]:"

    invoke-static {v1, v2, v0}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 671
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method


# virtual methods
.method protected doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 5
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    const/4 v4, -0x1

    .line 303
    const/4 v1, 0x3

    .line 305
    .local v1, nRet:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 306
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v2, :cond_0

    .line 318
    .end local v1           #nRet:I
    :goto_0
    return v1

    .line 309
    .restart local v1       #nRet:I
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 310
    .local v0, depth:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    .line 311
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v4, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 312
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 313
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 318
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v1

    goto :goto_0
.end method

.method protected doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 7
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 250
    const/4 v6, 0x3

    .line 253
    .local v6, nRet:I
    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 254
    .local v2, cache:Ljava/lang/String;
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeBegin(Landroid/graphics/Bitmap;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 265
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v0, :cond_1

    .line 268
    .end local v6           #nRet:I
    :goto_0
    return v6

    .restart local v6       #nRet:I
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v6

    goto :goto_0
.end method

.method public execute(J)I
    .locals 26
    .parameter "deadLine"

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v2, :cond_0

    .line 324
    const/16 v17, 0x3

    .line 491
    :goto_0
    return v17

    .line 326
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 327
    .local v19, start:J
    sub-long v22, p1, v19

    .line 328
    .local v22, ticks:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    .line 329
    .local v9, doDecode:Z
    :goto_1
    const/16 v17, 0x2

    .line 330
    .local v17, nRet:I
    const/16 v16, -0x1

    .line 331
    .local v16, nDecoder:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 333
    .local v15, handler:I
    if-nez v15, :cond_2

    .line 334
    const/16 v17, 0x3

    goto :goto_0

    .line 328
    .end local v9           #doDecode:Z
    .end local v15           #handler:I
    .end local v16           #nDecoder:I
    .end local v17           #nRet:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 356
    .restart local v9       #doDecode:Z
    .restart local v15       #handler:I
    .restart local v16       #nDecoder:I
    .restart local v17       #nRet:I
    :pswitch_0
    const/16 v17, 0x4

    .line 367
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v22, p1, v2

    .line 337
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    sget-wide v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    cmp-long v2, v22, v2

    if-ltz v2, :cond_5

    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 339
    const/16 v17, 0x2

    .line 341
    if-eqz v9, :cond_4

    .line 343
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v15, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v16

    .line 352
    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 363
    const/16 v17, 0x3

    goto :goto_2

    .line 347
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v15, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v16

    goto :goto_3

    .line 359
    :pswitch_1
    const/16 v17, 0x2

    .line 360
    goto :goto_2

    .line 370
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    move-object/from16 v21, v0

    .line 378
    .local v21, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    .line 380
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 382
    if-eqz v9, :cond_8

    .line 384
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 385
    .local v8, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 387
    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_6

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v21

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    .line 480
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 491
    .local v11, end:J
    goto/16 :goto_0

    .line 399
    .end local v11           #end:J
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 401
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 402
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 408
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    .line 409
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 418
    :try_start_0
    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v2, :cond_b

    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 420
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 424
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 427
    :cond_9
    const/4 v14, 0x0

    .line 429
    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v18, v2, 0x4

    .line 431
    .local v18, nRotate:I
    if-nez v18, :cond_c

    .line 433
    const/16 v18, 0x1

    .line 449
    :cond_a
    :goto_5
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v13, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 450
    .local v13, exif:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v13}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v13           #exif:Landroid/media/ExifInterface;
    .end local v14           #f:Ljava/io/File;
    .end local v18           #nRotate:I
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_6

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v21

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 435
    .restart local v14       #f:Ljava/io/File;
    .restart local v18       #nRotate:I
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_d

    .line 437
    const/16 v18, 0x6

    goto :goto_5

    .line 439
    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 441
    const/16 v18, 0x3

    goto :goto_5

    .line 443
    :cond_e
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_a

    .line 445
    const/16 v18, 0x8

    goto :goto_5

    .line 461
    .end local v14           #f:Ljava/io/File;
    .end local v18           #nRotate:I
    :catch_0
    move-exception v10

    .line 463
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DMCCache][Rename]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 466
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheTask()Lcom/htc/sunny2/frameworks/cache/CacheTask;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    return-object v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    return v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;
    .locals 1
    .parameter "task"
    .parameter "useService"

    .prologue
    .line 634
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 637
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMediaMounted()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 4
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 279
    const/4 v1, 0x3

    .line 281
    .local v1, nRet:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 283
    :cond_0
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Pull by empty filename"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v1           #nRet:I
    :cond_1
    :goto_0
    return v1

    .line 287
    .restart local v1       #nRet:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 291
    sget v2, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 292
    iget-boolean v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, f:Ljava/io/File;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto :goto_0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 6
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 196
    const/4 v1, 0x3

    .line 198
    .local v1, nRet:I
    if-nez p1, :cond_1

    .line 200
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Pull by empty cahce task."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v1           #nRet:I
    :cond_0
    :goto_0
    return v1

    .line 204
    .restart local v1       #nRet:I
    :cond_1
    sget v3, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 206
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 208
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[push] Null bitmap found..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 213
    .local v2, noSpace:Z
    :goto_1
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_5

    .line 215
    :cond_3
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[push] Error caused by mFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or No space = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v2           #noSpace:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 219
    .restart local v2       #noSpace:Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 223
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, file:Ljava/io/File;
    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v3, :cond_7

    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_7

    .line 230
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v0       #file:Ljava/io/File;
    :goto_2
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 240
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto/16 :goto_0

    .line 234
    :cond_7
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public release()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 583
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] Release now..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const-string v1, ""

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(Ljava/lang/String;JJI)V

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    .line 591
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->deInitCacheMgr(Landroid/content/Context;)V

    .line 594
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->quit()Z

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 617
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 619
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 621
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] --"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void

    .line 599
    :catch_0
    move-exception v7

    .line 601
    .local v7, ex:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[release] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, cachePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, file:Ljava/io/File;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/String;JJJ)V
    .locals 14
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "dateTaken"
    .parameter "fileSize"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 518
    .local v0, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p4

    if-eqz v1, :cond_1

    move-wide/from16 v3, p4

    .line 519
    .local v3, date:J
    :goto_1
    const/16 v1, 0x65

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 520
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 522
    const/16 v6, 0xa

    const/4 v12, 0x0

    move-object v5, v0

    move-object v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p6

    invoke-virtual/range {v5 .. v12}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 525
    const/16 v1, 0xb

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 526
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 531
    iget v13, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 533
    .local v13, tmp:I
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 534
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 535
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 537
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 538
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 539
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 540
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 541
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 542
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 543
    iput v13, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    goto :goto_0

    .end local v3           #date:J
    .end local v13           #tmp:I
    :cond_1
    move-wide/from16 v3, p2

    .line 518
    goto :goto_1
.end method

.method public removeDMCCache(Ljava/lang/String;JJ)V
    .locals 8
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "fileSize"

    .prologue
    .line 550
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    .line 551
    .local v0, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const/16 v1, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 552
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 553
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 554
    return-void
.end method

.method public declared-synchronized switchCacheSet(III)V
    .locals 2
    .parameter "key"
    .parameter "size"
    .parameter "depth"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 134
    if-lez p2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 140
    if-lez p3, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_1
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
