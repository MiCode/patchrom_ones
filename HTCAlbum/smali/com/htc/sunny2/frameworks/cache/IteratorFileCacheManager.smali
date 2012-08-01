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
    .line 42
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    .line 753
    const-class v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    .line 754
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

    .line 755
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

    .line 756
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

    .line 757
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

    .line 758
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

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    .line 746
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    .line 749
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    .line 760
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 761
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 762
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 763
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 764
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 59
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 60
    iput v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 61
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 63
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    .line 65
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    .line 746
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    .line 749
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    .line 760
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 761
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 762
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    .line 763
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 764
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 110
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 111
    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    .line 112
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 114
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->initializeThumbDB()V

    .line 115
    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    .line 116
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->start()V

    .line 120
    :try_start_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 121
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

    .line 128
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 125
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

    .line 126
    const/16 v2, 0x500

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    goto :goto_0
.end method

.method public static final GetCacheTaskFactorParam(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 91
    .local v2, screenlarge:I
    :try_start_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 92
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

    .line 103
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[IteratorFileCacheManager][noDB]"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v1

    .line 98
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

    .line 99
    const/16 v2, 0x500

    .line 103
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
    .line 30
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
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->closeThumnDB()V

    return-void
.end method

.method private addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 9
    .parameter "task"

    .prologue
    const/4 v5, 0x0

    .line 147
    if-nez p1, :cond_0

    .line 184
    :goto_0
    return v5

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 151
    .local v3, runningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 152
    .local v2, handler:I
    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 154
    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 156
    iget v5, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 158
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    monitor-enter v6

    .line 170
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 171
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 172
    .local v4, size:I
    if-lez v4, :cond_3

    .line 173
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 177
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 178
    .local v1, depth:I
    if-lez v1, :cond_4

    .line 179
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v1, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 182
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v5, 0x1

    goto :goto_0

    .line 164
    .end local v1           #depth:I
    .end local v4           #size:I
    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    goto :goto_1

    .line 175
    .restart local v4       #size:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    iput v7, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    goto :goto_2

    .line 182
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 181
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
    .line 618
    return-void
.end method

.method private initializeThumbDB()V
    .locals 3

    .prologue
    .line 612
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

    .line 614
    .local v0, tag:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->initCacheMgr(Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "filePath"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "cacheSize"

    .prologue
    .line 643
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

    .line 653
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v6

    .line 647
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[asynUpdateCache]:"

    invoke-static {v0, v1, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 650
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 607
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
    .line 624
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[asynUpdateCache]:"

    invoke-static {v1, v2, v0}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 631
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

    .line 302
    const/4 v1, 0x3

    .line 304
    .local v1, nRet:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 305
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v2, :cond_0

    .line 317
    .end local v1           #nRet:I
    :goto_0
    return v1

    .line 308
    .restart local v1       #nRet:I
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 309
    .local v0, depth:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    .line 310
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v4, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 311
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 312
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 317
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v1

    goto :goto_0
.end method

.method protected doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 7
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 249
    const/4 v6, 0x3

    .line 252
    .local v6, nRet:I
    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 253
    .local v2, cache:Ljava/lang/String;
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
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

    .line 264
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v0, :cond_1

    .line 267
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
    .locals 23
    .parameter "deadLine"

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v2, :cond_0

    .line 323
    const/4 v15, 0x3

    .line 459
    :goto_0
    return v15

    .line 325
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 326
    .local v16, start:J
    sub-long v19, p1, v16

    .line 327
    .local v19, ticks:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    .line 328
    .local v9, doDecode:Z
    :goto_1
    const/4 v15, 0x2

    .line 329
    .local v15, nRet:I
    const/4 v14, -0x1

    .line 330
    .local v14, nDecoder:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 332
    .local v13, handler:I
    if-nez v13, :cond_2

    .line 333
    const/4 v15, 0x3

    goto :goto_0

    .line 327
    .end local v9           #doDecode:Z
    .end local v13           #handler:I
    .end local v14           #nDecoder:I
    .end local v15           #nRet:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 355
    .restart local v9       #doDecode:Z
    .restart local v13       #handler:I
    .restart local v14       #nDecoder:I
    .restart local v15       #nRet:I
    :pswitch_0
    const/4 v15, 0x4

    .line 366
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v19, p1, v2

    .line 336
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    sget-wide v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    cmp-long v2, v19, v2

    if-ltz v2, :cond_5

    :cond_3
    const/4 v2, 0x2

    if-ne v15, v2, :cond_5

    .line 338
    const/4 v15, 0x2

    .line 340
    if-eqz v9, :cond_4

    .line 342
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v13, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v14

    .line 351
    :goto_3
    packed-switch v14, :pswitch_data_0

    .line 362
    const/4 v15, 0x3

    goto :goto_2

    .line 346
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v13, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v14

    goto :goto_3

    .line 358
    :pswitch_1
    const/4 v15, 0x2

    .line 359
    goto :goto_2

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    move-object/from16 v18, v0

    .line 377
    .local v18, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const/4 v2, 0x2

    if-eq v15, v2, :cond_6

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    .line 381
    if-eqz v9, :cond_8

    .line 383
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 384
    .local v8, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x4

    if-ne v15, v2, :cond_7

    .line 386
    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    .line 448
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 459
    .local v10, end:J
    goto/16 :goto_0

    .line 398
    .end local v10           #end:J
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 400
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 407
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    .line 408
    const/4 v2, 0x4

    if-ne v15, v2, :cond_6

    .line 417
    :try_start_0
    move-object/from16 v0, v18

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v2, :cond_9

    move-object/from16 v0, v18

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 419
    new-instance v12, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v12, f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 423
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v12           #f:Ljava/io/File;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 434
    :catchall_0
    move-exception v2

    throw v2

    .line 429
    :catch_0
    move-exception v2

    goto :goto_5

    .line 351
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
    .line 464
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    return-object v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    return v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    .line 589
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
    .line 594
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 597
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMediaMounted()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 4
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 278
    const/4 v1, 0x3

    .line 280
    .local v1, nRet:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 282
    :cond_0
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Pull by empty filename"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v1           #nRet:I
    :cond_1
    :goto_0
    return v1

    .line 286
    .restart local v1       #nRet:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 290
    sget v2, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 291
    iget-boolean v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, f:Ljava/io/File;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto :goto_0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 6
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 195
    const/4 v1, 0x3

    .line 197
    .local v1, nRet:I
    if-nez p1, :cond_1

    .line 199
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Pull by empty cahce task."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v1           #nRet:I
    :cond_0
    :goto_0
    return v1

    .line 203
    .restart local v1       #nRet:I
    :cond_1
    sget v3, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 205
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 207
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[push] Null bitmap found..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 212
    .local v2, noSpace:Z
    :goto_1
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_5

    .line 214
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

    .line 211
    .end local v2           #noSpace:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 218
    .restart local v2       #noSpace:Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 222
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, file:Ljava/io/File;
    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v3, :cond_7

    iget v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_7

    .line 229
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

    .line 238
    .restart local v0       #file:Ljava/io/File;
    :goto_2
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 239
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto/16 :goto_0

    .line 233
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

    .line 543
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] Release now..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const-string v1, ""

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(Ljava/lang/String;JJI)V

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    .line 551
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->deInitCacheMgr(Landroid/content/Context;)V

    .line 554
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->quit()Z

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 577
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 579
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    .line 581
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] --"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void

    .line 559
    :catch_0
    move-exception v7

    .line 561
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
    .line 525
    if-nez p1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, cachePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, file:Ljava/io/File;
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
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
    .line 481
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 486
    .local v0, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p4

    if-eqz v1, :cond_1

    move-wide/from16 v3, p4

    .line 487
    .local v3, date:J
    :goto_1
    const/16 v1, 0x65

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 488
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 490
    const/16 v6, 0xa

    const/4 v12, 0x0

    move-object v5, v0

    move-object v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p6

    invoke-virtual/range {v5 .. v12}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 491
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 493
    const/16 v1, 0xb

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 494
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 499
    iget v13, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 501
    .local v13, tmp:I
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 502
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 503
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 505
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 506
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 507
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 508
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 509
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 510
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 511
    iput v13, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    goto :goto_0

    .end local v3           #date:J
    .end local v13           #tmp:I
    :cond_1
    move-wide/from16 v3, p2

    .line 486
    goto :goto_1
.end method

.method public declared-synchronized switchCacheSet(III)V
    .locals 2
    .parameter "key"
    .parameter "size"
    .parameter "depth"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 133
    if-lez p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 139
    if-lez p3, :cond_1

    .line 140
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_1
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
