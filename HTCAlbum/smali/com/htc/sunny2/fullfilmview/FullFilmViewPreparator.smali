.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.super Lcom/htc/sunny2/Preparator;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;
    }
.end annotation


# static fields
.field public static final CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field public static final EQ:I = 0x2

#the value of this static final field might be set in the static constructor
.field protected static final EXTREME_COLORDEPTH:I = 0x0

.field protected static final EXTREME_HEIGHT:I = 0x800

.field protected static final EXTREME_HEIGHT_PANORAMA:F = 4096.0f

.field protected static final EXTREME_HEIGHT_PANORAMA_NVIDIA:F = 2048.0f

.field protected static final EXTREME_PANORAMA_MAX_PIXELS:I = 0x400000

.field protected static final EXTREME_WIDTH:I = 0x800

.field protected static final EXTREME_WIDTH_PANORAMA:F = 4096.0f

.field protected static final EXTREME_WIDTH_PANORAMA_NVIDIA:F = 2048.0f

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field protected static final FILMSTRIP_WIDTH_HEIGHT:I = 0x100

.field public static final FILM_FILE_CAHCE_SIZE:Ljava/lang/String; = "FILM_FILE_CAHCE_SIZE"

.field public static final FILM_MEM_CAHCE_SIZE:Ljava/lang/String; = "FILM_MEM_CAHCE_SIZE"

.field protected static final FINISH_TASK:I = 0x0

.field public static final FLAG_ENABLE_QUALITY_OPTIONS:I = 0x1

#the value of this static final field might be set in the static constructor
.field protected static final FULLSCREEN_COLORDEPTH:I = 0x0

.field public static final FULL_FILE_CAHCE_SIZE:Ljava/lang/String; = "FULL_FILE_CAHCE_SIZE"

.field public static final FULL_FILM_FLAG:Ljava/lang/String; = "FULL_FILM_FLAG"

.field public static final FULL_MEM_CAHCE_SIZE:Ljava/lang/String; = "FULL_MEM_CAHCE_SIZE"

.field protected static final HIGH_CACHE_FILE_COUNT:I = 0x1e

.field protected static final HIGH_CACHE_MEM_COUNT:I = 0x0

.field public static final HQ:I = 0x1

.field protected static final ITEMS_PER_PAGE:I = 0xf

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field public static final LQ:I = 0x0

.field private static final MAX_MEM_CACHE_LIMIT_COUNT:I = 0x3

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6

.field protected static final MIDIUM_CACHE_FILE_COUNT:I = 0x12c

.field protected static final MIDIUM_TEXTURES_LIMIT_COUNT:I = 0x24

.field public static final SIDE_BY_SIDE:I = 0x3

.field public static final SPECIFIC_HQ_CACHE_FLAG:Ljava/lang/String; = "SPECIFIC_HQ_CACHE_FLAG"

.field public static final SPECIFIC_HQ_SIZE_LONG_SIDE:Ljava/lang/String; = "SPECIFIC_HQ_SIZE_LONG_SIDE"

.field public static final SPECIFIC_HQ_SIZE_SHORT_SIDE:Ljava/lang/String; = "SPECIFIC_HQ_SIZE_SHORT_SIDE"

.field protected static final TAG:Ljava/lang/String; = null

.field public static final TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final THUMB_FOLDER_WIDTH_HEIGHT:I = 0x80


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected bInitial:Z

.field protected bMediaListExist:Z

.field protected bStop:Z

.field protected cacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

.field protected extremeQualityDecodedItemIndex:I

.field protected extremeQualityToDecodeItemIndex:I

.field protected extremeTextureHandle:Lcom/htc/sunny2/Texture;

.field protected failTextureHandle:Lcom/htc/sunny2/Texture;

.field protected isCacheEnabled:Z

.field protected isUploadEditor:Z

.field protected lockTextureMap:Ljava/lang/Object;

.field protected lockVideo:Ljava/lang/Object;

.field protected m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

.field protected mBeginIndex:I

.field protected mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

.field protected mBottomIndex:I

.field protected mBottomIndexHQ:I

.field protected mCacheSet:I

.field private mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

.field protected mContext:Landroid/content/Context;

.field protected mDecodeIdleBeforeTimeMillis:J

.field protected mDecodeIdleDurationAfterSideBySideImageDecoded:J

.field protected mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

.field protected mDirection:I

.field private mEnableDecodeLQFromExif:Z

.field protected mEnableQualityOptions:Z

.field protected mEndIndex:I

.field private mFileCacheSize:I

.field protected mHQTextureCount:I

.field private mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsPaused:Z

.field protected mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

.field protected mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

.field private mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field private mRaisePriorityOnce:Z

.field protected mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

.field protected mScaleType:I

.field protected mScreenLongDimension:I

.field protected mScreenShortDimension:I

.field protected mSpecificHQCacheFlag:I

.field protected mSunnyEnvironment:I

.field private mTask:Lcom/htc/sunny2/common/IterationTask;

.field protected mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskWaitingTime:J

.field protected mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureMap:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

.field protected mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

.field protected mTexturesCount:I

.field protected mTexturesHQCount:I

.field protected mTopIndex:I

.field protected mTopIndexHQ:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

.field protected mViewState:I

.field protected sideBySideBitmap:Landroid/graphics/Bitmap;

.field protected sideBySideDecodedItemIndex:I

.field protected sideBySideToDecodeItemIndex:I

.field protected sideBySideVideoDecodingItemIndex:I

.field protected sideBySideVideoToDecodeItemIndex:I

.field private tempItem:Lcom/htc/sunny2/common/CacheItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x10

    .line 268
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    .line 271
    sget-boolean v0, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    .line 275
    sget-boolean v0, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->EXTREME_COLORDEPTH:I

    return-void

    :cond_0
    move v0, v2

    .line 271
    goto :goto_0

    :cond_1
    move v1, v2

    .line 275
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .parameter "host"
    .parameter "name"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 584
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/Preparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    .line 199
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    .line 292
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 294
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 295
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 296
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 297
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 298
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 299
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 300
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 302
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 303
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 305
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 306
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    .line 307
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 308
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 315
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 316
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 317
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 319
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 320
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 322
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 324
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 325
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 326
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 327
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 328
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 329
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 330
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 331
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 332
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 333
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 334
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 335
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 336
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 337
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 338
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 340
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    .line 342
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 343
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 344
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 345
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 346
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 347
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 348
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->lockVideo:Ljava/lang/Object;

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->lockTextureMap:Ljava/lang/Object;

    .line 359
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 360
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 361
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    .line 362
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    .line 364
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 365
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 367
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 368
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 370
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 371
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 373
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 375
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 376
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 377
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 380
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 602
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 603
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 604
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 605
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    .line 606
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 607
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 608
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 610
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 611
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    .line 612
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1763
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    .line 1813
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2913
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2914
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    .line 2942
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    .line 586
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 587
    return-void
.end method

.method private useBackgroundImageTextureAsLastImageLQ()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 2949
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    invoke-interface {v6}, Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;->getInitBackgroundTexture_IRT()Lcom/htc/sunny2/Texture;

    move-result-object v4

    .line 2950
    .local v4, texture:Lcom/htc/sunny2/Texture;
    if-nez v4, :cond_1

    .line 2951
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Texture is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 2956
    .local v1, lastItemIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 2957
    .local v2, mediaData:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 2958
    .local v5, textureIdentifier:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-nez v5, :cond_3

    .line 2959
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] MediaData or TextureMap or Texture Identifier is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 2964
    :cond_3
    invoke-interface {v2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 2965
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2966
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Identifier not the same"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 2971
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2972
    .local v3, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v3, :cond_5

    .line 2973
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Original LQ has texture"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 2978
    :cond_5
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 2980
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, v1, v4, v0}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2981
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2982
    invoke-virtual {p0, v1, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2983
    iget-object v6, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v6, :cond_0

    .line 2984
    iget-object v6, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(ILcom/htc/sunny2/IMediaList;I)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind+"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialize"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-eqz v1, :cond_1

    .line 723
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->unbind(I)V

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    if-lez v1, :cond_3

    .line 726
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    if-le v1, v3, :cond_2

    .line 727
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 730
    :cond_2
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 731
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableFileCache(Landroid/content/Context;I)Z

    .line 733
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/base/interfaces/ICacheClientMgr;)V

    .line 736
    :cond_3
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 737
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v1, :cond_4

    .line 738
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 741
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 742
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList has no media"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 747
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 748
    .local v0, itemCounts:I
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v1, v0, :cond_6

    .line 749
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 751
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_8

    .line 752
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind() NG - not null texture pool or map"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_8
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 755
    new-instance v1, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 756
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ItemsAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 757
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 759
    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    .line 760
    const/16 v1, 0xe

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 764
    :goto_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 765
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 766
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gez v1, :cond_9

    .line 767
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 770
    :cond_9
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_a

    .line 771
    new-instance v1, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 772
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 773
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ItemsAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 774
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 775
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 776
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gez v1, :cond_a

    .line 777
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 780
    :cond_a
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_b

    .line 781
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->clear()V

    .line 782
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xb

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 783
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 785
    :cond_b
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 787
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 788
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 790
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_c

    .line 792
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 793
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache Setup M:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_c
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_d

    .line 797
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 798
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 799
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 802
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_e

    .line 803
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 804
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 805
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 808
    :cond_e
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 809
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scroll speed 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind-, item count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :cond_f
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    goto/16 :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "index"

    .prologue
    .line 2851
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_1

    .line 2852
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - TextureMap is null or MediaList is null or DecodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    :goto_0
    return-void

    .line 2856
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 2858
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - notified index not decode and current index not notified index"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2862
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 2863
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v0, :cond_3

    .line 2864
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - mediaItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2868
    :cond_3
    invoke-interface {v0}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 2869
    .local v1, newIdentifier:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v2

    .line 2871
    .local v2, oldIdentifier:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2873
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkImageUpdate - current decode item id is the same as notified item id, newId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2877
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    monitor-exit v1

    .line 999
    :goto_0
    return-void

    .line 960
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 961
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_3

    .line 972
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 976
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_4

    .line 977
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 981
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 984
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-eqz v0, :cond_5

    .line 985
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 989
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 990
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 994
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 998
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected decodeFromCache(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1607
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1610
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1611
    const/4 v0, 0x1

    .line 1635
    :goto_0
    return v0

    .line 1614
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1615
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 1617
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 1618
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xb

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    const/16 v3, 0x12c

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1619
    :cond_1
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1620
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1621
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1622
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1627
    :goto_1
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1628
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1629
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1630
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    .line 1632
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1633
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1635
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1624
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1625
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeFromCacheHQ(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1641
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1644
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1645
    const/4 v0, 0x1

    .line 1671
    :goto_0
    return v0

    .line 1648
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1649
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 1651
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 1652
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/16 v3, 0x1e

    sget v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1653
    :cond_1
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xc

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1654
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1655
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1656
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1661
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 1663
    :cond_2
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1664
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1665
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1666
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_3

    if-eqz v11, :cond_3

    .line 1668
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1669
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1671
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1658
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1659
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeIterator(J)Z
    .locals 15
    .parameter "limitedTimeMillis"

    .prologue
    .line 1991
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1992
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v0, :cond_0

    .line 1993
    const/4 v0, 0x0

    .line 2105
    :goto_0
    return v0

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v0, :cond_1

    .line 1996
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[decodeIterator] IteratorTask is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const/4 v0, 0x1

    goto :goto_0

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2000
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2001
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 2002
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2003
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_10

    .line 2004
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 2006
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 2008
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-ne v0, v1, :cond_6

    .line 2010
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2011
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 2014
    :cond_2
    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 2015
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v0, :cond_3

    .line 2016
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 2018
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2019
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 2020
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2022
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 2023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2024
    .local v11, currentTimeMillis:J
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 2025
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v0, v0, v11

    if-gez v0, :cond_4

    .line 2026
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 2030
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 2037
    .end local v11           #currentTimeMillis:J
    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2033
    :cond_6
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2034
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_1

    .line 2040
    :cond_7
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2042
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 2044
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_e

    .line 2045
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2046
    .local v13, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v13, :cond_d

    .line 2047
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2048
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2054
    :cond_8
    :goto_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2055
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2057
    :cond_9
    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v0, :cond_c

    const/16 v10, 0x11

    .line 2058
    .local v10, cacheSourceType:I
    :goto_3
    new-instance v14, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v14}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2059
    .local v14, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2060
    invoke-virtual {v14, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2061
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2062
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_a

    if-eqz v14, :cond_a

    .line 2064
    iput-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 2065
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2105
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #cacheSourceType:I
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v14           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_a
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2050
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    .restart local v13       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2051
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xc

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_2

    .line 2057
    :cond_c
    const/4 v10, 0x1

    goto :goto_3

    .line 2068
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2071
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_e
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2074
    :cond_f
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2075
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2080
    :cond_10
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 2081
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2091
    :goto_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_4

    .line 2084
    :cond_11
    const/4 v9, 0x1

    .line 2085
    .local v9, bNotifyFail:Z
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2086
    .restart local v13       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v13, :cond_12

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2087
    const/4 v9, 0x0

    .line 2089
    :cond_12
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto :goto_5

    .line 2095
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #bNotifyFail:Z
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_13
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 2096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2103
    :cond_14
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2097
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2098
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v1, "Task waiting time over time limit, request resume thread"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto :goto_6
.end method

.method protected decodeOriginalFile(J)Z
    .locals 20
    .parameter "limitedTimeMillis"

    .prologue
    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1818
    .local v16, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v16, :cond_0

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1822
    const/4 v2, 0x1

    .line 1919
    :goto_0
    return v2

    .line 1824
    :cond_0
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v13

    .line 1825
    .local v13, filePath:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v15

    .line 1826
    .local v15, isVideo:Z
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v14

    .line 1827
    .local v14, isDrm:Z
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v17

    .line 1829
    .local v17, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1830
    const/16 v18, 0x10

    .line 1832
    .local v18, requiredColorDepth:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 1833
    const/16 v11, 0x422

    .line 1839
    .local v11, decodeFlag:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1842
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    if-eqz v2, :cond_1

    .line 1844
    or-int/lit16 v11, v11, 0x1010

    .line 1846
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v2, :cond_3

    .line 1847
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1848
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1869
    :cond_2
    :goto_1
    if-eqz v15, :cond_7

    .line 1870
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1871
    const/4 v2, 0x1

    goto :goto_0

    .line 1850
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1851
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    goto :goto_1

    .line 1853
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1855
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    goto :goto_1

    .line 1856
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1857
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1858
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1859
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->EXTREME_COLORDEPTH:I

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->purgeTextureMapHQ(I)V

    goto :goto_1

    .line 1864
    :cond_6
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1865
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1866
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1867
    or-int/lit16 v11, v11, 0x200

    goto :goto_1

    .line 1874
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1875
    const/4 v4, -0x1

    .line 1876
    .local v4, cacheSet:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_c

    .line 1877
    const/16 v4, 0xb

    .line 1881
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v2, :cond_d

    .line 1882
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1886
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 1895
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 1898
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_a

    .line 1901
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v5, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    :cond_a
    :goto_4
    new-instance v19, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v19 .. v19}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 1908
    .local v19, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1910
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setColorDepth(I)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V

    .line 1912
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_b

    if-eqz v19, :cond_b

    .line 1916
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1919
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1878
    .end local v19           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1879
    const/16 v4, 0xc

    goto/16 :goto_2

    .line 1884
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 1902
    :catch_0
    move-exception v12

    .line 1903
    .local v12, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decodeOriginalFile] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public enableDecodeLQFromExif(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2945
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    .line 2946
    return-void
.end method

.method protected findAHQTextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "newContentIndex"

    .prologue
    .line 1584
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-ge v2, v3, :cond_1

    .line 1586
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1587
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1601
    :cond_0
    :goto_0
    return-object v0

    .line 1589
    :cond_1
    const/4 v0, 0x0

    .line 1590
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1591
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1593
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1594
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1595
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1598
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1599
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "newContentIndex"

    .prologue
    .line 1563
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-ge v2, v3, :cond_1

    .line 1565
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1566
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1580
    :cond_0
    :goto_0
    return-object v0

    .line 1568
    :cond_1
    const/4 v0, 0x0

    .line 1569
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1570
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1572
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1573
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1574
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1577
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1578
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnItemToDecode()I
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    .line 1351
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    if-eq v8, v7, :cond_0

    .line 1352
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne v8, v9, :cond_2

    .line 1356
    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]extremeQualityToDecodeItemIndex, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already decoded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 1365
    :cond_0
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-eq v8, v7, :cond_4

    .line 1366
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_3

    .line 1370
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 1371
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_1

    .line 1372
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_1
    move v0, v7

    .line 1550
    :goto_0
    return v0

    .line 1359
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v8, 0x2

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1360
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]extremeQualityToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_0

    .line 1376
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1377
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]sideBySideToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto :goto_0

    .line 1382
    :cond_4
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v7, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v9, :cond_7

    .line 1383
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1384
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_6

    .line 1388
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 1389
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1390
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_5

    .line 1391
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_5
    move v0, v7

    .line 1393
    goto :goto_0

    .line 1395
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1396
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcAlbum][FullFilmViewPreparator][findAnItemToDecode]sideBySideVideoToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    goto/16 :goto_0

    .line 1401
    :cond_7
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .local v0, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v0, v8, :cond_b

    .line 1402
    invoke-virtual {p0, v0, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1404
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1405
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1409
    :cond_8
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_a

    .line 1410
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_9

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_a

    .line 1411
    :cond_9
    invoke-virtual {p0, v0, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_a

    .line 1413
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1401
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1420
    :cond_b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v5, v8, -0x1

    .line 1421
    .local v5, searchUpIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v8, 0x1

    .line 1422
    .local v3, searchDownIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v6, v8, -0x1

    .line 1423
    .local v6, searchUpIndexHQ:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v8, 0x1

    .line 1424
    .local v4, searchDownIndexHQ:I
    const/4 v2, 0x0

    .line 1425
    .local v2, loopCount:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v8}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 1426
    .local v1, itemCount:I
    :cond_c
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_d

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v5, v8, :cond_e

    :cond_d
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_19

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_19

    .line 1428
    :cond_e
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-ltz v8, :cond_1b

    .line 1430
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_10

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_10

    .line 1432
    invoke-virtual {p0, v3, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1435
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 1437
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v3

    .line 1438
    goto/16 :goto_0

    .line 1441
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 1444
    :cond_10
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_12

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_12

    .line 1446
    invoke-virtual {p0, v5, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_11

    .line 1449
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1451
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v5

    .line 1452
    goto/16 :goto_0

    .line 1455
    :cond_11
    add-int/lit8 v5, v5, -0x1

    .line 1458
    :cond_12
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_15

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_15

    .line 1460
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_14

    invoke-virtual {p0, v4, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_14

    .line 1462
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_13

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_14

    .line 1464
    :cond_13
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v4

    .line 1465
    goto/16 :goto_0

    .line 1468
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 1471
    :cond_15
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_18

    .line 1473
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_17

    invoke-virtual {p0, v6, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_17

    .line 1475
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_16

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_17

    .line 1477
    :cond_16
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v6

    .line 1478
    goto/16 :goto_0

    .line 1481
    :cond_17
    add-int/lit8 v6, v6, -0x1

    .line 1540
    :cond_18
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 1541
    if-le v2, v1, :cond_c

    .line 1543
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :cond_19
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v8, v9, :cond_1a

    .line 1548
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bottom is smaller than top"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move v0, v7

    .line 1550
    goto/16 :goto_0

    .line 1486
    :cond_1b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_1d

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_1d

    .line 1488
    invoke-virtual {p0, v5, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_1c

    .line 1491
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1493
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v5

    .line 1494
    goto/16 :goto_0

    .line 1497
    :cond_1c
    add-int/lit8 v5, v5, -0x1

    .line 1500
    :cond_1d
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_1f

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_1f

    .line 1502
    invoke-virtual {p0, v3, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 1505
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 1507
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v3

    .line 1508
    goto/16 :goto_0

    .line 1511
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 1514
    :cond_1f
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_22

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_22

    .line 1516
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_21

    invoke-virtual {p0, v6, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_21

    .line 1518
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_20

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_21

    .line 1520
    :cond_20
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v6

    .line 1521
    goto/16 :goto_0

    .line 1524
    :cond_21
    add-int/lit8 v6, v6, -0x1

    .line 1527
    :cond_22
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_18

    .line 1529
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_24

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_24

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_24

    invoke-virtual {p0, v4, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_24

    .line 1531
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_23

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_24

    .line 1533
    :cond_23
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v4

    .line 1534
    goto/16 :goto_0

    .line 1537
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public freeOutOfRange(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 2902
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    const/4 v1, 0x0

    .line 2420
    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 2421
    .local v0, texture:Lcom/htc/sunny2/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_1

    .line 2424
    .end local v0           #texture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v0

    .line 2420
    :cond_0
    const-string v2, "QUALITY"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 2424
    .restart local v0       #texture:Lcom/htc/sunny2/Texture;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method public hasSideBySideBitmapReaderListener()Z
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 11
    .parameter "context"
    .parameter "inValue"

    .prologue
    const/16 v10, 0x24

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 632
    if-nez p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Context is null"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 706
    :goto_0
    return-void

    .line 638
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 639
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 640
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 641
    .local v3, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 642
    .local v2, screenHeight:I
    if-le v3, v2, :cond_2

    .line 643
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 644
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 649
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen Size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v5, "TEXTURE_MAX_COUNT"

    invoke-virtual {p2, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 652
    .local v4, texturePreparationMaxCount:I
    if-le v4, v10, :cond_1

    .line 653
    const/16 v4, 0x24

    .line 657
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "ThumbnailPreparator_init +"

    invoke-static {v5, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 660
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    if-nez v5, :cond_3

    .line 661
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Environment handle is 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 663
    monitor-exit v8

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 646
    .end local v4           #texturePreparationMaxCount:I
    :cond_2
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 647
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    goto :goto_1

    .line 666
    .restart local v4       #texturePreparationMaxCount:I
    :cond_3
    :try_start_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 667
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-nez v5, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TexturePreparationMaxCount is 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 670
    monitor-exit v8

    goto/16 :goto_0

    .line 672
    :cond_4
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 674
    const-string v5, "CACHE_SET"

    const/16 v9, 0xb

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 676
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 679
    const-string v5, "FULL_FILE_CAHCE_SIZE"

    const/4 v9, 0x0

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 681
    new-instance v5, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v5}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 682
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 684
    new-instance v5, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v5}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 685
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 687
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 688
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 690
    const-string v5, "FULL_FILM_FLAG"

    const/4 v9, 0x0

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 691
    .local v1, fullFilmFlag:I
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_6

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 693
    const-string v5, "SPECIFIC_HQ_CACHE_FLAG"

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    .line 694
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-ne v5, v6, :cond_5

    .line 696
    const-string v5, "SPECIFIC_HQ_SIZE_LONG_SIDE"

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 697
    const-string v5, "SPECIFIC_HQ_SIZE_SHORT_SIDE"

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 701
    :cond_5
    new-instance v5, Lcom/htc/sunny2/common/IterationTaskThread;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ItrTaskThread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 703
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 704
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ThumbnailPreparator_init -"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 691
    goto :goto_2
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;)V
    .locals 0
    .parameter "context"
    .parameter "inValue"
    .parameter "sSurfaceViewInitBackgroundCallback"

    .prologue
    .line 622
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 623
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 624
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V
    .locals 0
    .parameter "context"
    .parameter "params"

    .prologue
    .line 619
    return-void
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 1557
    :cond_0
    const/4 v0, 0x1

    .line 1559
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 1347
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

.method public loadRange(IIIJ)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 2906
    return-void
.end method

.method public notifyDataItemChanged(II)V
    .locals 15
    .parameter "mediaListIdx"
    .parameter "contentIndex"

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

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

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 1006
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum] notifyDataItemChanged - bStop"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    monitor-exit v13

    .line 1111
    :goto_0
    return-void

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v1, :cond_1

    .line 1013
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum] notifyDataItemChanged - decodeItem is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    monitor-exit v13

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1016
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_6

    .line 1017
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    .line 1018
    .local v9, currentIndex:I
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum] notifyDataItemChanged - current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notify changed item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    .line 1021
    .local v10, currentTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1024
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v1, :cond_3

    .line 1025
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v9, v3}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1027
    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_4

    .line 1029
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1031
    :cond_4
    if-eqz v10, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_b

    .line 1032
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1033
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1035
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1047
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1050
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_f

    .line 1051
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1052
    .local v12, textureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v1, :cond_7

    .line 1053
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_d

    .line 1054
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1056
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1065
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_8

    .line 1066
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_8

    .line 1067
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1068
    .local v11, item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_e

    .line 1069
    iget-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1079
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_a

    .line 1080
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_12

    .line 1081
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1082
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v1, :cond_9

    .line 1083
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_10

    .line 1084
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1086
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1095
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_a

    .line 1096
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_a

    .line 1097
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1098
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_11

    .line 1099
    iget-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1109
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_a
    :goto_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1037
    .restart local v9       #currentIndex:I
    .restart local v10       #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_b
    if-eqz v10, :cond_c

    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_c

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 1038
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1039
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1041
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_1

    .line 1043
    :cond_c
    if-eqz v10, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1045
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto/16 :goto_1

    .line 1058
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1059
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1061
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 1071
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_e
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1076
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_f
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1088
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1089
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1091
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_4

    .line 1101
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1106
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_12
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMapHQ is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 212
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_2

    .line 214
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 218
    :cond_0
    if-ne p1, v2, :cond_3

    .line 219
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread FullFilmView preparation start"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 226
    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    .line 228
    :cond_2
    monitor-exit v1

    .line 229
    return-void

    .line 221
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 222
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread FullFilmView preparation end"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_onCancelIRT +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_onCancelIRT -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method protected onProcessPreparation(J)Z
    .locals 10
    .parameter "limitedTimeMillis"

    .prologue
    .line 1157
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_Force stop"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1160
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1161
    const/4 v6, 0x0

    .line 1343
    :goto_0
    return v6

    .line 1164
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v7

    .line 1165
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    if-eqz v6, :cond_1

    .line 1168
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1169
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1170
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 1172
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1176
    .local v0, currentTimeMillis:J
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x7d0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 1177
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 1179
    :cond_3
    long-to-int v6, v0

    rem-int/lit16 v5, v6, 0xc8

    .line 1180
    .local v5, t:I
    const/16 v6, 0x14

    if-ge v5, v6, :cond_4

    .line 1181
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Decode Idle"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1186
    .end local v0           #currentTimeMillis:J
    .end local v5           #t:I
    :cond_5
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v6, :cond_6

    .line 1187
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_Not initialize"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const/4 v6, 0x1

    goto :goto_0

    .line 1190
    :cond_6
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v6, :cond_7

    .line 1193
    const/4 v6, 0x1

    goto :goto_0

    .line 1196
    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    if-eqz v6, :cond_8

    .line 1197
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->useBackgroundImageTextureAsLastImageLQ()V

    .line 1198
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1201
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-nez v6, :cond_9

    .line 1202
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_mUpdateListener is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 1206
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_a

    .line 1207
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stop preparator"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1209
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1212
    :cond_a
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 1213
    :try_start_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v6, :cond_b

    .line 1214
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DecodeItem is null"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1216
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1339
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1220
    :cond_b
    const/4 v4, 0x0

    .line 1221
    .local v4, shouldCancelDecodeSideBySide:Z
    :try_start_3
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_d

    .line 1222
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_15

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_15

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v6, v8, :cond_c

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    if-ge v6, v8, :cond_15

    :cond_c
    const/4 v4, 0x1

    .line 1225
    :cond_d
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_e

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_10

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_10

    :cond_e
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_f

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_f

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v6, v8, :cond_10

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    if-lt v6, v8, :cond_10

    :cond_f
    if-eqz v4, :cond_14

    .line 1227
    :cond_10
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeItem is expired "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v6, :cond_11

    .line 1229
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1230
    :cond_11
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v6, :cond_12

    .line 1233
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1235
    :cond_12
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v8, :cond_16

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_16

    .line 1236
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1237
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1239
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1254
    :cond_13
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1258
    :cond_14
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_28

    .line 1260
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processMediaThumbnail(J)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1262
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1222
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1241
    :cond_16
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v8, :cond_17

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_17

    .line 1242
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1243
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onProcessPreparationIRT NG - mTexturePoolHQ is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1245
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 1247
    :cond_17
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v8, :cond_18

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_18

    .line 1249
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_2

    .line 1250
    :cond_18
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_13

    .line 1252
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto/16 :goto_2

    .line 1265
    :cond_19
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAnItemToDecode()I

    move-result v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1267
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_26

    .line 1268
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1270
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_1d

    .line 1271
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 1281
    :cond_1a
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 1282
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-ne v6, v8, :cond_1c

    .line 1283
    const/4 v3, 0x0

    .line 1285
    .local v3, reusableTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_20

    .line 1286
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 1291
    :cond_1b
    :goto_4
    if-eqz v3, :cond_21

    .line 1292
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 1300
    .end local v3           #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_1c
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_23

    .line 1301
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_22

    .line 1302
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCache(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1272
    :cond_1d
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    .line 1273
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAHQTextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto :goto_3

    .line 1274
    :cond_1e
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1f

    .line 1275
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto :goto_3

    .line 1277
    :cond_1f
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1a

    .line 1278
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v8, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto/16 :goto_3

    .line 1287
    .restart local v3       #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_20
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1b

    .line 1288
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v3

    goto :goto_4

    .line 1294
    :cond_21
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "No reusable texture"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1296
    const/4 v6, 0x0

    monitor-exit v7

    goto/16 :goto_0

    .line 1303
    .end local v3           #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_22
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_29

    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCacheHQ(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1307
    :cond_23
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1309
    :cond_24
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-nez v6, :cond_25

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_25

    .line 1310
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]decodeOriginalFile..."

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1313
    :cond_25
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Texture cache is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1315
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1320
    :cond_26
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v6}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v6}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    if-nez v6, :cond_27

    .line 1322
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1324
    :cond_27
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1327
    :cond_28
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1331
    :cond_29
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v6, :cond_2a

    .line 1333
    const/4 v2, 0x0

    .line 1334
    .local v2, ret:I
    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processCache(IJ)V

    .line 1335
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1337
    .end local v2           #ret:I
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeIterator(J)Z

    move-result v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1343
    .end local v4           #shouldCancelDecodeSideBySide:Z
    :cond_2b
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 7
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 1123
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->onProcessPreparation(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1152
    :cond_0
    :goto_0
    return v2

    .line 1124
    :catch_0
    move-exception v1

    .line 1125
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProcessPreparationIRT NG -Unexpected Exception, reset decodeItem and status, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1127
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1128
    .local v0, currentTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v3, :cond_1

    .line 1129
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1130
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 1132
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1134
    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1135
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1136
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1138
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1150
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_0

    .line 1140
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1141
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1142
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1144
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_1

    .line 1146
    :cond_5
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1148
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_1
.end method

.method public onViewStateChange(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 2881
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 2882
    return-void
.end method

.method public pausePreparator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2918
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2919
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2920
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2921
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2924
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_1

    .line 2925
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2927
    :cond_1
    return-void

    .line 2920
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processCache(IJ)V
    .locals 10
    .parameter "returnValue"
    .parameter "limitedTimeMillis"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 1675
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v2, :cond_1

    .line 1676
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[processCache] IteratorTask is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1681
    iput-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 1682
    const/4 v1, 0x0

    .line 1683
    .local v1, isFailed:Z
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v2, :cond_2

    .line 1684
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v1

    .line 1690
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 1691
    if-eqz v1, :cond_5

    .line 1693
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v2, v3, :cond_4

    .line 1695
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1696
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto :goto_0

    .line 1685
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v2, :cond_3

    .line 1686
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v1

    goto :goto_1

    .line 1688
    :cond_3
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[ProcessCache] unknown task"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1698
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error on encode cache"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1700
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_0

    .line 1704
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v2, v3, :cond_6

    .line 1705
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1706
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 1707
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1710
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1711
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1712
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1728
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1729
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto/16 :goto_0

    .line 1715
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_7
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1716
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto/16 :goto_0

    .line 1733
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #isFailed:Z
    :cond_8
    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    .line 1734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0

    .line 1735
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1736
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "Task waiting time over time limit, request resume thread"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 1738
    iput-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0
.end method

.method protected processMediaThumbnail(J)Z
    .locals 20
    .parameter "limitedTimeMillis"

    .prologue
    .line 404
    const/4 v8, 0x0

    .line 405
    .local v8, isProcessSideBySideVideo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 406
    const/16 v17, 0x0

    .line 578
    :goto_0
    return v17

    .line 408
    :cond_0
    const/4 v5, 0x0

    .line 409
    .local v5, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 410
    const/4 v8, 0x1

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    check-cast v5, Lcom/htc/sunny2/common/CacheItem;

    .line 415
    .restart local v5       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    :cond_1
    :goto_1
    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][FullFilmViewPreparator][processMediaThumbnail]isProcessSideBySideVideo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-eqz v8, :cond_6

    .line 418
    iget-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 419
    .local v4, bmp:Landroid/graphics/Bitmap;
    if-nez v4, :cond_3

    .line 420
    const/16 v17, 0x0

    goto :goto_0

    .line 412
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    check-cast v5, Lcom/htc/sunny2/common/CacheItem;

    .restart local v5       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    goto :goto_1

    .line 424
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 425
    .local v16, width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 426
    .local v7, height:I
    mul-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    invoke-static {v4, v0, v7}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 428
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 429
    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 431
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 432
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 441
    :cond_4
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 437
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 439
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    goto :goto_2

    .line 444
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v16           #width:I
    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail - NotifyDataItemChanged for this item is not decoded"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/16 v17, 0x0

    invoke-virtual {v5}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    .line 447
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 450
    :cond_7
    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 451
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Video thumbnail not in range"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 462
    .local v9, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 464
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 466
    :cond_9
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v6, 0x11

    .line 469
    .local v6, cacheSourceType:I
    :goto_3
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 470
    .local v15, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 471
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    if-eqz v15, :cond_a

    .line 475
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 478
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 468
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    .line 480
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 481
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 485
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v14

    .line 487
    .local v14, reusableTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v14, :cond_1a

    .line 488
    iget-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 489
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_16

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v10

    .line 499
    .local v10, oldTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_f

    .line 500
    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v18, "oldTexture not fail texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 506
    :cond_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    const/4 v5, 0x0

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 509
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 511
    :cond_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 512
    .restart local v16       #width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 515
    .restart local v7       #height:I
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 516
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "video/mp4-3d"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 517
    new-instance v13, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    div-int/lit8 v19, v16, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v13, v0, v1, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    .local v13, r:Landroid/graphics/Rect;
    move-object v11, v4

    .line 519
    .local v11, oldbmp:Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v13, v0, v7, v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 520
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 524
    .end local v11           #oldbmp:Landroid/graphics/Bitmap;
    .end local v13           #r:Landroid/graphics/Rect;
    :cond_10
    iput-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 530
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_11

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 532
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 534
    :cond_11
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v6, 0x11

    .line 537
    .restart local v6       #cacheSourceType:I
    :goto_4
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 538
    .restart local v15       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 539
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    if-eqz v15, :cond_12

    .line 543
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 546
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 536
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_13
    const/4 v6, 0x1

    goto :goto_4

    .line 548
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 578
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v10           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v16           #width:I
    :cond_15
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 551
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 556
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "get null bitmap"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v3, 0x1

    .line 558
    .local v3, bNotifyFail:Z
    iget v12, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 559
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 560
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v9, :cond_18

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 561
    const/4 v3, 0x0

    .line 563
    :cond_18
    if-eqz v3, :cond_19

    .line 564
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 565
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v12, v2}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    goto :goto_5

    .line 570
    .end local v3           #bNotifyFail:Z
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #pos:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No reusable texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 572
    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 575
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_5
.end method

.method public purgeTextureEQ()V
    .locals 1

    .prologue
    .line 2574
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setExtremeQualityItemIndex(I)Z

    .line 2575
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2579
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 2581
    return-void
.end method

.method public purgeTextureMap(I)V
    .locals 10
    .parameter "currentIndex"

    .prologue
    .line 2480
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    .line 2482
    move v1, p1

    .line 2484
    .local v1, currentIdx:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2485
    .local v0, bStr:Ljava/lang/StringBuffer;
    const-string v7, "[HtcAlbum][FullFilmViewPreparator][purgeTextureMap]current idx="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", mTextureMap remove idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2487
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 2488
    .local v3, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 2489
    .local v5, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 2491
    .local v4, maxIndex:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 2492
    :cond_0
    if-lt v4, v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 2494
    :cond_1
    move v2, v5

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_5

    .line 2496
    if-ne v1, v2, :cond_3

    .line 2494
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2501
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2502
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    .line 2504
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 2505
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2506
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2508
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 2510
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v2, v9}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2514
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2521
    .end local v0           #bStr:Ljava/lang/StringBuffer;
    .end local v1           #currentIdx:I
    .end local v2           #i:I
    .end local v3           #itemsCount:I
    .end local v4           #maxIndex:I
    .end local v5           #minIndex:I
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    return-void
.end method

.method public purgeTextureMapHQ(I)V
    .locals 11
    .parameter "currentIndex"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2527
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    .line 2529
    move v1, p1

    .line 2531
    .local v1, currentIdx:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2532
    .local v0, bStr:Ljava/lang/StringBuffer;
    const-string v7, "[HtcAlbum][FullFilmViewPreparator][purgeTextureMapHQ]current idx="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", mTextureMapHQ remove idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2534
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 2535
    .local v3, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 2536
    .local v5, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 2538
    .local v4, maxIndex:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 2539
    :cond_0
    if-lt v4, v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 2541
    :cond_1
    move v2, v5

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_5

    .line 2543
    if-ne v1, v2, :cond_3

    .line 2541
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2548
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2549
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    .line 2551
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 2552
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2553
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 2555
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 2558
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v7, v9, v2, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2559
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v7, v9, v2, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2562
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2569
    .end local v0           #bStr:Ljava/lang/StringBuffer;
    .end local v1           #currentIdx:I
    .end local v2           #i:I
    .end local v3           #itemsCount:I
    .end local v4           #maxIndex:I
    .end local v5           #minIndex:I
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    :cond_5
    return-void
.end method

.method protected queryTexture(II)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "contentIndex"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 2429
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v1, :cond_2

    .line 2430
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preparator not initialize or no MediaList"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    :cond_1
    :goto_0
    return-object v0

    .line 2434
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_5

    .line 2435
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne p1, v1, :cond_3

    .line 2436
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][FullFilmViewPreparator][queryTexture]EQ, contentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 2438
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_4

    .line 2439
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 2440
    :cond_4
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 2443
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2444
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method public raisePriorityOnce()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 385
    return-void
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;IZ)Ljava/util/List;
    .locals 15
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
    .line 2626
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_1

    .line 2628
    :cond_0
    sget-object v13, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "refresh() - null mediaList "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p2, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_2

    .line 2632
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 2635
    :cond_2
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 2636
    sget-object v12, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v13, "refresh() - new media list count is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    const/4 v12, 0x0

    .line 2817
    :goto_2
    return-object v12

    .line 2628
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2641
    :cond_5
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v12, :cond_c

    .line 2642
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "decodeItem is null"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_7

    .line 2657
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2659
    :cond_7
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_8

    .line 2660
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2663
    :cond_8
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v12, :cond_9

    .line 2665
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 2668
    :cond_9
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 2669
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2670
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clear MediaDecode tasks."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    :cond_a
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 2673
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2674
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clear SideBySide Video tasks."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    :cond_b
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2680
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 2681
    .local v3, intervalCount:I
    if-gez v3, :cond_f

    .line 2682
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "visible range is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    const/4 v12, 0x0

    goto :goto_2

    .line 2643
    .end local v3           #intervalCount:I
    :cond_c
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 2644
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v12, :cond_d

    .line 2645
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 2646
    :cond_d
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v13, :cond_e

    .line 2647
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 2648
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - mTexturePool is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 2650
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2653
    :cond_e
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 2685
    .restart local v3       #intervalCount:I
    :cond_f
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    .line 2686
    .local v4, itemCounts:I
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_10

    .line 2687
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2689
    :cond_10
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_11

    .line 2690
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2693
    :cond_11
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_12

    .line 2694
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2695
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2697
    :cond_12
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v12, v3

    .line 2698
    .local v1, difference:I
    if-ltz v1, :cond_1a

    .line 2699
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v13, v1, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2700
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v12, :cond_19

    .line 2701
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2705
    :cond_13
    :goto_4
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2706
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_14

    .line 2707
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2708
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2716
    :cond_14
    :goto_5
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_17

    .line 2717
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v12, v4, :cond_15

    .line 2718
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2719
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2721
    :cond_15
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v3

    if-ltz v12, :cond_1c

    .line 2722
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v13, v3

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2723
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v12, :cond_1b

    .line 2724
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2728
    :cond_16
    :goto_6
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2729
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_17

    .line 2730
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2731
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2741
    :cond_17
    :goto_7
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2742
    .local v6, oldMap:Lcom/htc/sunny2/common/TextureMap;
    new-instance v12, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2743
    const/4 v8, 0x0

    .line 2744
    .local v8, originalOldMapSize:I
    const/4 v9, 0x0

    .line 2746
    .local v9, recycledCount:I
    if-eqz v6, :cond_21

    .line 2747
    invoke-virtual {v6}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v8

    .line 2749
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .local v2, i:I
    :goto_8
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_1e

    .line 2750
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 2751
    .local v5, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v5, :cond_1d

    .line 2752
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    :cond_18
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2702
    .end local v2           #i:I
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v6           #oldMap:Lcom/htc/sunny2/common/TextureMap;
    .end local v8           #originalOldMapSize:I
    .end local v9           #recycledCount:I
    :cond_19
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_13

    .line 2703
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_4

    .line 2711
    :cond_1a
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2713
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2725
    :cond_1b
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_16

    .line 2726
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto :goto_6

    .line 2734
    :cond_1c
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2736
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2755
    .restart local v2       #i:I
    .restart local v5       #mediaData:Lcom/htc/sunny2/IMediaData;
    .restart local v6       #oldMap:Lcom/htc/sunny2/common/TextureMap;
    .restart local v8       #originalOldMapSize:I
    .restart local v9       #recycledCount:I
    :cond_1d
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2756
    .local v11, texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_18

    .line 2757
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2758
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2761
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .local v10, s:I
    :goto_a
    if-ge v2, v10, :cond_20

    .line 2762
    invoke-virtual {v6, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2763
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_1f

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v11, v12, :cond_1f

    .line 2764
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->release()V

    .line 2765
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2761
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2768
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_20
    const/4 v6, 0x0

    .line 2772
    .end local v2           #i:I
    .end local v10           #s:I
    :cond_21
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_26

    .line 2773
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 2774
    .local v7, oldMapHQ:Lcom/htc/sunny2/common/TextureMap;
    new-instance v12, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 2775
    const/4 v8, 0x0

    .line 2776
    const/4 v9, 0x0

    .line 2777
    if-eqz v7, :cond_26

    .line 2778
    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v8

    .line 2779
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .restart local v2       #i:I
    :goto_b
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_24

    .line 2780
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 2781
    .restart local v5       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v5, :cond_23

    .line 2782
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    :cond_22
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2785
    :cond_23
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2786
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_22

    .line 2787
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2788
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 2791
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .restart local v10       #s:I
    :goto_d
    if-ge v2, v10, :cond_26

    .line 2792
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2793
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_25

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v11, v12, :cond_25

    .line 2794
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->release()V

    .line 2795
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 2791
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2804
    .end local v2           #i:I
    .end local v7           #oldMapHQ:Lcom/htc/sunny2/common/TextureMap;
    .end local v10           #s:I
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_26
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2807
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2809
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 2810
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_27

    .line 2811
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 2813
    :cond_27
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ItemsAttributes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 2814
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ItemsAttributes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 2815
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh-"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public requestDecodeIdleAfterSideBySideImageDecoded(J)V
    .locals 0
    .parameter "idleDuration"

    .prologue
    .line 2897
    iput-wide p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 2898
    return-void
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 2910
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2911
    return-void
.end method

.method public resumePreparator()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2931
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2932
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2933
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2935
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2937
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_1

    .line 2938
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2940
    :cond_1
    return-void

    .line 2933
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDecodeDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 2412
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 2414
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2416
    :cond_0
    return-void
.end method

.method public setDecodeStatusListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setExtremeQualityItemIndex(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2451
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex] + "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    monitor-enter p0

    .line 2453
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2454
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2455
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2456
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]Force reset - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    monitor-exit p0

    .line 2474
    :goto_0
    return v1

    .line 2459
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v3, :cond_1

    .line 2460
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]mMediaList is null"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2464
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2465
    .local v0, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2466
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2467
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]extremeQualityToDecodeItemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]set! - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    monitor-exit p0

    goto :goto_0

    .line 2472
    .end local v0           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2473
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]??? - "

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2474
    goto :goto_0
.end method

.method protected setFailTextureToCache(Z)V
    .locals 8
    .parameter "notifyFail"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2242
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2244
    if-eqz p1, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2246
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2251
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2254
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2256
    if-eqz p1, :cond_2

    .line 2257
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2258
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_2

    .line 2259
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2262
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2263
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2267
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_5

    .line 2268
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2269
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2271
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2272
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2291
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 2293
    :cond_5
    return-void

    .line 2274
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2275
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2277
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2278
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2281
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_8

    .line 2282
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2283
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2284
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2285
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2286
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto :goto_0
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 2885
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 2886
    return-void
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    .line 205
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 208
    :cond_0
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSideBySideBitmapReaderListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2889
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 2890
    return-void
.end method

.method protected setSideBySideItemIndex(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2584
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]+ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 2622
    :goto_0
    return v2

    .line 2590
    :cond_0
    monitor-enter p0

    .line 2592
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2593
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2594
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 2595
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]Force reset - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 2599
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_2

    .line 2600
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]mMediaList is null"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 2604
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2605
    .local v1, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v1, :cond_3

    .line 2606
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]mediaItem is null - "

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 2609
    :cond_3
    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object v2, v0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2610
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2611
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2612
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]sideBySideToDecodeItemIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    :goto_1
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]set! - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 2614
    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 2615
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]sideBySideVideoToDecodeItemIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2620
    .end local v1           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2621
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]??? - "

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2622
    goto/16 :goto_0
.end method

.method protected setTexture(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bmp"

    .prologue
    .line 2109
    const/4 v4, -0x1

    .line 2110
    .local v4, previousDecodedItemIndex:I
    if-nez p1, :cond_8

    .line 2111
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bmp is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v8, v9, :cond_1

    .line 2113
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_6

    .line 2114
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_5

    .line 2115
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2116
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePool is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2118
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2136
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v9, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 2138
    :cond_1
    const/4 v0, 0x1

    .line 2139
    .local v0, bNotifyFail:Z
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2140
    .local v2, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2141
    const/4 v0, 0x0

    .line 2143
    :cond_2
    if-eqz v0, :cond_3

    .line 2144
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2145
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v8, :cond_4

    .line 2146
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2239
    .end local v0           #bNotifyFail:Z
    .end local v2           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_4
    :goto_1
    return-void

    .line 2121
    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2122
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2124
    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2125
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_7

    .line 2126
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2129
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2132
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2133
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_0

    .line 2150
    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2151
    .local v6, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v6, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2153
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    .line 2154
    .local v7, width:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    .line 2156
    .local v1, height:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .line 2158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2162
    :cond_9
    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Texture;->setSourceWidth(I)V

    .line 2163
    invoke-virtual {v6, v1}, Lcom/htc/sunny2/Texture;->setSourceHeight(I)V

    .line 2164
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 2165
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_10

    .line 2166
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2167
    .local v3, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v3, :cond_d

    .line 2168
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2220
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_a
    :goto_2
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2221
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 2222
    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    .line 2223
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2227
    :cond_b
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v8, :cond_c

    .line 2228
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2230
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 2231
    const/4 v8, -0x1

    if-eq v4, v8, :cond_c

    .line 2233
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2238
    :cond_c
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v9, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2170
    .restart local v3       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-ne v3, v8, :cond_e

    .line 2171
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_2

    .line 2173
    :cond_e
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_a

    .line 2174
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2175
    .local v5, removeTexture:Lcom/htc/sunny2/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 2176
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePool is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2178
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2180
    :cond_f
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2184
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    .end local v5           #removeTexture:Lcom/htc/sunny2/Texture;
    :cond_10
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 2185
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2186
    .restart local v3       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v3, :cond_11

    .line 2187
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2189
    :cond_11
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-ne v3, v8, :cond_12

    .line 2190
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2192
    :cond_12
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_a

    .line 2193
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2194
    .restart local v5       #removeTexture:Lcom/htc/sunny2/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 2195
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2197
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2199
    :cond_13
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2203
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    .end local v5           #removeTexture:Lcom/htc/sunny2/Texture;
    :cond_14
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_15

    .line 2204
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2205
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2206
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2207
    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][setTexture]EQ, extremeQualityDecodedItemIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][setTexture]width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2210
    :cond_15
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_16

    .line 2211
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add decodeItem to mTextureMap is Error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2213
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 2214
    :cond_16
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 2215
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add decodeItem to mTextureMapHQ is Error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2217
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_2
.end method

.method public setVisibleRange(III)V
    .locals 7
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v6, 0x0

    .line 2299
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v3, :cond_1

    .line 2300
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not initialize"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    :cond_0
    :goto_0
    return-void

    .line 2303
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 2305
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Visible range setting error. beginIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2308
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2309
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2311
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2312
    .local v2, intervalCount:I
    if-gez v2, :cond_4

    .line 2313
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visible range is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2317
    :cond_4
    const/4 v0, 0x0

    .line 2318
    .local v0, contentCount:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_12

    .line 2319
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2325
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_5

    .line 2326
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2329
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_6

    .line 2330
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex bigger than content list count, old index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2335
    :cond_6
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2337
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->raisePriorityOnce()V

    .line 2340
    :cond_7
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 2342
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v3, v0, :cond_8

    .line 2343
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2344
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2346
    :cond_8
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v3, v2

    .line 2347
    .local v1, difference:I
    if-ltz v1, :cond_14

    .line 2348
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2349
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v3, :cond_13

    .line 2350
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2354
    :cond_9
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2355
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_a

    .line 2356
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2357
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2364
    :cond_a
    :goto_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_d

    .line 2365
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v3, v0, :cond_b

    .line 2366
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2367
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2369
    :cond_b
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v2

    if-ltz v3, :cond_16

    .line 2370
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2371
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v3, :cond_15

    .line 2372
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2376
    :cond_c
    :goto_3
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2377
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_d

    .line 2378
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2379
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2388
    :cond_d
    :goto_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_e

    .line 2389
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setVisibleRange(II)V

    .line 2391
    :cond_e
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_11

    .line 2392
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v3, v3, -0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2393
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v3, v4, :cond_f

    .line 2394
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2396
    :cond_f
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2397
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v3, v4, :cond_10

    .line 2398
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2400
    :cond_10
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 2402
    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_0

    .line 2404
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 2321
    .end local v1           #difference:I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mMediaList is null, contentCount is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2351
    .restart local v1       #difference:I
    :cond_13
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_9

    .line 2352
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_1

    .line 2360
    :cond_14
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2362
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2373
    :cond_15
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_c

    .line 2374
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto/16 :goto_3

    .line 2382
    :cond_16
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2384
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 14
    .parameter "mediaItem"

    .prologue
    .line 1923
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 1925
    :cond_0
    const/4 v0, 0x0

    .line 1927
    .local v0, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v12, 0x1001

    .line 1928
    .local v12, type:I
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1929
    const/16 v12, 0x2001

    .line 1932
    :cond_1
    packed-switch v12, :pswitch_data_0

    .line 1938
    :goto_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v11

    .line 1939
    .local v11, mediaSourceType:I
    iput v11, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1940
    const/4 v10, 0x0

    .line 1941
    .local v10, hasError:Z
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 1942
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1943
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1963
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 1964
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 1965
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 1966
    if-nez v10, :cond_a

    .line 1967
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_9

    .line 1968
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 1974
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 1975
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1987
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :goto_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1988
    return-void

    .line 1934
    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .restart local v12       #type:I
    :pswitch_0
    new-instance v0, Lcom/htc/sunny2/common/VideoDecodeItem;

    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/VideoDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    goto :goto_0

    .line 1945
    .restart local v10       #hasError:Z
    .restart local v11       #mediaSourceType:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const/4 v10, 0x1

    goto :goto_1

    .line 1948
    :cond_5
    const/4 v1, 0x3

    if-ne v11, v1, :cond_7

    .line 1949
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v13

    .line 1950
    .local v13, uriString:Ljava/lang/String;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1951
    iput-object v13, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto :goto_1

    .line 1953
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: Uri is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const/4 v10, 0x1

    goto :goto_1

    .line 1958
    .end local v13           #uriString:Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v9

    .line 1959
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1960
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1969
    .end local v9           #filePath:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1971
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 1972
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    goto/16 :goto_2

    .line 1977
    :cond_a
    const/4 v8, 0x1

    .line 1978
    .local v8, bNotifyFail:Z
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1979
    const/4 v8, 0x0

    .line 1981
    :cond_b
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 1984
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v8           #bNotifyFail:Z
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :cond_c
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread - Not supported Quality"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 1932
    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
    .end packed-switch
.end method

.method public unbind(I)V
    .locals 8
    .parameter "mediaListIdx"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 814
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind+"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_6

    .line 816
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_1

    .line 848
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 849
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 852
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 854
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 857
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_3

    .line 859
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 862
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_4

    .line 863
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 866
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 867
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 869
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 871
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_c

    .line 872
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTextureMap+"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_b

    .line 874
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 875
    .local v2, texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_5

    .line 876
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 877
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 873
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 817
    .end local v0           #i:I
    .end local v1           #s:I
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 818
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_7

    .line 819
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 820
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v3, v4, :cond_9

    .line 821
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_a

    .line 822
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_8

    .line 823
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 824
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 826
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 829
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_9

    .line 830
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 831
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 833
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 844
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 837
    :cond_a
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 838
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 840
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 880
    .restart local v0       #i:I
    .restart local v1       #s:I
    :cond_b
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 881
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTextureMap-"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_f

    .line 885
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_3
    if-ge v0, v1, :cond_e

    .line 886
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 887
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_d

    .line 888
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 889
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 885
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 892
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_e
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 895
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_12

    .line 896
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTexturePool"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_4
    if-ge v0, v1, :cond_11

    .line 898
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 899
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_10

    .line 900
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 901
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 897
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 904
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_11
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 907
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_12
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_15

    .line 908
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTexturePool"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 910
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 911
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_13

    .line 912
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 913
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 909
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 916
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_14
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 920
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_16

    .line 921
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 922
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 924
    :cond_16
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_17

    .line 925
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 926
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 928
    :cond_17
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 929
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 931
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 932
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 933
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clear MediaDecode tasks."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_18
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 936
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 937
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clear SideBySide Video tasks."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_19
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1a

    .line 941
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mContentList"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 943
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 946
    :cond_1a
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 947
    return-void
.end method

.method protected updateDecodeStatus(II)V
    .locals 2
    .parameter "index"
    .parameter "status"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;->onDecodeStatusUpdated(II)V

    .line 188
    :cond_0
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
