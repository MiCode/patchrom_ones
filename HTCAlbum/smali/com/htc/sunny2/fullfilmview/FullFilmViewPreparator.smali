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

    .line 586
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

    .line 604
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 605
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 606
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 607
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    .line 608
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 609
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 610
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 612
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 613
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    .line 614
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1765
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    .line 1815
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2942
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2943
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    .line 2971
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    .line 588
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 589
    return-void
.end method

.method private useBackgroundImageTextureAsLastImageLQ()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 2978
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    invoke-interface {v6}, Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;->getInitBackgroundTexture_IRT()Lcom/htc/sunny2/Texture;

    move-result-object v4

    .line 2979
    .local v4, texture:Lcom/htc/sunny2/Texture;
    if-nez v4, :cond_1

    .line 2980
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Texture is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    :cond_0
    :goto_0
    return-void

    .line 2984
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 2985
    .local v1, lastItemIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 2986
    .local v2, mediaData:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 2987
    .local v5, textureIdentifier:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-nez v5, :cond_3

    .line 2988
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] MediaData or TextureMap or Texture Identifier is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 2993
    :cond_3
    invoke-interface {v2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 2994
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2995
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Identifier not the same"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 3000
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 3001
    .local v3, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v3, :cond_5

    .line 3002
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[useBackgroundImageTextureAsLastImageLQ] Original LQ has texture"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 3007
    :cond_5
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 3009
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, v1, v4, v0}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 3010
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 3011
    invoke-virtual {p0, v1, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 3012
    iget-object v6, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v6, :cond_0

    .line 3013
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

    .line 716
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind+"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialize"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-eqz v1, :cond_1

    .line 725
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->unbind(I)V

    .line 727
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    if-lez v1, :cond_3

    .line 728
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    if-le v1, v3, :cond_2

    .line 729
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 732
    :cond_2
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 733
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableFileCache(Landroid/content/Context;I)Z

    .line 735
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/base/interfaces/ICacheClientMgr;)V

    .line 738
    :cond_3
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 739
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v1, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 743
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 744
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList has no media"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 749
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 750
    .local v0, itemCounts:I
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v1, v0, :cond_6

    .line 751
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 753
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_8

    .line 754
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind() NG - not null texture pool or map"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_8
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 757
    new-instance v1, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 758
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

    .line 759
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 761
    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    .line 762
    const/16 v1, 0xe

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 766
    :goto_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 767
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 768
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gez v1, :cond_9

    .line 769
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 772
    :cond_9
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_a

    .line 773
    new-instance v1, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 774
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 775
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

    .line 776
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 777
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 778
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gez v1, :cond_a

    .line 779
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 782
    :cond_a
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_b

    .line 783
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->clear()V

    .line 784
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xb

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 785
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 787
    :cond_b
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 789
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 790
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 792
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_c

    .line 794
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 795
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

    .line 798
    :cond_c
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_d

    .line 799
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 800
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 801
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 804
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_e

    .line 805
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 806
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 807
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 810
    :cond_e
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 811
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scroll speed 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
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

    .line 764
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
    .line 2880
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_1

    .line 2881
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - TextureMap is null or MediaList is null or DecodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    :goto_0
    return-void

    .line 2885
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

    .line 2887
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - notified index not decode and current index not notified index"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2891
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 2892
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v0, :cond_3

    .line 2893
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - mediaItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2897
    :cond_3
    invoke-interface {v0}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 2898
    .local v1, newIdentifier:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v2

    .line 2900
    .local v2, oldIdentifier:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2902
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

    .line 2906
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 958
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    monitor-exit v1

    .line 1001
    :goto_0
    return-void

    .line 962
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 963
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_3

    .line 974
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_4

    .line 979
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 983
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 986
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-eqz v0, :cond_5

    .line 987
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 991
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 992
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 996
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 1000
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
    .line 1608
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1609
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1610
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

    .line 1611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1612
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1613
    const/4 v0, 0x1

    .line 1637
    :goto_0
    return v0

    .line 1616
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1617
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 1619
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xb

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    const/16 v3, 0x12c

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1621
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

    .line 1622
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1623
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1624
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1629
    :goto_1
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1630
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1631
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1632
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    .line 1634
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1635
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1637
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1626
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1627
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeFromCacheHQ(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1643
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1644
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

    .line 1645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1646
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1647
    const/4 v0, 0x1

    .line 1673
    :goto_0
    return v0

    .line 1650
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1651
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 1653
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/16 v3, 0x1e

    sget v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1655
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

    .line 1656
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1657
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1658
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1663
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 1665
    :cond_2
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1666
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1667
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1668
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_3

    if-eqz v11, :cond_3

    .line 1670
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1671
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1673
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1660
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1661
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeIterator(J)Z
    .locals 15
    .parameter "limitedTimeMillis"

    .prologue
    .line 1993
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1994
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v0, :cond_0

    .line 1995
    const/4 v0, 0x0

    .line 2108
    :goto_0
    return v0

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v0, :cond_1

    .line 1998
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[decodeIterator] IteratorTask is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const/4 v0, 0x1

    goto :goto_0

    .line 2001
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2002
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2003
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 2004
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 2005
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_10

    .line 2006
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 2008
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 2010
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-ne v0, v1, :cond_6

    .line 2012
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2013
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 2016
    :cond_2
    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 2017
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v0, :cond_3

    .line 2018
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 2020
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2021
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 2022
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2024
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 2025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2026
    .local v11, currentTimeMillis:J
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 2027
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v0, v0, v11

    if-gez v0, :cond_4

    .line 2028
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 2032
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 2039
    .end local v11           #currentTimeMillis:J
    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2035
    :cond_6
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2036
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_1

    .line 2042
    :cond_7
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2044
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 2046
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_e

    .line 2047
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2048
    .local v13, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v13, :cond_d

    .line 2049
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2050
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

    .line 2056
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

    .line 2057
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 2059
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 2060
    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v0, :cond_c

    const/16 v10, 0x11

    .line 2061
    .local v10, cacheSourceType:I
    :goto_3
    new-instance v14, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v14}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2062
    .local v14, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2063
    invoke-virtual {v14, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2064
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2065
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_a

    if-eqz v14, :cond_a

    .line 2067
    iput-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 2068
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2108
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #cacheSourceType:I
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v14           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_a
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2052
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    .restart local v13       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2053
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

    .line 2060
    :cond_c
    const/4 v10, 0x1

    goto :goto_3

    .line 2071
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2074
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_e
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2077
    :cond_f
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2078
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2083
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

    .line 2084
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2094
    :goto_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_4

    .line 2087
    :cond_11
    const/4 v9, 0x1

    .line 2088
    .local v9, bNotifyFail:Z
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2089
    .restart local v13       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v13, :cond_12

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2090
    const/4 v9, 0x0

    .line 2092
    :cond_12
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto :goto_5

    .line 2098
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #bNotifyFail:Z
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_13
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 2099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2106
    :cond_14
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2100
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2101
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v1, "Task waiting time over time limit, request resume thread"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto :goto_6
.end method

.method protected decodeOriginalFile(J)Z
    .locals 20
    .parameter "limitedTimeMillis"

    .prologue
    .line 1819
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

    .line 1820
    .local v16, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v16, :cond_0

    .line 1821
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1824
    const/4 v2, 0x1

    .line 1921
    :goto_0
    return v2

    .line 1826
    :cond_0
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v13

    .line 1827
    .local v13, filePath:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v15

    .line 1828
    .local v15, isVideo:Z
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v14

    .line 1829
    .local v14, isDrm:Z
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v17

    .line 1831
    .local v17, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1832
    const/16 v18, 0x10

    .line 1834
    .local v18, requiredColorDepth:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 1835
    const/16 v11, 0x422

    .line 1841
    .local v11, decodeFlag:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1842
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1844
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    if-eqz v2, :cond_1

    .line 1846
    or-int/lit16 v11, v11, 0x1010

    .line 1848
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v2, :cond_3

    .line 1849
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1850
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1871
    :cond_2
    :goto_1
    if-eqz v15, :cond_7

    .line 1872
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1873
    const/4 v2, 0x1

    goto :goto_0

    .line 1852
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1853
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    goto :goto_1

    .line 1855
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1857
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->FULLSCREEN_COLORDEPTH:I

    goto :goto_1

    .line 1858
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1859
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1860
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1861
    sget v18, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->EXTREME_COLORDEPTH:I

    .line 1865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->purgeTextureMapHQ(I)V

    goto :goto_1

    .line 1866
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

    .line 1867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1868
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1869
    or-int/lit16 v11, v11, 0x200

    goto :goto_1

    .line 1876
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1877
    const/4 v4, -0x1

    .line 1878
    .local v4, cacheSet:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_c

    .line 1879
    const/16 v4, 0xb

    .line 1883
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v2, :cond_d

    .line 1884
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

    .line 1888
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 1897
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

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 1900
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

    .line 1903
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

    .line 1909
    :cond_a
    :goto_4
    new-instance v19, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v19 .. v19}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 1910
    .local v19, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1912
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setColorDepth(I)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V

    .line 1914
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_b

    if-eqz v19, :cond_b

    .line 1918
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1921
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1880
    .end local v19           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1881
    const/16 v4, 0xc

    goto/16 :goto_2

    .line 1886
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

    .line 1904
    :catch_0
    move-exception v12

    .line 1905
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
    .line 2974
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableDecodeLQFromExif:Z

    .line 2975
    return-void
.end method

.method protected findAHQTextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "newContentIndex"

    .prologue
    .line 1586
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-ge v2, v3, :cond_1

    .line 1588
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1589
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1603
    :cond_0
    :goto_0
    return-object v0

    .line 1591
    :cond_1
    const/4 v0, 0x0

    .line 1592
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1593
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1595
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1596
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1597
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1600
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1601
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
    .line 1565
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-ge v2, v3, :cond_1

    .line 1567
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1568
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1582
    :cond_0
    :goto_0
    return-object v0

    .line 1570
    :cond_1
    const/4 v0, 0x0

    .line 1571
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1572
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1574
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1575
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1576
    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1579
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1580
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

    .line 1353
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    if-eq v8, v7, :cond_0

    .line 1354
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne v8, v9, :cond_2

    .line 1358
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

    .line 1359
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 1367
    :cond_0
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-eq v8, v7, :cond_4

    .line 1368
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_3

    .line 1372
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 1373
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_1

    .line 1374
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_1
    move v0, v7

    .line 1552
    :goto_0
    return v0

    .line 1361
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v8, 0x2

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1362
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

    .line 1363
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_0

    .line 1378
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1379
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

    .line 1380
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto :goto_0

    .line 1384
    :cond_4
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v7, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v9, :cond_7

    .line 1385
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1386
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_6

    .line 1390
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 1391
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1392
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_5

    .line 1393
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_5
    move v0, v7

    .line 1395
    goto :goto_0

    .line 1397
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1398
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

    .line 1399
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    goto/16 :goto_0

    .line 1403
    :cond_7
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .local v0, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v0, v8, :cond_b

    .line 1404
    invoke-virtual {p0, v0, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1406
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1407
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1411
    :cond_8
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_a

    .line 1412
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_9

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_a

    .line 1413
    :cond_9
    invoke-virtual {p0, v0, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_a

    .line 1415
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1403
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1422
    :cond_b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v5, v8, -0x1

    .line 1423
    .local v5, searchUpIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v8, 0x1

    .line 1424
    .local v3, searchDownIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v6, v8, -0x1

    .line 1425
    .local v6, searchUpIndexHQ:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v8, 0x1

    .line 1426
    .local v4, searchDownIndexHQ:I
    const/4 v2, 0x0

    .line 1427
    .local v2, loopCount:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v8}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 1428
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

    .line 1430
    :cond_e
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-ltz v8, :cond_1b

    .line 1432
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_10

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_10

    .line 1434
    invoke-virtual {p0, v3, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1437
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 1439
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v3

    .line 1440
    goto/16 :goto_0

    .line 1443
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 1446
    :cond_10
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_12

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_12

    .line 1448
    invoke-virtual {p0, v5, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_11

    .line 1451
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1453
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v5

    .line 1454
    goto/16 :goto_0

    .line 1457
    :cond_11
    add-int/lit8 v5, v5, -0x1

    .line 1460
    :cond_12
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_15

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_15

    .line 1462
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_14

    invoke-virtual {p0, v4, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_14

    .line 1464
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_13

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_14

    .line 1466
    :cond_13
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v4

    .line 1467
    goto/16 :goto_0

    .line 1470
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 1473
    :cond_15
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_18

    .line 1475
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_17

    invoke-virtual {p0, v6, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_17

    .line 1477
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_16

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_17

    .line 1479
    :cond_16
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v6

    .line 1480
    goto/16 :goto_0

    .line 1483
    :cond_17
    add-int/lit8 v6, v6, -0x1

    .line 1542
    :cond_18
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 1543
    if-le v2, v1, :cond_c

    .line 1545
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

    .line 1549
    :cond_19
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v8, v9, :cond_1a

    .line 1550
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bottom is smaller than top"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move v0, v7

    .line 1552
    goto/16 :goto_0

    .line 1488
    :cond_1b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_1d

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_1d

    .line 1490
    invoke-virtual {p0, v5, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_1c

    .line 1493
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1495
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v5

    .line 1496
    goto/16 :goto_0

    .line 1499
    :cond_1c
    add-int/lit8 v5, v5, -0x1

    .line 1502
    :cond_1d
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_1f

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_1f

    .line 1504
    invoke-virtual {p0, v3, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 1507
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 1509
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v3

    .line 1510
    goto/16 :goto_0

    .line 1513
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 1516
    :cond_1f
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_22

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_22

    .line 1518
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_21

    invoke-virtual {p0, v6, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_21

    .line 1520
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_20

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_21

    .line 1522
    :cond_20
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v6

    .line 1523
    goto/16 :goto_0

    .line 1526
    :cond_21
    add-int/lit8 v6, v6, -0x1

    .line 1529
    :cond_22
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_18

    .line 1531
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_24

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_24

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_24

    invoke-virtual {p0, v4, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_24

    .line 1533
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_23

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_24

    .line 1535
    :cond_23
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v4

    .line 1536
    goto/16 :goto_0

    .line 1539
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
    .line 2931
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    const/4 v1, 0x0

    .line 2423
    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 2424
    .local v0, texture:Lcom/htc/sunny2/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_1

    .line 2427
    .end local v0           #texture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v0

    .line 2423
    :cond_0
    const-string v2, "QUALITY"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 2427
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
    .line 2922
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

    .line 634
    if-nez p1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Context is null"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 708
    :goto_0
    return-void

    .line 640
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 641
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 642
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 643
    .local v3, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 644
    .local v2, screenHeight:I
    if-le v3, v2, :cond_2

    .line 645
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 646
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 651
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

    .line 653
    const-string v5, "TEXTURE_MAX_COUNT"

    invoke-virtual {p2, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 654
    .local v4, texturePreparationMaxCount:I
    if-le v4, v10, :cond_1

    .line 655
    const/16 v4, 0x24

    .line 659
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "ThumbnailPreparator_init +"

    invoke-static {v5, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 662
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    if-nez v5, :cond_3

    .line 663
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Environment handle is 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 665
    monitor-exit v8

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 648
    .end local v4           #texturePreparationMaxCount:I
    :cond_2
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 649
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    goto :goto_1

    .line 668
    .restart local v4       #texturePreparationMaxCount:I
    :cond_3
    :try_start_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 669
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-nez v5, :cond_4

    .line 670
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TexturePreparationMaxCount is 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 672
    monitor-exit v8

    goto/16 :goto_0

    .line 674
    :cond_4
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 676
    const-string v5, "CACHE_SET"

    const/16 v9, 0xb

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 678
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 681
    const-string v5, "FULL_FILE_CAHCE_SIZE"

    const/4 v9, 0x0

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 683
    new-instance v5, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v5}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 684
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 686
    new-instance v5, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v5}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 687
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 689
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 690
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 692
    const-string v5, "FULL_FILM_FLAG"

    const/4 v9, 0x0

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 693
    .local v1, fullFilmFlag:I
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_6

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 695
    const-string v5, "SPECIFIC_HQ_CACHE_FLAG"

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    .line 696
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSpecificHQCacheFlag:I

    if-ne v5, v6, :cond_5

    .line 698
    const-string v5, "SPECIFIC_HQ_SIZE_LONG_SIDE"

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 699
    const-string v5, "SPECIFIC_HQ_SIZE_SHORT_SIDE"

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 703
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

    .line 705
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 706
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ThumbnailPreparator_init -"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 693
    goto :goto_2
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;)V
    .locals 0
    .parameter "context"
    .parameter "inValue"
    .parameter "sSurfaceViewInitBackgroundCallback"

    .prologue
    .line 624
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 625
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 626
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V
    .locals 0
    .parameter "context"
    .parameter "params"

    .prologue
    .line 621
    return-void
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 1559
    :cond_0
    const/4 v0, 0x1

    .line 1561
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
    .line 1349
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
    .line 2935
    return-void
.end method

.method public notifyDataItemChanged(II)V
    .locals 15
    .parameter "mediaListIdx"
    .parameter "contentIndex"

    .prologue
    .line 1005
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

    .line 1006
    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 1008
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum] notifyDataItemChanged - bStop"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    monitor-exit v13

    .line 1113
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v1, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum] notifyDataItemChanged - decodeItem is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    monitor-exit v13

    goto :goto_0

    .line 1111
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1018
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_6

    .line 1019
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    .line 1020
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

    .line 1021
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    .line 1023
    .local v10, currentTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_2

    .line 1024
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1026
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v1, :cond_3

    .line 1027
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v9, v3}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1029
    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_4

    .line 1031
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1033
    :cond_4
    if-eqz v10, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_b

    .line 1034
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1035
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1037
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1049
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1052
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_f

    .line 1053
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1054
    .local v12, textureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v1, :cond_7

    .line 1055
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_d

    .line 1056
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1058
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1067
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_8

    .line 1068
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_8

    .line 1069
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1070
    .local v11, item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_e

    .line 1071
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

    .line 1081
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_a

    .line 1082
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_12

    .line 1083
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1084
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v1, :cond_9

    .line 1085
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_10

    .line 1086
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1088
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1097
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_a

    .line 1098
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_a

    .line 1099
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1100
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_11

    .line 1101
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

    .line 1111
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_a
    :goto_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1039
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

    .line 1040
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1041
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1043
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_1

    .line 1045
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

    .line 1047
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto/16 :goto_1

    .line 1060
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1061
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1063
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 1073
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_e
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1078
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_f
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1090
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1091
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1093
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_4

    .line 1103
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1108
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
    .line 1118
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_onCancelIRT +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_onCancelIRT -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    return-void
.end method

.method protected onProcessPreparation(J)Z
    .locals 10
    .parameter "limitedTimeMillis"

    .prologue
    .line 1159
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_Force stop"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1162
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1163
    const/4 v6, 0x0

    .line 1345
    :goto_0
    return v6

    .line 1166
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v7

    .line 1167
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    if-eqz v6, :cond_1

    .line 1170
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1171
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1172
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 1174
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

    .line 1176
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1178
    .local v0, currentTimeMillis:J
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x7d0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 1179
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 1181
    :cond_3
    long-to-int v6, v0

    rem-int/lit16 v5, v6, 0xc8

    .line 1182
    .local v5, t:I
    const/16 v6, 0x14

    if-ge v5, v6, :cond_4

    .line 1183
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Decode Idle"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1188
    .end local v0           #currentTimeMillis:J
    .end local v5           #t:I
    :cond_5
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v6, :cond_6

    .line 1189
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_Not initialize"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/4 v6, 0x1

    goto :goto_0

    .line 1192
    :cond_6
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v6, :cond_7

    .line 1195
    const/4 v6, 0x1

    goto :goto_0

    .line 1198
    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    if-eqz v6, :cond_8

    .line 1199
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->useBackgroundImageTextureAsLastImageLQ()V

    .line 1200
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSSurfaceViewInitBackgroundCallback:Lcom/htc/sunny2/view/SSurfaceViewInitBackgroundCallback;

    .line 1203
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-nez v6, :cond_9

    .line 1204
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_mUpdateListener is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 1208
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_a

    .line 1209
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stop preparator"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1211
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1214
    :cond_a
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 1215
    :try_start_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v6, :cond_b

    .line 1216
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DecodeItem is null"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1218
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1341
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1222
    :cond_b
    const/4 v4, 0x0

    .line 1223
    .local v4, shouldCancelDecodeSideBySide:Z
    :try_start_3
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_d

    .line 1224
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

    .line 1227
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

    .line 1229
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

    .line 1230
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v6, :cond_11

    .line 1231
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1232
    :cond_11
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v6, :cond_12

    .line 1235
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1237
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

    .line 1238
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1239
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1241
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1256
    :cond_13
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1260
    :cond_14
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_28

    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processMediaThumbnail(J)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1264
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1224
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1243
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

    .line 1244
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1245
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onProcessPreparationIRT NG - mTexturePoolHQ is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1247
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 1249
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

    .line 1251
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_2

    .line 1252
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

    .line 1254
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto/16 :goto_2

    .line 1267
    :cond_19
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAnItemToDecode()I

    move-result v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1269
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_26

    .line 1270
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1272
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_1d

    .line 1273
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 1283
    :cond_1a
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 1284
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-ne v6, v8, :cond_1c

    .line 1285
    const/4 v3, 0x0

    .line 1287
    .local v3, reusableTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_20

    .line 1288
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 1293
    :cond_1b
    :goto_4
    if-eqz v3, :cond_21

    .line 1294
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 1302
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

    .line 1303
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_22

    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCache(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1274
    :cond_1d
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    .line 1275
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

    .line 1276
    :cond_1e
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1f

    .line 1277
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto :goto_3

    .line 1279
    :cond_1f
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1a

    .line 1280
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v8, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto/16 :goto_3

    .line 1289
    .restart local v3       #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_20
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1b

    .line 1290
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v3

    goto :goto_4

    .line 1296
    :cond_21
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "No reusable texture"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1298
    const/4 v6, 0x0

    monitor-exit v7

    goto/16 :goto_0

    .line 1305
    .end local v3           #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_22
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_29

    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCacheHQ(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1309
    :cond_23
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1311
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

    .line 1312
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]decodeOriginalFile..."

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1315
    :cond_25
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Texture cache is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1317
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1322
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

    .line 1324
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1326
    :cond_27
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1329
    :cond_28
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1333
    :cond_29
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v6, :cond_2a

    .line 1335
    const/4 v2, 0x0

    .line 1336
    .local v2, ret:I
    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processCache(IJ)V

    .line 1337
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1339
    .end local v2           #ret:I
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeIterator(J)Z

    move-result v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1345
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

    .line 1125
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->onProcessPreparation(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1154
    :cond_0
    :goto_0
    return v2

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
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

    .line 1128
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1129
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1130
    .local v0, currentTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v3, :cond_1

    .line 1131
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1132
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 1134
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1136
    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1137
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1138
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1140
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1152
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_0

    .line 1142
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1143
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1144
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1146
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_1

    .line 1148
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

    .line 1150
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_1
.end method

.method public onViewStateChange(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 2910
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 2911
    return-void
.end method

.method public pausePreparator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2947
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2948
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2949
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2953
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_1

    .line 2954
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2956
    :cond_1
    return-void

    .line 2949
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

    .line 1677
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v2, :cond_1

    .line 1678
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[processCache] IteratorTask is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1682
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1683
    iput-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 1684
    const/4 v1, 0x0

    .line 1685
    .local v1, isFailed:Z
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v2, :cond_2

    .line 1686
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v1

    .line 1692
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 1693
    if-eqz v1, :cond_5

    .line 1695
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v2, v3, :cond_4

    .line 1697
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1698
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto :goto_0

    .line 1687
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v2, :cond_3

    .line 1688
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v1

    goto :goto_1

    .line 1690
    :cond_3
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[ProcessCache] unknown task"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1700
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error on encode cache"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1702
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_0

    .line 1706
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v2, v3, :cond_6

    .line 1707
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1708
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 1709
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1712
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1713
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1714
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1730
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1731
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto/16 :goto_0

    .line 1717
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_7
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1718
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto/16 :goto_0

    .line 1735
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #isFailed:Z
    :cond_8
    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    .line 1736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0

    .line 1737
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1738
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "Task waiting time over time limit, request resume thread"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 1740
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

    .line 580
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

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 469
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v6, 0x11

    .line 470
    .local v6, cacheSourceType:I
    :goto_3
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 471
    .local v15, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 472
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    if-eqz v15, :cond_a

    .line 476
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 479
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 469
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    .line 481
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 482
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 486
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v14

    .line 488
    .local v14, reusableTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v14, :cond_1a

    .line 489
    iget-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 490
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_16

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 499
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

    .line 500
    .local v10, oldTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_f

    .line 501
    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v18, "oldTexture not fail texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 507
    :cond_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 508
    const/4 v5, 0x0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 510
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 512
    :cond_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 513
    .restart local v16       #width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 516
    .restart local v7       #height:I
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 517
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "video/mp4-3d"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 518
    new-instance v13, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    div-int/lit8 v19, v16, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v13, v0, v1, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 519
    .local v13, r:Landroid/graphics/Rect;
    move-object v11, v4

    .line 520
    .local v11, oldbmp:Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v13, v0, v7, v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 521
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    .end local v11           #oldbmp:Landroid/graphics/Bitmap;
    .end local v13           #r:Landroid/graphics/Rect;
    :cond_10
    iput-object v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 528
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 530
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

    .line 531
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_11

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 533
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 535
    :cond_11
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v6, 0x11

    .line 539
    .restart local v6       #cacheSourceType:I
    :goto_4
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 540
    .restart local v15       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 541
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    if-eqz v15, :cond_12

    .line 545
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 548
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 538
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_13
    const/4 v6, 0x1

    goto :goto_4

    .line 550
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 580
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v10           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v16           #width:I
    :cond_15
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 553
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 558
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "get null bitmap"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v3, 0x1

    .line 560
    .local v3, bNotifyFail:Z
    iget v12, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 561
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 562
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v9, :cond_18

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 563
    const/4 v3, 0x0

    .line 565
    :cond_18
    if-eqz v3, :cond_19

    .line 566
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 567
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 568
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

    .line 572
    .end local v3           #bNotifyFail:Z
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #pos:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No reusable texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 574
    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 575
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 577
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_5
.end method

.method public purgeTextureEQ()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2578
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_0

    .line 2580
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 2582
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 2584
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2585
    .local v0, indexToNotify:I
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setExtremeQualityItemIndex(I)Z

    .line 2586
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v1, :cond_1

    if-eq v2, v0, :cond_1

    .line 2589
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v1, v3, v0, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2590
    iget-object v1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v1, v3, v0, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2597
    :goto_0
    return-void

    .line 2594
    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][purgeTextureEQ]mUpdateListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extremeQualityDecodedItemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public purgeTextureMap(I)V
    .locals 10
    .parameter "currentIndex"

    .prologue
    .line 2483
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    .line 2485
    move v1, p1

    .line 2487
    .local v1, currentIdx:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2488
    .local v0, bStr:Ljava/lang/StringBuffer;
    const-string v7, "[HtcAlbum][FullFilmViewPreparator][purgeTextureMap]current idx="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", mTextureMap remove idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2490
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 2491
    .local v3, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 2492
    .local v5, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 2494
    .local v4, maxIndex:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 2495
    :cond_0
    if-lt v4, v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 2497
    :cond_1
    move v2, v5

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_5

    .line 2499
    if-ne v1, v2, :cond_3

    .line 2497
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2504
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2505
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    .line 2507
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 2508
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2509
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2511
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 2513
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v2, v9}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2517
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2524
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

    .line 2530
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    .line 2532
    move v1, p1

    .line 2534
    .local v1, currentIdx:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2535
    .local v0, bStr:Ljava/lang/StringBuffer;
    const-string v7, "[HtcAlbum][FullFilmViewPreparator][purgeTextureMapHQ]current idx="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", mTextureMapHQ remove idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2537
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    .line 2538
    .local v3, itemsCount:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v5

    .line 2539
    .local v5, minIndex:I
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v4

    .line 2541
    .local v4, maxIndex:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 2542
    :cond_0
    if-lt v4, v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 2544
    :cond_1
    move v2, v5

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_5

    .line 2546
    if-ne v1, v2, :cond_3

    .line 2544
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2551
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2552
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    .line 2554
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 2555
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 2556
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 2558
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    .line 2561
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v7, v9, v2, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 2562
    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v7, v9, v2, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2565
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2572
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

    .line 2432
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v1, :cond_2

    .line 2433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preparator not initialize or no MediaList"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    :cond_1
    :goto_0
    return-object v0

    .line 2437
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_5

    .line 2438
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne p1, v1, :cond_3

    .line 2439
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

    .line 2440
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 2441
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_4

    .line 2442
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 2443
    :cond_4
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2444
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 2446
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2447
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
    .line 2642
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_1

    .line 2644
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

    .line 2647
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_2

    .line 2648
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 2651
    :cond_2
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 2652
    sget-object v12, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v13, "refresh() - new media list count is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const/4 v12, 0x0

    .line 2846
    :goto_2
    return-object v12

    .line 2644
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2657
    :cond_5
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v12, :cond_c

    .line 2658
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "decodeItem is null"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_7

    .line 2686
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2688
    :cond_7
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_8

    .line 2689
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2692
    :cond_8
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v12, :cond_9

    .line 2694
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 2697
    :cond_9
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 2698
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2699
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clear MediaDecode tasks."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    :cond_a
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 2702
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2703
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clear SideBySide Video tasks."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    :cond_b
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2709
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 2710
    .local v3, intervalCount:I
    if-gez v3, :cond_11

    .line 2711
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "visible range is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    const/4 v12, 0x0

    goto :goto_2

    .line 2659
    .end local v3           #intervalCount:I
    :cond_c
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 2660
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v12, :cond_d

    .line 2661
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 2662
    :cond_d
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v13, :cond_f

    .line 2663
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_10

    .line 2664
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 2665
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - EnableQualityOptions, mTexturePool is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 2667
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2669
    :cond_e
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 2670
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - EnableQualityOptions, mTexturePoolHQ is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 2672
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 2682
    :cond_f
    :goto_4
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 2675
    :cond_10
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 2676
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - mTexturePool is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 2678
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_4

    .line 2714
    .restart local v3       #intervalCount:I
    :cond_11
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    .line 2715
    .local v4, itemCounts:I
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_12

    .line 2716
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2718
    :cond_12
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_13

    .line 2719
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2722
    :cond_13
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_14

    .line 2723
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2724
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2726
    :cond_14
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v12, v3

    .line 2727
    .local v1, difference:I
    if-ltz v1, :cond_1c

    .line 2728
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v13, v1, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2729
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v12, :cond_1b

    .line 2730
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2734
    :cond_15
    :goto_5
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2735
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_16

    .line 2736
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2737
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2745
    :cond_16
    :goto_6
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_19

    .line 2746
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v12, v4, :cond_17

    .line 2747
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2748
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2750
    :cond_17
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v3

    if-ltz v12, :cond_1e

    .line 2751
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v13, v3

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2752
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v12, :cond_1d

    .line 2753
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2757
    :cond_18
    :goto_7
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2758
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_19

    .line 2759
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2760
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2770
    :cond_19
    :goto_8
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2771
    .local v6, oldMap:Lcom/htc/sunny2/common/TextureMap;
    new-instance v12, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2772
    const/4 v8, 0x0

    .line 2773
    .local v8, originalOldMapSize:I
    const/4 v9, 0x0

    .line 2775
    .local v9, recycledCount:I
    if-eqz v6, :cond_23

    .line 2776
    invoke-virtual {v6}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v8

    .line 2778
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .local v2, i:I
    :goto_9
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_20

    .line 2779
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 2780
    .local v5, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v5, :cond_1f

    .line 2781
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    :cond_1a
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2731
    .end local v2           #i:I
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v6           #oldMap:Lcom/htc/sunny2/common/TextureMap;
    .end local v8           #originalOldMapSize:I
    .end local v9           #recycledCount:I
    :cond_1b
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_15

    .line 2732
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_5

    .line 2740
    :cond_1c
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2742
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2754
    :cond_1d
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_18

    .line 2755
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto :goto_7

    .line 2763
    :cond_1e
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2765
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2784
    .restart local v2       #i:I
    .restart local v5       #mediaData:Lcom/htc/sunny2/IMediaData;
    .restart local v6       #oldMap:Lcom/htc/sunny2/common/TextureMap;
    .restart local v8       #originalOldMapSize:I
    .restart local v9       #recycledCount:I
    :cond_1f
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2785
    .local v11, texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_1a

    .line 2786
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2787
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2790
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .local v10, s:I
    :goto_b
    if-ge v2, v10, :cond_22

    .line 2791
    invoke-virtual {v6, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2792
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_21

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v11, v12, :cond_21

    .line 2793
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->release()V

    .line 2794
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2790
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2797
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_22
    const/4 v6, 0x0

    .line 2801
    .end local v2           #i:I
    .end local v10           #s:I
    :cond_23
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_28

    .line 2802
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 2803
    .local v7, oldMapHQ:Lcom/htc/sunny2/common/TextureMap;
    new-instance v12, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 2804
    const/4 v8, 0x0

    .line 2805
    const/4 v9, 0x0

    .line 2806
    if-eqz v7, :cond_28

    .line 2807
    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v8

    .line 2808
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .restart local v2       #i:I
    :goto_c
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_26

    .line 2809
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 2810
    .restart local v5       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v5, :cond_25

    .line 2811
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    :cond_24
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2814
    :cond_25
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2815
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_24

    .line 2816
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2817
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 2820
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .restart local v10       #s:I
    :goto_e
    if-ge v2, v10, :cond_28

    .line 2821
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2822
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_27

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v11, v12, :cond_27

    .line 2823
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->release()V

    .line 2824
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 2820
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2833
    .end local v2           #i:I
    .end local v7           #oldMapHQ:Lcom/htc/sunny2/common/TextureMap;
    .end local v10           #s:I
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_28
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2836
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2838
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 2839
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_29

    .line 2840
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 2842
    :cond_29
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

    .line 2843
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

    .line 2844
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh-"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public requestDecodeIdleAfterSideBySideImageDecoded(J)V
    .locals 0
    .parameter "idleDuration"

    .prologue
    .line 2926
    iput-wide p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 2927
    return-void
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 2939
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2940
    return-void
.end method

.method public resumePreparator()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2960
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2961
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2962
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2966
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_1

    .line 2967
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    .line 2969
    :cond_1
    return-void

    .line 2962
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
    .line 2415
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 2417
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2419
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

    .line 2454
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex] + "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    monitor-enter p0

    .line 2456
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2457
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2458
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2459
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]Force reset - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    monitor-exit p0

    .line 2477
    :goto_0
    return v1

    .line 2462
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v3, :cond_1

    .line 2463
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]mMediaList is null"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2467
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2468
    .local v0, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2469
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2470
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

    .line 2471
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]set! - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    monitor-exit p0

    goto :goto_0

    .line 2475
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

    .line 2476
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]??? - "

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2477
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

    .line 2245
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

    .line 2247
    if-eqz p1, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2249
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2254
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2257
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

    .line 2259
    if-eqz p1, :cond_2

    .line 2260
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2261
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_2

    .line 2262
    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2265
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2266
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2270
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

    .line 2271
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2272
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2274
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2275
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2294
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 2296
    :cond_5
    return-void

    .line 2277
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2278
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2280
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2281
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2284
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_8

    .line 2285
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2286
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2287
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2288
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2289
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto :goto_0
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 2914
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 2915
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
    .line 2918
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 2919
    return-void
.end method

.method protected setSideBySideItemIndex(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2600
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

    .line 2602
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 2638
    :goto_0
    return v2

    .line 2606
    :cond_0
    monitor-enter p0

    .line 2608
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2609
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2610
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 2611
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]Force reset - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 2615
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_2

    .line 2616
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]mMediaList is null"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 2620
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2621
    .local v1, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v1, :cond_3

    .line 2622
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]mediaItem is null - "

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 2625
    :cond_3
    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object v2, v0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2626
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2627
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2628
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

    .line 2633
    :goto_1
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]set! - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 2630
    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 2631
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

    .line 2636
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

    .line 2637
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]??? - "

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2638
    goto/16 :goto_0
.end method

.method protected setTexture(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bmp"

    .prologue
    .line 2112
    const/4 v4, -0x1

    .line 2113
    .local v4, previousDecodedItemIndex:I
    if-nez p1, :cond_8

    .line 2114
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bmp is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
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

    .line 2116
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_6

    .line 2117
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_5

    .line 2118
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePool is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2121
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2139
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v9, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 2141
    :cond_1
    const/4 v0, 0x1

    .line 2142
    .local v0, bNotifyFail:Z
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2143
    .local v2, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2144
    const/4 v0, 0x0

    .line 2146
    :cond_2
    if-eqz v0, :cond_3

    .line 2147
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2148
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v8, :cond_4

    .line 2149
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2242
    .end local v0           #bNotifyFail:Z
    .end local v2           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_4
    :goto_1
    return-void

    .line 2124
    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2125
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2127
    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2128
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_7

    .line 2129
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2130
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2132
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2135
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2136
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_0

    .line 2153
    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2154
    .local v6, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v6, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2156
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    .line 2157
    .local v7, width:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    .line 2159
    .local v1, height:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .line 2161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2165
    :cond_9
    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Texture;->setSourceWidth(I)V

    .line 2166
    invoke-virtual {v6, v1}, Lcom/htc/sunny2/Texture;->setSourceHeight(I)V

    .line 2167
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 2168
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_10

    .line 2169
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2170
    .local v3, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v3, :cond_d

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

    .line 2223
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_a
    :goto_2
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2224
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 2225
    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    .line 2226
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2230
    :cond_b
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v8, :cond_c

    .line 2231
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2233
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 2234
    const/4 v8, -0x1

    if-eq v4, v8, :cond_c

    .line 2236
    iget-object v8, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2241
    :cond_c
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v9, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2173
    .restart local v3       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-ne v3, v8, :cond_e

    .line 2174
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

    .line 2176
    :cond_e
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_a

    .line 2177
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2178
    .local v5, removeTexture:Lcom/htc/sunny2/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 2179
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePool is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2181
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2183
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

    .line 2187
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

    .line 2188
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2189
    .restart local v3       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v3, :cond_11

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
    :cond_11
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-ne v3, v8, :cond_12

    .line 2193
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

    .line 2195
    :cond_12
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_a

    .line 2196
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2197
    .restart local v5       #removeTexture:Lcom/htc/sunny2/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 2198
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2200
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2202
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

    .line 2206
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    .end local v5           #removeTexture:Lcom/htc/sunny2/Texture;
    :cond_14
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_15

    .line 2207
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2208
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2209
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2210
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

    .line 2211
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

    .line 2213
    :cond_15
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_16

    .line 2214
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add decodeItem to mTextureMap is Error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2216
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 2217
    :cond_16
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 2218
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add decodeItem to mTextureMapHQ is Error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2220
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

    .line 2302
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v3, :cond_1

    .line 2303
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not initialize"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :cond_0
    :goto_0
    return-void

    .line 2306
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 2308
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

    .line 2311
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2312
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2314
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2315
    .local v2, intervalCount:I
    if-gez v2, :cond_4

    .line 2316
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visible range is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2320
    :cond_4
    const/4 v0, 0x0

    .line 2321
    .local v0, contentCount:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_12

    .line 2322
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2328
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_5

    .line 2329
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

    .line 2330
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2332
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_6

    .line 2333
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

    .line 2334
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2338
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

    .line 2340
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->raisePriorityOnce()V

    .line 2343
    :cond_7
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 2345
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v3, v0, :cond_8

    .line 2346
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2347
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2349
    :cond_8
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v3, v2

    .line 2350
    .local v1, difference:I
    if-ltz v1, :cond_14

    .line 2351
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2352
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v3, :cond_13

    .line 2353
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2357
    :cond_9
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2358
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_a

    .line 2359
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2360
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2367
    :cond_a
    :goto_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_d

    .line 2368
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v3, v0, :cond_b

    .line 2369
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2370
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2372
    :cond_b
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v2

    if-ltz v3, :cond_16

    .line 2373
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2374
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v3, :cond_15

    .line 2375
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2379
    :cond_c
    :goto_3
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2380
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_d

    .line 2381
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2382
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2391
    :cond_d
    :goto_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_e

    .line 2392
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setVisibleRange(II)V

    .line 2394
    :cond_e
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_11

    .line 2395
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v3, v3, -0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2396
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v3, v4, :cond_f

    .line 2397
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2399
    :cond_f
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2400
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v3, v4, :cond_10

    .line 2401
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2403
    :cond_10
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 2405
    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_0

    .line 2407
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 2324
    .end local v1           #difference:I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mMediaList is null, contentCount is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2354
    .restart local v1       #difference:I
    :cond_13
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_9

    .line 2355
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_1

    .line 2363
    :cond_14
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2365
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2376
    :cond_15
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_c

    .line 2377
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto/16 :goto_3

    .line 2385
    :cond_16
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2387
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
    .line 1925
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

    .line 1927
    :cond_0
    const/4 v0, 0x0

    .line 1929
    .local v0, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v12, 0x1001

    .line 1930
    .local v12, type:I
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1931
    const/16 v12, 0x2001

    .line 1934
    :cond_1
    packed-switch v12, :pswitch_data_0

    .line 1940
    :goto_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v11

    .line 1941
    .local v11, mediaSourceType:I
    iput v11, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1942
    const/4 v10, 0x0

    .line 1943
    .local v10, hasError:Z
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 1944
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1945
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1965
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 1966
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 1967
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 1968
    if-nez v10, :cond_a

    .line 1969
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_9

    .line 1970
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 1976
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 1977
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1989
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :goto_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1990
    return-void

    .line 1936
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

    .line 1947
    .restart local v10       #hasError:Z
    .restart local v11       #mediaSourceType:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const/4 v10, 0x1

    goto :goto_1

    .line 1950
    :cond_5
    const/4 v1, 0x3

    if-ne v11, v1, :cond_7

    .line 1951
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v13

    .line 1952
    .local v13, uriString:Ljava/lang/String;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1953
    iput-object v13, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto :goto_1

    .line 1955
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: Uri is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const/4 v10, 0x1

    goto :goto_1

    .line 1960
    .end local v13           #uriString:Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v9

    .line 1961
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1962
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1971
    .end local v9           #filePath:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1973
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 1974
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    goto/16 :goto_2

    .line 1979
    :cond_a
    const/4 v8, 0x1

    .line 1980
    .local v8, bNotifyFail:Z
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1981
    const/4 v8, 0x0

    .line 1983
    :cond_b
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 1986
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

    .line 1987
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 1934
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

    .line 816
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind+"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_6

    .line 818
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_1

    .line 850
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 851
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 854
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_2

    .line 855
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 856
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 859
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_3

    .line 861
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 864
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_4

    .line 865
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 868
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 869
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 871
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 873
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_c

    .line 874
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTextureMap+"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_b

    .line 876
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 877
    .local v2, texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_5

    .line 878
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 879
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 875
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 819
    .end local v0           #i:I
    .end local v1           #s:I
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 820
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_7

    .line 821
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 822
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

    .line 823
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_a

    .line 824
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_8

    .line 825
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 826
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 828
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 831
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_9

    .line 832
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 833
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 835
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 846
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 839
    :cond_a
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 840
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 842
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 882
    .restart local v0       #i:I
    .restart local v1       #s:I
    :cond_b
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 883
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTextureMap-"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_f

    .line 887
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_3
    if-ge v0, v1, :cond_e

    .line 888
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 889
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_d

    .line 890
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 891
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 887
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 894
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_e
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 897
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_12

    .line 898
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTexturePool"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_4
    if-ge v0, v1, :cond_11

    .line 900
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 901
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_10

    .line 902
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 903
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 899
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 906
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_11
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 909
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_12
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_15

    .line 910
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTexturePool"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 912
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 913
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_13

    .line 914
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 915
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 911
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 918
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_14
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 922
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_16

    .line 923
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 924
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 926
    :cond_16
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_17

    .line 927
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 928
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 930
    :cond_17
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 931
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 933
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 934
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 935
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clear MediaDecode tasks."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_18
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 938
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 939
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clear SideBySide Video tasks."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_19
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1a

    .line 943
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mContentList"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 945
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 948
    :cond_1a
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 949
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
