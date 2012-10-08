.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    }
.end annotation


# static fields
.field protected static final ADDITIONAL_TEXTURE_BUFFER:I = 0x1

.field public static final BUNDLE_CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field public static final BUNDLE_ENABLE_SPECIAL_CACHE:Ljava/lang/String; = "ENABLE_SPECIAL_CACHE"

.field public static final BUNDLE_GRID_FILE_CACHE_SIZE:Ljava/lang/String; = "GRID_FILE_CACHE_SIZE"

.field public static final BUNDLE_GRID_MEM_CACHE_SIZE:Ljava/lang/String; = "GRID_MEM_CACHE_SIZE"

.field public static final BUNDLE_GRID_WIDTH_HEIGHT:Ljava/lang/String; = "GRID_WIDTH_HEIGHT"

.field public static final BUNDLE_IS_MULTIPLE_FOLDER_IMAGES:Ljava/lang/String; = "MULTIPLE_FOLDER_IMAGES"

.field public static final BUNDLE_SUB_INDEX:Ljava/lang/String; = "SUB_INDEX"

.field public static final BUNDLE_TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field protected static final DEFAULT_MEM_CACHE_SIZE:I = 0xc8

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field public static final FLAG_CHECK_IMAGE_UPDATE:I = 0x1

.field public static final FLAG_DEFAULT:I = 0x0

.field protected static final ITEMS_PER_PAGE:I = 0x18

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field protected static final MAX_TASK_COUNT:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final MAX_TEXTURES_LIMIT_COUNT:I = 0x0

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected TAG:Ljava/lang/String;

.field protected mBeginIndex:I

.field protected mBorderColor:I

.field protected mBorderWidth:I

.field protected mBottomIndex:I

.field protected mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected mCachePuller:Lcom/htc/sunny2/common/CachePuller;

.field protected mCacheSet:I

.field protected mColumnCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

.field protected mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

.field protected mDirection:I

.field protected mEnableAntiAlias:Z

.field protected mEnableBorder:Z

.field protected mEndIndex:I

.field protected mFailTexture:Lcom/htc/sunny2/Texture;

.field protected mFailTextureUsedCount:I

.field private mFileCacheSize:I

.field protected mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

.field protected mGridWidthHeight:I

.field protected mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

.field protected mIsCacheEnabled:Z

.field protected mIsInitial:Z

.field protected mIsMediaListExist:Z

.field protected mIsMutipleFolderImages:Z

.field private mIsPaused:Z

.field protected mItemCounts:I

.field protected mItemParams:Lcom/htc/sunny2/IParamsPreparator;

.field protected mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field protected mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field protected mOverlapImageSize:I

.field protected mSpecificCacheFlag:I

.field protected mStop:Z

.field protected mSunnyEnvironment:I

.field protected mTask:Lcom/htc/sunny2/common/IterationTask;

.field private mTaskWaitingTime:J

.field protected mTextureBufferRange:I

.field protected mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

.field protected mTextureMap:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mTexturesCount:I

.field protected mTopIndex:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

.field protected previousUpDirection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    :goto_0
    sput v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "GridViewPreparator"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    .line 216
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    .line 314
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    .line 315
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 316
    const/16 v0, 0xb2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 317
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 319
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 320
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 321
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 322
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 323
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 324
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 325
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 326
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 327
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 328
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 329
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 330
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 331
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 332
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 333
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 334
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 335
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    .line 336
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 337
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    .line 338
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 341
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 342
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 343
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 344
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 345
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 347
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 349
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 350
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 351
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 352
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 353
    new-instance v0, Lcom/htc/sunny2/common/CachePuller;

    invoke-direct {v0}, Lcom/htc/sunny2/common/CachePuller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    .line 354
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 355
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 356
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 357
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 358
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 359
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 361
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    .line 362
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    .line 363
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    .line 364
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 374
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 375
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 377
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 378
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    .line 380
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 382
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemParams:Lcom/htc/sunny2/IParamsPreparator;

    .line 409
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 410
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 411
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    .line 2827
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 2828
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    .line 393
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 395
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 396
    return-void
.end method

.method private isTextureNullOrDirty(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 1778
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1779
    .local v0, texture:Lcom/htc/sunny2/Texture;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isProcessed(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private textureMapRelease(Lcom/htc/sunny2/common/TextureMap;Ljava/util/List;Z)V
    .locals 3
    .parameter "oldMap"
    .parameter
    .parameter "isTextureToPool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/common/TextureMap;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p2, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    if-nez p1, :cond_1

    .line 882
    :cond_0
    return-void

    .line 879
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 880
    invoke-virtual {p1, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunny2/Texture;Ljava/util/List;Z)V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private textureRelease(Lcom/htc/sunny2/Texture;Ljava/util/List;Z)V
    .locals 2
    .parameter "texture"
    .parameter
    .parameter "isTextureToPool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/Texture;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    if-nez p1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne p1, v0, :cond_2

    .line 892
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_0

    .line 894
    :cond_2
    if-eqz p2, :cond_3

    .line 895
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 898
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_4

    .line 899
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[textureRelease] mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->release()V

    .line 902
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 905
    :cond_4
    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->release()V

    .line 906
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0
.end method


# virtual methods
.method public bind(ILcom/htc/sunny2/IMediaList;I)V
    .locals 5
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 606
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->unbind(I)V

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    if-lez v0, :cond_2

    .line 616
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 617
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 619
    :cond_2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 620
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_3

    .line 622
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 626
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList has no media"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 628
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_6

    .line 634
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind() NG - not null texture pool or map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_6
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 637
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 639
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 640
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_7

    .line 641
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 644
    :cond_7
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 645
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 647
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v0, :cond_8

    .line 648
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 649
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 650
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 651
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 654
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_9

    .line 655
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mTextureForDirtyUpdate != 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_9
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    .line 659
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 660
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bind] Buffer range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 663
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_d

    .line 664
    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 668
    :goto_1
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 669
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 670
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v0, :cond_a

    .line 671
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 674
    :cond_a
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 676
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    .line 678
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_b

    .line 679
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    .line 682
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_c

    .line 683
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 684
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 685
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 688
    :cond_c
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 689
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind-, scroll speed 0, item count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    :cond_d
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    goto :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 9
    .parameter "mediaListIdx"
    .parameter "index"

    .prologue
    .line 1123
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate + mediaListIdx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", item index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-nez v6, :cond_2

    .line 1127
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate() NG - null texture map or null media list or null decodeItem"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    .line 1132
    .local v4, texture:Lcom/htc/sunny2/Texture;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v6, p2, :cond_1

    .line 1139
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1140
    .local v1, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v1, :cond_5

    .line 1142
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 1143
    .local v0, itemCount:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate() NG = null media item, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator item count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1147
    .end local v0           #itemCount:I
    :cond_5
    invoke-interface {v1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, newIdentifier:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    .line 1150
    .local v3, oldIdentifier:Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1158
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1159
    const-string v6, "TextureForFail"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1161
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v7, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1177
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    .line 1178
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate -"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1168
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 1169
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 1170
    .local v5, textureId:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6, p2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureId(II)V

    .line 1171
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    goto/16 :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    monitor-exit v1

    .line 602
    :goto_0
    return-void

    .line 574
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 575
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->release()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    .line 590
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 592
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v0, :cond_4

    .line 593
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 600
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailPreparator_deInit - Textures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected decodeFromCacheOrOriginalFile(J)Z
    .locals 14
    .parameter "limitedTimeMillis"

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    .line 2114
    .local v12, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preparator list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", media list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2117
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2118
    const/4 v0, 0x1

    .line 2160
    :goto_0
    return v0

    .line 2121
    :cond_0
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    .line 2123
    .local v9, useService:Z
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2124
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v11

    .line 2125
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v11, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v12, Lcom/htc/sunny2/IMediaData;

    .line 2127
    .restart local v12       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_2

    .line 2128
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MediaItem is null, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2130
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2131
    const/4 v0, 0x1

    goto :goto_0

    .line 2134
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MeidaDataList is null, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2136
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2137
    const/4 v0, 0x1

    goto :goto_0

    .line 2140
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_2
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2141
    .local v3, filePath:Ljava/lang/String;
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v10

    .line 2145
    .local v10, identifier:Ljava/lang/String;
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2146
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2147
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2149
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 2150
    new-instance v13, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v13}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 2151
    .local v13, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v0, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setTaskIndex(I)V

    .line 2152
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2153
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2154
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2155
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_3

    if-eqz v13, :cond_3

    .line 2157
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2159
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2160
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected decodeOriginalFile(J)Z
    .locals 14
    .parameter "limitedTimeMillis"

    .prologue
    .line 2350
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2427
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2353
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    .line 2354
    .local v12, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_0

    .line 2355
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    .line 2356
    .local v10, itemCount:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", identifier "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", preparator list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", media list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2358
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2359
    const/4 v1, 0x1

    goto :goto_1

    .line 2361
    .end local v10           #itemCount:I
    :cond_0
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2362
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v11

    .line 2363
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v11, :cond_1

    .line 2364
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v12, Lcom/htc/sunny2/IMediaData;

    .line 2365
    .restart local v12       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v12, :cond_2

    .line 2366
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    .line 2367
    .restart local v10       #itemCount:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", subIdx "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", identifier "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", preparator list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", media list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2369
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2370
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2373
    .end local v10           #itemCount:I
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    .line 2374
    .restart local v10       #itemCount:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] List is null, index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", subIdx "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", identifier "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", preparator list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", media list count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 2376
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2377
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2381
    .end local v10           #itemCount:I
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_2
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2382
    .local v3, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2387
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2388
    invoke-virtual {p0, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V

    .line 2389
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2392
    :cond_3
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 2394
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2395
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2396
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2399
    :cond_4
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 2400
    .local v0, tempItem:Lcom/htc/sunny2/common/CacheItem;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2401
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2402
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 2403
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 2404
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2405
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 2406
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2408
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2409
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2410
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2412
    new-instance v13, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct {v13}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 2413
    .local v13, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v13, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 2414
    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2415
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v13, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2417
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v1

    or-int/lit8 v9, v1, 0x30

    .line 2418
    .local v9, decodeFlags:I
    invoke-virtual {v13, v9}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 2420
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_5

    if-eqz v13, :cond_5

    .line 2422
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1, v13}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2424
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    goto/16 :goto_0

    .line 2350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 9
    .parameter "newContentIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1824
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 1825
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1827
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1865
    :cond_0
    :goto_0
    return-object v0

    .line 1829
    :cond_1
    const/4 v0, 0x0

    .line 1830
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    const/4 v1, -0x1

    .line 1831
    .local v1, contentIndex:I
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_3

    .line 1832
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 1833
    if-eq v1, v6, :cond_2

    .line 1835
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1836
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1837
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1840
    :cond_2
    if-ne v1, v6, :cond_3

    .line 1841
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 1842
    if-eq v1, v6, :cond_3

    .line 1844
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1845
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_3

    .line 1846
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1851
    :cond_3
    if-ne v1, v6, :cond_4

    .line 1852
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    .line 1853
    if-eq v1, v6, :cond_4

    .line 1855
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1856
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_4

    .line 1857
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1862
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_0

    .line 1863
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 13
    .parameter "decodeItem"

    .prologue
    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 1625
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_2

    .line 1626
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1627
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .local v3, i:I
    :goto_0
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v9, :cond_5

    .line 1629
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1631
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1632
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1774
    :goto_1
    return-void

    .line 1627
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1639
    .end local v3           #i:I
    :cond_2
    iput-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1643
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1644
    .local v2, end:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v9

    .line 1645
    .local v1, count:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v9, v1

    .line 1646
    .local v0, begin:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v1

    add-int/lit8 v1, v9, -0x1

    .line 1647
    move v3, v0

    .restart local v3       #i:I
    :goto_2
    if-gt v3, v2, :cond_5

    .line 1649
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 1651
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1652
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1653
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    .line 1658
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1659
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v1, v9

    if-nez v9, :cond_8

    .line 1661
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v9, :cond_7

    .line 1675
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    :cond_5
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_12

    .line 1677
    const/4 v4, 0x1

    .local v4, j:I
    :goto_3
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v4, v9, :cond_12

    .line 1679
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_6

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_b

    .line 1680
    :cond_6
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_4
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v9, :cond_f

    .line 1682
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v9, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    .line 1683
    .local v6, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v6, :cond_9

    .line 1684
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Layer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IMediaData is null, item index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iput v12, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1663
    .end local v4           #j:I
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    .restart local v0       #begin:I
    .restart local v1       #count:I
    .restart local v2       #end:I
    :cond_7
    add-int/lit8 v2, v0, -0x1

    .line 1664
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v2, v9

    add-int/lit8 v0, v9, 0x1

    .line 1666
    if-ltz v0, :cond_5

    .line 1668
    const/4 v1, 0x0

    .line 1669
    add-int/lit8 v3, v0, -0x1

    .line 1647
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1688
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .restart local v4       #j:I
    .restart local v6       #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_9
    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v9

    if-nez v9, :cond_a

    .line 1690
    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1691
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1692
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    .line 1680
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1698
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_b
    iput-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1699
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1700
    .restart local v2       #end:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v9

    .line 1701
    .restart local v1       #count:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v9, v1

    .line 1702
    .restart local v0       #begin:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v1

    add-int/lit8 v1, v9, -0x1

    .line 1703
    move v3, v0

    :goto_5
    if-gt v3, v2, :cond_f

    .line 1705
    if-gez v3, :cond_c

    const/4 v3, 0x0

    .line 1707
    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v9, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    .line 1708
    .restart local v6       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v6, :cond_d

    .line 1709
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Layer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IMediaData is null, item index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iput v12, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1713
    :cond_d
    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_e

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v9

    if-nez v9, :cond_e

    .line 1715
    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1716
    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1717
    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    .line 1721
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 1722
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v1, v9

    if-nez v9, :cond_11

    .line 1724
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v9, :cond_10

    .line 1677
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1726
    .restart local v0       #begin:I
    .restart local v1       #count:I
    .restart local v2       #end:I
    .restart local v6       #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_10
    add-int/lit8 v2, v0, -0x1

    .line 1727
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v2, v9

    add-int/lit8 v0, v9, 0x1

    .line 1729
    if-ltz v0, :cond_f

    .line 1731
    const/4 v1, 0x0

    .line 1732
    add-int/lit8 v3, v0, -0x1

    .line 1703
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 1741
    .end local v0           #begin:I
    .end local v1           #count:I
    .end local v2           #end:I
    .end local v4           #j:I
    .end local v6           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_12
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v8, v9, -0x1

    .line 1742
    .local v8, searchUpIndex:I
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v7, v9, 0x1

    .line 1743
    .local v7, searchDownIndex:I
    const/4 v5, 0x0

    .line 1744
    .local v5, loopCount:I
    :cond_13
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v8, v9, :cond_14

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v8, v9, :cond_15

    :cond_14
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v7, v9, :cond_1a

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v7, v9, :cond_1a

    .line 1746
    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v8, v9, :cond_17

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v8, v9, :cond_17

    .line 1747
    invoke-direct {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1748
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_16

    .line 1749
    iput v8, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1753
    :cond_16
    add-int/lit8 v8, v8, -0x1

    .line 1755
    :cond_17
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v7, v9, :cond_19

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v7, v9, :cond_19

    .line 1756
    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1757
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1758
    iput v7, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    .line 1762
    :cond_18
    add-int/lit8 v7, v7, 0x1

    .line 1764
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 1765
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v5, v9, :cond_13

    .line 1766
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_1a
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v9, v10, :cond_1b

    .line 1771
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "bottom index is smaller than top index"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_1b
    iput v12, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1
.end method

.method public freeOutOfRange(III)V
    .locals 10
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 1202
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, freeCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    .line 1208
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v2

    .line 1209
    .local v2, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v4

    .line 1210
    .local v4, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v3

    .line 1212
    .local v3, maxIndex:I
    if-gez v4, :cond_0

    .line 1213
    const/4 v4, 0x0

    .line 1215
    :cond_0
    if-lt v3, v2, :cond_1

    .line 1216
    add-int/lit8 v3, v2, -0x1

    .line 1218
    :cond_1
    move v1, v4

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_5

    .line 1220
    if-gt p2, v1, :cond_3

    if-gt v1, p3, :cond_3

    .line 1218
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1227
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    .line 1229
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 1230
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v1, v9}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1232
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1233
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1234
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1242
    .end local v1           #i:I
    .end local v2           #itemsCount:I
    .end local v3           #maxIndex:I
    .end local v4           #minIndex:I
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v7, :cond_7

    .line 1244
    const/4 v1, 0x0

    .restart local v1       #i:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    .local v5, s:I
    :goto_2
    if-ge v1, v5, :cond_7

    .line 1246
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1247
    .restart local v6       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_6

    .line 1249
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1250
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1252
    add-int/lit8 v0, v0, 0x1

    .line 1244
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1257
    .end local v1           #i:I
    .end local v5           #s:I
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;
    .locals 4
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    .line 1183
    const/4 v1, 0x0

    .line 1184
    .local v1, texture:Lcom/htc/sunny2/Texture;
    const/4 v0, 0x0

    .line 1185
    .local v0, subIdx:I
    if-eqz p3, :cond_0

    .line 1186
    const-string v2, "SUB_INDEX"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1188
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 1189
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 1193
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v1, v2, :cond_3

    .line 1196
    .end local v1           #texture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v1

    .line 1191
    .restart local v1       #texture:Lcom/htc/sunny2/Texture;
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0

    .line 1196
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .locals 1
    .parameter "subIdx"

    .prologue
    .line 1805
    const/4 v0, 0x0

    .line 1806
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    packed-switch p1, :pswitch_data_0

    .line 1819
    :goto_0
    return-object v0

    .line 1808
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 1809
    goto :goto_0

    .line 1811
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 1812
    goto :goto_0

    .line 1814
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    .line 1815
    goto :goto_0

    .line 1806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;
    .locals 4
    .parameter "subIdx"

    .prologue
    .line 2745
    const/4 v0, 0x0

    .line 2746
    .local v0, map:Lcom/htc/sunny2/common/TextureMap;
    packed-switch p1, :pswitch_data_0

    .line 2757
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTextureMap] Error subIndex, subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :goto_0
    return-object v0

    .line 2748
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2749
    goto :goto_0

    .line 2751
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 2752
    goto :goto_0

    .line 2754
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 2755
    goto :goto_0

    .line 2746
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "inValue"

    .prologue
    const/4 v3, 0x0

    .line 417
    if-nez p2, :cond_0

    .line 419
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "InValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 479
    :goto_0
    return-void

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 426
    const-string v1, "TEXTURE_MAX_COUNT"

    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 427
    .local v0, texturePreparationMaxCount:I
    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v0, v1, :cond_1

    .line 428
    sget v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailPreparator_init +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 436
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Environment handle is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 440
    monitor-exit v2

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 443
    :cond_2
    :try_start_1
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 444
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "TexturePreparationMaxCount is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 448
    monitor-exit v2

    goto :goto_0

    .line 450
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 452
    const-string v1, "CACHE_SET"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 453
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 454
    const-string v1, "MULTIPLE_FOLDER_IMAGES"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 455
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_4

    .line 456
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 462
    :goto_1
    const-string v1, "GRID_WIDTH_HEIGHT"

    const/16 v3, 0xb2

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 463
    const-string v1, "GRID_MEM_CACHE_SIZE"

    const/16 v3, 0xc8

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 464
    const-string v1, "GRID_FILE_CACHE_SIZE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 465
    const-string v1, "ENABLE_SPECIAL_CACHE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    .line 467
    new-instance v1, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 468
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 471
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 473
    new-instance v1, Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 474
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->setPriority(I)V

    .line 475
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 476
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailPreparator_init -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    monitor-exit v2

    goto/16 :goto_0

    .line 458
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V
    .locals 7
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 483
    if-nez p2, :cond_0

    .line 485
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][GridViewPreparatorImpl][init]: no param..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 564
    :goto_0
    return-void

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    .line 492
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getMaxTextureCount()I

    move-result v1

    .line 493
    .local v1, nMaxTextureCount:I
    sget v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v1, v3, :cond_1

    .line 494
    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 499
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][GridViewPreparatorImpl][init].."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    .line 501
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "Environment handle is 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 505
    monitor-exit v4

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 508
    :cond_2
    :try_start_1
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 509
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v3, :cond_3

    .line 511
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][GridViewPreparatorImpl][init]: zero texture count.."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 513
    monitor-exit v4

    goto :goto_0

    .line 515
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    .line 520
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 521
    instance-of v3, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    if-eqz v3, :cond_5

    .line 523
    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    move-object v2, v0

    .line 524
    .local v2, paramFolder:Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableOverlayImage()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    .line 525
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v3, :cond_4

    .line 526
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;->getOverlapImageSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    .line 527
    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableAntialias()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    .line 529
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Folder"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    .line 531
    .end local v2           #paramFolder:Lcom/htc/sunny2/widget/gridview/interfaces/IParamsPreparator4GridFolder;
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v3, v5

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 532
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[init] Buffer range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getCacheSet()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    .line 538
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v3, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 540
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getDimension()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    .line 541
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getMemoryCacheSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    .line 542
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->isEnableFileCache()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 543
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getFileCacheSize()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    .line 545
    :cond_6
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->isEnableBorder()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    .line 546
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v3, :cond_7

    .line 547
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getBorderWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    .line 548
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getBorderColor()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    .line 551
    :cond_7
    invoke-interface {p2}, Lcom/htc/sunny2/IParamsPreparator;->getSpecialMode()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    .line 553
    new-instance v3, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 554
    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    .line 556
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    .line 557
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    .line 559
    new-instance v3, Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 560
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/IterationTaskThread;->setPriority(I)V

    .line 561
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 562
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "ThumbnailPreparator_init -"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 2779
    const/4 v0, 0x1

    return v0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 1785
    :cond_0
    const/4 v0, 0x1

    .line 1787
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(II)Z
    .locals 5
    .parameter "index"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 1791
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    .line 1792
    .local v0, attr:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-nez v0, :cond_1

    .line 1793
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isOffLineDecodeAndNotInOffLineVisibleRange] Null ItemAttrbutes, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_0
    :goto_0
    return v1

    .line 1797
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v2, :cond_0

    .line 1799
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterate(J)V
    .locals 0
    .parameter "limitedTimeMillis"

    .prologue
    .line 399
    return-void
.end method

.method public loadRange(IIIJ)V
    .locals 30
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] null media list."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_0
    return-void

    .line 1271
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v2, :cond_2

    .line 1273
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] no cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-nez v2, :cond_3

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] no texture map."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move/from16 v19, v0

    .line 1285
    .local v19, beginIndex:I
    if-gez v19, :cond_4

    .line 1286
    const/16 v19, 0x0

    .line 1287
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move/from16 v21, v0

    .line 1288
    .local v21, endIndex:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_5

    .line 1289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v21, v2, -0x1

    .line 1292
    :cond_5
    const/16 v24, 0x0

    .local v24, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    move/from16 v0, v24

    if-ge v0, v2, :cond_6

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_7

    .line 1399
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1299
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v26

    .line 1300
    .local v26, map:Lcom/htc/sunny2/common/TextureMap;
    if-nez v26, :cond_8

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] Get map error, size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1304
    :cond_8
    move/from16 v9, v19

    .local v9, i:I
    :goto_2
    move/from16 v0, v21

    if-gt v9, v0, :cond_9

    .line 1307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_a

    .line 1292
    :cond_9
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1314
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, v9}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v27

    .line 1315
    .local v27, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v27, :cond_b

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v23

    .line 1317
    .local v23, itemCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] mediaData is null, content identifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaList count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1320
    .end local v23           #itemCount:I
    :cond_b
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v11

    .line 1321
    .local v11, useService:Z
    if-eqz v11, :cond_e

    .line 1322
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v25

    .line 1323
    .local v25, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v24, 0x1

    if-ge v2, v3, :cond_d

    .line 1304
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_c
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1326
    .restart local v25       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_d
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #mediaData:Lcom/htc/sunny2/IMediaData;
    check-cast v27, Lcom/htc/sunny2/IMediaData;

    .line 1327
    .restart local v27       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-eqz v27, :cond_c

    .line 1331
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_e
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    .line 1332
    .local v5, filePath:Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v22

    .line 1336
    .local v22, identifier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v13

    long-to-int v8, v13

    const/16 v10, 0x11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    invoke-virtual/range {v2 .. v12}, Lcom/htc/sunny2/common/CachePuller;->setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIIZI)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] mCachePuller.setup NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1342
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/CachePuller;->iterate(J)Z

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CachePuller;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1344
    .local v20, bitmap:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_c

    .line 1351
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1352
    .local v12, texture:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_10

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] FindATextureToReuse NG - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1358
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1361
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v2, :cond_11

    .line 1362
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move/from16 v18, v0

    invoke-virtual/range {v12 .. v18}, Lcom/htc/sunny2/Texture;->setBorder(IIIIII)V

    .line 1365
    :cond_11
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v28

    .line 1366
    .local v28, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_14

    .line 1367
    :cond_12
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v12, v2}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 1393
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_c

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    move/from16 v0, v24

    invoke-interface {v2, v0, v9, v3}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1369
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadRange] NG - oriTextureHandle != 0, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    move-object/from16 v0, v28

    if-eq v0, v12, :cond_17

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_13

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_16

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] oriTextureHandle is not failTexture, recycle to pool"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v29

    .line 1375
    .local v29, recycledTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-virtual/range {v29 .. v29}, Lcom/htc/sunny2/Texture;->release()V

    .line 1378
    const/16 v29, 0x0

    .line 1379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1386
    .end local v29           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_15
    :goto_6
    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v12, v2}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_5

    .line 1382
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] oriTextureHandle is failTexture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    .line 1389
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[loadRange] textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public notifyDataItemChanged(II)V
    .locals 17
    .parameter "mediaListIdx"
    .parameter "itemIdx"

    .prologue
    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged+, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v1, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1054
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v15

    .line 1055
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 1058
    .local v9, currentIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 1059
    .local v10, currentTextureHandle:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_1

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1062
    :cond_1
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 1063
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_2

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1067
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1070
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_3

    .line 1071
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1073
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1076
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v14

    .line 1077
    .local v14, map:Lcom/htc/sunny2/common/TextureMap;
    if-eqz v14, :cond_5

    .line 1083
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunny2/Texture;Ljava/util/List;Z)V

    .line 1086
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v1, :cond_6

    .line 1088
    monitor-exit v15

    goto/16 :goto_0

    .line 1117
    .end local v14           #map:Lcom/htc/sunny2/common/TextureMap;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1090
    .restart local v14       #map:Lcom/htc/sunny2/common/TextureMap;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_a

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    .line 1092
    .local v11, item:Lcom/htc/sunny2/IMediaData;
    if-nez v11, :cond_7

    .line 1093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    .line 1094
    .local v12, itemCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: mediaData is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    monitor-exit v15

    goto/16 :goto_0

    .line 1098
    .end local v12           #itemCount:I
    :cond_7
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1099
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1100
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v13, :cond_8

    .line 1101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #item:Lcom/htc/sunny2/IMediaData;
    check-cast v11, Lcom/htc/sunny2/IMediaData;

    .line 1102
    .restart local v11       #item:Lcom/htc/sunny2/IMediaData;
    if-nez v11, :cond_9

    .line 1103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    .line 1104
    .restart local v12       #itemCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: mediaData is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    monitor-exit v15

    goto/16 :goto_0

    .line 1108
    .end local v12           #itemCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    .line 1109
    .restart local v12       #itemCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: MediaList is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit v15

    goto/16 :goto_0

    .line 1113
    .end local v12           #itemCount:I
    .end local v13           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v16, v0

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1117
    .end local v11           #item:Lcom/htc/sunny2/IMediaData;
    :goto_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1115
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public notifyDataItemChanged(III)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "flag"

    .prologue
    .line 1041
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1042
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkImageUpdate(II)V

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 229
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 235
    :cond_0
    if-ne p1, v2, :cond_3

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 243
    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    .line 245
    :cond_2
    monitor-exit v1

    .line 246
    return-void

    .line 238
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 8
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 1501
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v3, :cond_0

    .line 1502
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "onProcessPreparationIRT_Force stop"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1614
    :goto_0
    return v1

    .line 1507
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v3

    .line 1508
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    if-eqz v4, :cond_1

    .line 1511
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1512
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1514
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v3, :cond_2

    .line 1518
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "onProcessPreparationIRT_Not initialize"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1519
    goto :goto_0

    .line 1514
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1521
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 1524
    goto :goto_0

    .line 1527
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1529
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v3, :cond_4

    .line 1530
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Force stop"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    goto :goto_0

    .line 1534
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 1535
    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v1, :cond_5

    .line 1536
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "DecodeItem is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1538
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1542
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v1, v7, :cond_a

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v1, v4, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v1, v4, :cond_a

    .line 1544
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecodeItem is expired "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_7

    .line 1546
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1547
    :cond_7
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 1548
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_8

    .line 1549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1551
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v1, v4, :cond_9

    .line 1552
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1553
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 1555
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1558
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1562
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processMediaThumbnail(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1563
    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    .line 1565
    :cond_b
    const/4 v0, 0x0

    .line 1566
    .local v0, loopCount:I
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->getTaskCount()I

    move-result v1

    if-ge v1, v6, :cond_12

    if-ge v0, v6, :cond_12

    .line 1568
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    .line 1570
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v1, v7, :cond_11

    .line 1572
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1573
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 1574
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_f

    .line 1578
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    .line 1580
    :cond_c
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_e

    .line 1581
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeFromCacheOrOriginalFile(J)Z

    .line 1601
    :cond_d
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1583
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    goto :goto_2

    .line 1611
    .end local v0           #loopCount:I
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1586
    .restart local v0       #loopCount:I
    :cond_f
    :try_start_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture cache is full, textureMap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", texturePool "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", decodeItem index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTexturesCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_10

    .line 1588
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextureMap2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TextureMap3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", failTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_2

    .line 1595
    :cond_11
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 1597
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 1604
    :cond_12
    const/4 v0, 0x0

    .line 1606
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processCurrentTask(J)Z

    .line 1607
    add-int/lit8 v0, v0, 0x1

    .line 1608
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v1

    if-nez v1, :cond_14

    if-lt v0, v6, :cond_13

    .line 1609
    :cond_14
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v2

    goto/16 :goto_0

    .end local v0           #loopCount:I
    :cond_15
    move v1, v2

    .line 1614
    goto/16 :goto_0
.end method

.method public pausePreparator()V
    .locals 2

    .prologue
    .line 2831
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2832
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 2833
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2837
    :cond_0
    return-void

    .line 2833
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processCurrentTask(J)Z
    .locals 21
    .parameter "limitedTimeMillis"

    .prologue
    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2167
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2177
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 2341
    :goto_1
    return v3

    .line 2169
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2172
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto :goto_0

    .line 2180
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/sunny2/common/IterationTask;

    .line 2181
    .local v16, mTask:Lcom/htc/sunny2/common/IterationTask;
    if-nez v16, :cond_3

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCurrentTask] IteratorTask is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/4 v3, 0x0

    goto :goto_1

    .line 2186
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    .line 2188
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2190
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2191
    const/4 v13, 0x0

    .line 2192
    .local v13, isFailed:Z
    const/4 v2, 0x0

    .line 2193
    .local v2, mCacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_8

    move-object/from16 v19, v16

    .line 2195
    check-cast v19, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    .line 2196
    .local v19, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v13

    .line 2197
    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    .line 2207
    .end local v19           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v20

    .line 2209
    .local v20, texture:Lcom/htc/sunny2/Texture;
    if-nez v20, :cond_5

    .line 2212
    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v20

    .line 2214
    :cond_5
    if-nez v20, :cond_6

    .line 2215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "No reusable texture."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v18

    .line 2220
    .local v18, oldTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 2221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunny2/Texture;

    .line 2222
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2226
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 2227
    if-eqz v13, :cond_b

    .line 2230
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_a

    .line 2232
    const/4 v2, 0x0

    .line 2233
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    .line 2240
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2198
    .end local v18           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v20           #texture:Lcom/htc/sunny2/Texture;
    :cond_8
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_9

    .line 2199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask] Encode cache task"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2201
    :cond_9
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v3, :cond_4

    move-object/from16 v19, v16

    .line 2203
    check-cast v19, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 2204
    .local v19, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    const/4 v13, 0x0

    .line 2205
    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    goto/16 :goto_2

    .line 2235
    .end local v19           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    .restart local v18       #oldTexture:Lcom/htc/sunny2/Texture;
    .restart local v20       #texture:Lcom/htc/sunny2/Texture;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCurrentTask] Error on encode cache"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2237
    const/4 v2, 0x0

    goto :goto_3

    .line 2244
    :cond_b
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_e

    .line 2245
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2246
    .local v10, bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_d

    .line 2247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 2248
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2324
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2325
    const/4 v2, 0x0

    .line 2328
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2250
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto :goto_4

    .line 2256
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    :cond_e
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2257
    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_14

    .line 2259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2261
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2262
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v3, :cond_13

    .line 2264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v17

    .line 2265
    .local v17, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v17, :cond_f

    .line 2266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v14

    .line 2267
    .local v14, itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2270
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2271
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2274
    .end local v14           #itemCount:I
    :cond_f
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v11

    .line 2275
    .local v11, useService:Z
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2276
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v15

    .line 2277
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v15, :cond_10

    .line 2278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v17, Lcom/htc/sunny2/IMediaData;

    .line 2279
    .restart local v17       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v17, :cond_11

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v14

    .line 2281
    .restart local v14       #itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2284
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2285
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2288
    .end local v14           #itemCount:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v14

    .line 2289
    .restart local v14       #itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] ITERATE: MediaDataList is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2292
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2293
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2297
    .end local v14           #itemCount:I
    .end local v15           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_11
    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    .line 2298
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2300
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v12, 0x11

    .line 2301
    .local v12, cacheSourceType:I
    :goto_5
    new-instance v19, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct/range {v19 .. v19}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2302
    .local v19, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 2303
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2304
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_c

    if-eqz v19, :cond_c

    .line 2309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2310
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2300
    .end local v12           #cacheSourceType:I
    .end local v19           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_12
    const/4 v12, 0x1

    goto :goto_5

    .line 2313
    .end local v11           #useService:Z
    .end local v17           #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2315
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 2319
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto/16 :goto_4

    .line 2333
    .end local v2           #mCacheItem:Lcom/htc/sunny2/common/CacheItem;
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v13           #isFailed:Z
    .end local v18           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v20           #texture:Lcom/htc/sunny2/Texture;
    :cond_15
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 2334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    .line 2341
    :cond_16
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2335
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_16

    .line 2336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2338
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto :goto_6
.end method

.method protected processMediaThumbnail(J)Z
    .locals 13
    .parameter "limitedTimeMillis"

    .prologue
    .line 1869
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1871
    const/4 v9, 0x0

    .line 2108
    :goto_0
    return v9

    .line 1874
    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    .line 1875
    .local v1, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 1877
    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    .line 1878
    const/4 v9, 0x0

    goto :goto_0

    .line 1881
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 1882
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "InValid task, skip."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1884
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1885
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1886
    const/4 v0, 0x0

    .line 1887
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1889
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 1892
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v9, v10, :cond_4

    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v9, v10, :cond_8

    .line 1895
    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 1896
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v9, :cond_d

    .line 1897
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1898
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v9, v10}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    .line 1899
    .local v4, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_5

    .line 1900
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1902
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1905
    :cond_5
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    .line 1906
    .local v8, useService:Z
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1907
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1908
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v3, :cond_6

    .line 1909
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v4, Lcom/htc/sunny2/IMediaData;

    .line 1910
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_7

    .line 1911
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1913
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1916
    :cond_6
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - MedaiDataList is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1918
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1921
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_7
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1922
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v10, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 1923
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 1924
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 1925
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v8, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 1926
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v2, 0x11

    .line 1927
    .local v2, cacheSourceType:I
    :goto_1
    new-instance v7, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v7}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 1928
    .local v7, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 1929
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1930
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 1931
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1932
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 1933
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_8

    if-eqz v7, :cond_8

    .line 1935
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v9, v7}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1948
    .end local v2           #cacheSourceType:I
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v7           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    .end local v8           #useService:Z
    :cond_8
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1950
    .local v6, reusableTexture:Lcom/htc/sunny2/Texture;
    if-nez v6, :cond_9

    .line 1953
    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 1956
    :cond_9
    if-eqz v6, :cond_22

    .line 1957
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1958
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_20

    .line 1959
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1960
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v6, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 1961
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v9, :cond_12

    .line 1962
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 1963
    .local v5, oldTexture:Lcom/htc/sunny2/Texture;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_11

    .line 1967
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v9

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v9, v10, :cond_f

    .line 1969
    :cond_a
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_b

    .line 1970
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1971
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 1973
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2043
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    .line 2045
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v9, :cond_1f

    .line 2047
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v9, v10}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    .line 2048
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_1a

    .line 2049
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2051
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1926
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #reusableTexture:Lcom/htc/sunny2/Texture;
    .restart local v8       #useService:Z
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1938
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v8           #useService:Z
    :cond_d
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1939
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1940
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1941
    const/4 v0, 0x0

    .line 1943
    :cond_e
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1944
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1977
    .restart local v5       #oldTexture:Lcom/htc/sunny2/Texture;
    .restart local v6       #reusableTexture:Lcom/htc/sunny2/Texture;
    :cond_f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oldTexture not fail texture, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_10

    .line 1979
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1980
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1982
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 1985
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1986
    const/4 v1, 0x0

    .line 1987
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 1988
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1991
    :cond_11
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1992
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 1994
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    :cond_12
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 1995
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 1996
    .restart local v5       #oldTexture:Lcom/htc/sunny2/Texture;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_15

    .line 1998
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "oldTexture not fail texture 2"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_14

    .line 2000
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 2001
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2003
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2005
    :cond_13
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 2006
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2008
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2011
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2012
    const/4 v1, 0x0

    .line 2013
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2014
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2016
    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2018
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    :cond_16
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 2019
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2020
    .restart local v5       #oldTexture:Lcom/htc/sunny2/Texture;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_19

    .line 2022
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "oldTexture not fail texture 3"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_18

    .line 2024
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 2025
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2027
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2029
    :cond_17
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 2030
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2032
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2035
    :cond_18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2036
    const/4 v1, 0x0

    .line 2037
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2038
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2040
    :cond_19
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    .line 2054
    .end local v5           #oldTexture:Lcom/htc/sunny2/Texture;
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_1a
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    .line 2055
    .restart local v8       #useService:Z
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 2056
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2057
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v3, :cond_1b

    .line 2058
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v4, Lcom/htc/sunny2/IMediaData;

    .line 2059
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v4, :cond_1c

    .line 2060
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2062
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2065
    :cond_1b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - MediaDataList is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2067
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2070
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_1c
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2071
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 2072
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2073
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v8, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 2074
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v9

    if-eqz v9, :cond_1e

    const/16 v2, 0x11

    .line 2075
    .restart local v2       #cacheSourceType:I
    :goto_3
    new-instance v7, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v7}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2076
    .restart local v7       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    .line 2077
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2078
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2079
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2080
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 2081
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_1d

    if-eqz v7, :cond_1d

    .line 2083
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v9, v7}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2108
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #cacheSourceType:I
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v7           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    .end local v8           #useService:Z
    :cond_1d
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2074
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #mediaItem:Lcom/htc/sunny2/IMediaData;
    .restart local v8       #useService:Z
    :cond_1e
    const/4 v2, 0x1

    goto :goto_3

    .line 2086
    .end local v4           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v8           #useService:Z
    :cond_1f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2087
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2090
    :cond_20
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - get null bitmap, recycle texture"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 2092
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2094
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2096
    :cond_21
    iget-object v9, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v9, :cond_1d

    .line 2097
    iget-object v9, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v10, 0x0

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    goto :goto_4

    .line 2101
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_22
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - No reusable texture"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_23

    .line 2103
    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 2104
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2106
    :cond_23
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected queryTexture(I)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "contentIndex"

    .prologue
    .line 2712
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected queryTexture(II)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 2716
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 2717
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :goto_0
    return-object v1

    .line 2721
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v0

    .line 2722
    .local v0, map:Lcom/htc/sunny2/common/TextureMap;
    if-nez v0, :cond_2

    .line 2723
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2727
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;
    .locals 12
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunny2/IMediaList;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh+"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v9, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v9, :cond_1

    .line 698
    :cond_0
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refresh() - null mediaList "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v9, :cond_4

    if-eqz p2, :cond_4

    .line 703
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh() - call bind()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 705
    const/4 v7, 0x0

    .line 835
    :goto_2
    return-object v7

    .line 698
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 708
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 709
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh() - new media list count is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v7, 0x0

    goto :goto_2

    .line 714
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v9, :cond_e

    .line 715
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "decodeItem is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_6
    :goto_3
    sget-object v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 732
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v9, :cond_7

    .line 733
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v9}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 736
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v9, :cond_8

    .line 737
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getMemCacheSize()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->newMemoryCacheSet(II)Z

    .line 741
    :cond_8
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 742
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 743
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "Clear video tasks."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_9
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v10

    .line 746
    :try_start_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12

    .line 747
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/common/IterationTask;

    .line 748
    .local v8, task:Lcom/htc/sunny2/common/IterationTask;
    if-eqz v8, :cond_a

    .line 749
    const/4 v3, 0x0

    .line 750
    .local v3, item:Lcom/htc/sunny2/common/CacheItem;
    instance-of v9, v8, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v9, :cond_11

    .line 751
    move-object v0, v8

    check-cast v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v3

    .line 755
    :cond_b
    :goto_5
    if-eqz v3, :cond_d

    .line 756
    iget-object v1, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 757
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_c

    .line 758
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 760
    :cond_c
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 762
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual {v8}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_4

    .line 766
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/sunny2/common/CacheItem;
    .end local v8           #task:Lcom/htc/sunny2/common/IterationTask;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 717
    :cond_e
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 718
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_f

    .line 719
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v9}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 720
    :cond_f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v9, v10, :cond_10

    .line 721
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 722
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 724
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 727
    :cond_10
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 752
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/htc/sunny2/common/CacheItem;
    .restart local v8       #task:Lcom/htc/sunny2/common/IterationTask;
    :cond_11
    :try_start_1
    instance-of v9, v8, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v9, :cond_b

    .line 753
    move-object v0, v8

    check-cast v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v3

    goto :goto_5

    .line 766
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/sunny2/common/CacheItem;
    .end local v8           #task:Lcom/htc/sunny2/common/IterationTask;
    :cond_12
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 772
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v9

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    .line 773
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_13

    .line 774
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 775
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-gez v9, :cond_13

    .line 776
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 779
    :cond_13
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_14

    .line 780
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 781
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gez v9, :cond_14

    .line 782
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 785
    :cond_14
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_15

    .line 786
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 787
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v9, :cond_15

    .line 788
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 791
    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v9, v10, :cond_16

    .line 792
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 793
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v9, :cond_16

    .line 794
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 800
    :cond_16
    const/4 v7, 0x0

    .line 801
    .local v7, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    if-nez p4, :cond_17

    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 803
    .restart local v7       #release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Texture;>;"
    :cond_17
    const/4 v4, 0x0

    .local v4, j:I
    :goto_6
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v4, v9, :cond_19

    .line 804
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v6

    .line 806
    .local v6, oldMap:Lcom/htc/sunny2/common/TextureMap;
    if-eqz v6, :cond_18

    .line 807
    new-instance v5, Lcom/htc/sunny2/common/TextureMap;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v5, v9}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    .line 808
    .local v5, newMap:Lcom/htc/sunny2/common/TextureMap;
    invoke-virtual {p0, v5, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureMap(Lcom/htc/sunny2/common/TextureMap;I)V

    .line 810
    invoke-virtual {p0, v6, v5, p2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureReuseForNewTextureMap(Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/IMediaList;I)V

    .line 811
    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureMapRelease(Lcom/htc/sunny2/common/TextureMap;Ljava/util/List;Z)V

    .line 803
    .end local v5           #newMap:Lcom/htc/sunny2/common/TextureMap;
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 817
    .end local v6           #oldMap:Lcom/htc/sunny2/common/TextureMap;
    :cond_19
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 819
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 820
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_1a

    .line 821
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v9, v10

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    .line 823
    :cond_1a
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    .line 824
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[refresh] Buffer range "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ItemsAttributes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 828
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_1b

    .line 829
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ItemsAttributes2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 830
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ItemsAttributes3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 833
    :cond_1b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "refresh-"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected removeTexture(II)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "contentIndex"
    .parameter "subIdx"

    .prologue
    const/4 v1, 0x0

    .line 2731
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    .line 2732
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :goto_0
    return-object v1

    .line 2735
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v0

    .line 2736
    .local v0, map:Lcom/htc/sunny2/common/TextureMap;
    if-nez v0, :cond_2

    .line 2737
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2741
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setDecodeDirection(I)V

    .line 1491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    .line 1492
    return-void
.end method

.method public resumePreparator()V
    .locals 2

    .prologue
    .line 2840
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2841
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    .line 2842
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2843
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2846
    :cond_0
    return-void

    .line 2842
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setColumnNumber(I)V
    .locals 3
    .parameter "numColumn"

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    .line 407
    :cond_0
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1496
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    .line 1497
    return-void
.end method

.method protected setFailTextureToCurrentTask()V
    .locals 1

    .prologue
    .line 2639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2640
    return-void
.end method

.method protected setFailTextureToCurrentTask(Z)V
    .locals 5
    .parameter "notifyFail"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2643
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2645
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_3

    .line 2646
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_2

    .line 2647
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - texture is dirty, mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2650
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2657
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2709
    :cond_1
    :goto_1
    return-void

    .line 2653
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2654
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 2658
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v0, v1, :cond_1

    .line 2660
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] texture is dirty, current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2665
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v0, :cond_8

    .line 2668
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 2669
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2671
    :cond_5
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2672
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2692
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_d

    .line 2693
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_c

    .line 2694
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2695
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2697
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2704
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2674
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2677
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 2678
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2680
    :cond_9
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2681
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_2

    .line 2683
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2686
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 2687
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2689
    :cond_b
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 2690
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2700
    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2701
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_3

    .line 2705
    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v0, v1, :cond_1

    .line 2707
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 222
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 225
    :cond_0
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setTextureMap(Lcom/htc/sunny2/common/TextureMap;I)V
    .locals 3
    .parameter "map"
    .parameter "subIdx"

    .prologue
    .line 2763
    packed-switch p2, :pswitch_data_0

    .line 2774
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTextureMap] Error subIdx, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :goto_0
    return-void

    .line 2765
    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    goto :goto_0

    .line 2768
    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    goto :goto_0

    .line 2771
    :pswitch_2
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    goto :goto_0

    .line 2763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setTextureToCurrentTask(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bmp"

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 2508
    if-nez p1, :cond_4

    .line 2509
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_1

    .line 2511
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_3

    .line 2512
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2513
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 2515
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2521
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v11, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2523
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 2524
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2636
    :cond_2
    :goto_1
    return-void

    .line 2518
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 2519
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    .line 2528
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 2529
    .local v10, width:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 2530
    .local v7, height:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 2531
    .local v0, texture:Lcom/htc/sunny2/Texture;
    if-nez v0, :cond_5

    .line 2532
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setTextureToCurrentTask NG - mDecodeItem.mTexture is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2535
    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 2537
    invoke-virtual {v0, v10}, Lcom/htc/sunny2/Texture;->setSourceWidth(I)V

    .line 2538
    invoke-virtual {v0, v7}, Lcom/htc/sunny2/Texture;->setSourceHeight(I)V

    .line 2539
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 2540
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v2, :cond_6

    .line 2542
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/Texture;->setBorder(IIIIII)V

    .line 2545
    :cond_6
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny2/Sunny2;->Texture_Realize(I)V

    .line 2547
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v2, :cond_e

    .line 2549
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2550
    .local v8, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v8, :cond_9

    .line 2551
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2553
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    .line 2631
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_8

    .line 2632
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2635
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v11, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2555
    .restart local v8       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_9
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2557
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_a

    .line 2558
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2559
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2560
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    .line 2563
    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    goto :goto_2

    .line 2566
    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 1 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_d

    .line 2568
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 2569
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    .line 2570
    .local v9, recycledTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2571
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 2573
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2575
    :cond_c
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2578
    .end local v9           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2582
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_e
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 2584
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2585
    .restart local v8       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v8, :cond_f

    .line 2586
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2588
    :cond_f
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 2 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_11

    .line 2590
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 2591
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    .line 2592
    .restart local v9       #recycledTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2593
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 2595
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2597
    :cond_10
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2600
    .end local v9           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_11
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2604
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_12
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 2606
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    .line 2607
    .restart local v8       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v8, :cond_13

    .line 2608
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2610
    :cond_13
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 3 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v2, :cond_15

    .line 2612
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    .line 2613
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    .line 2614
    .restart local v9       #recycledTexture:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2615
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    invoke-virtual {v9}, Lcom/htc/sunny2/Texture;->release()V

    .line 2617
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 2619
    :cond_14
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2622
    .end local v9           #recycledTexture:Lcom/htc/sunny2/Texture;
    :cond_15
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2627
    .end local v8           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_16
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Add decodeItem to mTextureMap is Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 2629
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_2
.end method

.method public setVisibleRange(III)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1407
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v2, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Not initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1413
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Visible range setting error. beginIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1416
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 1417
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1418
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 1419
    .local v1, intervalCount:I
    if-gez v1, :cond_4

    .line 1421
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "visible range is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    :cond_4
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-nez v2, :cond_5

    .line 1426
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "item count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1430
    :cond_5
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    .line 1431
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    .line 1434
    :cond_6
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    .line 1435
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    .line 1439
    :cond_7
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_8

    .line 1440
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1441
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1443
    :cond_8
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int v0, v2, v1

    .line 1444
    .local v0, difference:I
    if-ltz v0, :cond_10

    .line 1446
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1447
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_f

    .line 1449
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1454
    :cond_9
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1455
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_a

    .line 1456
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    .line 1457
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1467
    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_b

    .line 1468
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->setVisibleRange(II)V

    .line 1470
    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_e

    .line 1471
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 1472
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v2, v3, :cond_c

    .line 1473
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    .line 1475
    :cond_c
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 1476
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v2, v3, :cond_d

    .line 1477
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    .line 1479
    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 1481
    :cond_e
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 1450
    :cond_f
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    .line 1452
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    goto :goto_1

    .line 1462
    :cond_10
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .line 1463
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "top = bottom = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V
    .locals 16
    .parameter "mediaItem"

    .prologue
    .line 2431
    const/4 v12, 0x0

    .line 2432
    .local v12, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v15, 0x1001

    .line 2433
    .local v15, type:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 2434
    const/16 v15, 0x1002

    .line 2436
    :cond_0
    packed-switch v15, :pswitch_data_0

    .line 2449
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v14

    .line 2450
    .local v14, mediaSourceType:I
    iput v14, v12, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 2451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 2452
    const/4 v11, 0x0

    .line 2453
    .local v11, hasError:Z
    packed-switch v14, :pswitch_data_1

    .line 2483
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v10

    .line 2484
    .local v10, filePath:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2485
    :cond_1
    const/4 v11, 0x1

    .line 2490
    .end local v10           #filePath:Ljava/lang/String;
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v2

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 2491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v2

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 2492
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 2493
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 2495
    if-nez v11, :cond_7

    const/4 v2, 0x1

    :goto_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v2, v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 2498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v13

    .line 2499
    .local v13, itemAttrtibutes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    if-eqz v13, :cond_3

    .line 2500
    iget v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 2502
    .end local v13           #itemAttrtibutes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 2504
    const/4 v12, 0x0

    .line 2505
    return-void

    .line 2438
    .end local v11           #hasError:Z
    .end local v14           #mediaSourceType:I
    :pswitch_1
    new-instance v1, Lcom/htc/sunny2/common/ImageDecodeItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/ImageDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 2439
    .local v1, imageDecodeItem:Lcom/htc/sunny2/common/ImageDecodeItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v2

    or-int/lit8 v9, v2, 0x30

    .line 2441
    .local v9, decodeFlags:I
    invoke-virtual {v1, v9}, Lcom/htc/sunny2/common/ImageDecodeItem;->setDecodeFlags(I)V

    .line 2442
    move-object v12, v1

    .line 2443
    goto/16 :goto_0

    .line 2445
    .end local v1           #imageDecodeItem:Lcom/htc/sunny2/common/ImageDecodeItem;
    .end local v9           #decodeFlags:I
    :pswitch_2
    new-instance v12, Lcom/htc/sunny2/common/ImageResourceDecodeItem;

    .end local v12           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    move-object/from16 v0, p1

    invoke-direct {v12, v2, v3, v0}, Lcom/htc/sunny2/common/ImageResourceDecodeItem;-><init>(IILcom/htc/sunny2/IMediaData;)V

    .restart local v12       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    goto/16 :goto_0

    .line 2455
    .restart local v11       #hasError:Z
    .restart local v14       #mediaSourceType:I
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2456
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_1

    .line 2458
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/4 v11, 0x1

    .line 2461
    goto/16 :goto_1

    .line 2463
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2464
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto/16 :goto_1

    .line 2466
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/4 v11, 0x1

    .line 2469
    goto/16 :goto_1

    .line 2471
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2472
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    goto/16 :goto_1

    .line 2474
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const/4 v11, 0x1

    .line 2477
    goto/16 :goto_1

    .line 2495
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2436
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2453
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected textureReuseForNewTextureMap(Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/common/TextureMap;Lcom/htc/sunny2/IMediaList;I)V
    .locals 10
    .parameter "oldMap"
    .parameter "newMap"
    .parameter "medialist"
    .parameter "subIdx"

    .prologue
    .line 839
    if-nez p1, :cond_1

    .line 874
    :cond_0
    return-void

    .line 841
    :cond_1
    const/4 v4, 0x0

    .line 842
    .local v4, originalOldMapSize:I
    const/4 v5, 0x0

    .line 844
    .local v5, recycledCount:I
    invoke-virtual {p1}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v4

    .line 845
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    .local v0, i:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v0, v7, :cond_0

    .line 847
    invoke-interface {p3, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 848
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v3, :cond_3

    .line 850
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[textureReuseForNewTextureMap] null media data, item count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", item index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 854
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 855
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, p4, 0x1

    if-lt v7, v8, :cond_2

    .line 858
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mediaData:Lcom/htc/sunny2/IMediaData;
    check-cast v3, Lcom/htc/sunny2/IMediaData;

    .line 859
    .restart local v3       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-eqz v3, :cond_2

    .line 864
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_4
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, identifier:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 866
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    .line 868
    invoke-virtual {p2, v0, v6, v1}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 869
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public unbind(I)V
    .locals 7
    .parameter "mediaListIdx"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 914
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind+"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v3, :cond_4

    .line 916
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "decodeItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_1

    .line 932
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 933
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 936
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->free()V

    .line 937
    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 939
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v3, :cond_2

    .line 940
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->freeInvisibleRange()V

    .line 943
    :cond_2
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 945
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_9

    .line 948
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 950
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 951
    .local v2, texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_7

    .line 953
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 954
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 948
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 918
    .end local v0           #i:I
    .end local v1           #s:I
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 919
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_5

    .line 920
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 921
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v3, v4, :cond_6

    .line 922
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 923
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 925
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 928
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 955
    .restart local v0       #i:I
    .restart local v1       #s:I
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_3

    .line 956
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_2

    .line 959
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_8
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 962
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_9
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_d

    .line 963
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_3
    if-ge v0, v1, :cond_c

    .line 965
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 966
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_b

    .line 968
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 969
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 963
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 970
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_a

    .line 971
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_4

    .line 974
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_c
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    .line 977
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_11

    .line 978
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_5
    if-ge v0, v1, :cond_10

    .line 980
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 981
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_f

    .line 983
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 984
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 978
    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 985
    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_e

    .line 986
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    .line 989
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_10
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    .line 992
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v3, :cond_14

    .line 995
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_7
    if-ge v0, v1, :cond_13

    .line 997
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 998
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_12

    .line 1000
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 1001
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    .line 995
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1004
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_13
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    .line 1007
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_14
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_15

    .line 1009
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 1010
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    .line 1013
    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1014
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1015
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    .line 1018
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_16

    .line 1019
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 1020
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    .line 1022
    :cond_16
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    .line 1024
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1025
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1026
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Clear video tasks."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_17
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_18

    .line 1031
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Release mContentList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    .line 1033
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 1036
    :cond_18
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1037
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind-"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-void
.end method
